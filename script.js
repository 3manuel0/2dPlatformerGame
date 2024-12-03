function make_environment(env) {
  return new Proxy(env, {
    get(target, prop, receiver) {
      if (env[prop] !== undefined) {
        return env[prop].bind(env);
      }
      return (...args) => {
        throw new Error(`NOT IMPLEMENTED: ${prop} ${args}`);
      };
    },
  });
}
let wasm;
let canvas;
let ctx;
let previous;
let dt;
let images = [];
let prevPressedKeyState = new Set();
let currentPressedKeyState = new Set();
let camera_obj = { offset_x: 0, offset_y: 0 };
let player = { x: 0, y: 0 };
let blured = false;
let audio = undefined;
const str_len = (mem, str_ptr) => {
  let len = 0;
  while (mem[str_ptr] != 0) {
    len++;
    str_ptr++;
  }
  return len;
};
const get_str = (str_ptr) => {
  const buffer = wasm.instance.exports.memory.buffer;
  const mem = new Uint8Array(buffer);
  const len = str_len(mem, str_ptr);
  const str_bytes = new Uint8Array(buffer, str_ptr, len);
  return new TextDecoder().decode(str_bytes);
};
// const importObject = {
//   my_namespace: { imported_func: (arg) => console.log(arg) },
// };
WebAssembly.instantiateStreaming(fetch("game.wasm"), {
  env: make_environment({
    InitWindow: (width, height, str_ptr) => {
      canvas.width = width;
      canvas.height = height;
      document.title = get_str(str_ptr);
    },
    BeginDrawing: () => {},
    EndDrawing: () => {
      prevPressedKeyState.clear();
      prevPressedKeyState = new Set(currentPressedKeyState);
    },
    GetScreenWidth: () => {
      return canvas.width;
    },
    GetScreenHeight: () => {
      return canvas.height;
    },
    ClearBackground: (color_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const [r, g, b, a] = new Uint8Array(buffer, color_ptr, 4);
      ctx.fillStyle = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
      ctx.fillRect(0, 0, canvas.width, canvas.height);
    },
    SetTargetFPS: (fps) => {
      console.log(fps);
    },
    GetFrameTime: () => {
      // console.log(dt);
      return dt;
    },
    DrawRectangle: (x, y, w, h, color_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      // const [x, y, w, h] = new Float32Array(buffer, rect_ptr, 4);
      const [r, g, b, a] = new Uint8Array(buffer, color_ptr, 4);
      const color = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
      ctx.beginPath(); // Start a new path
      ctx.rect(x, y, w, h); // Add a rectangle to the current path
      player.x = x;
      player.y = y;
      ctx.fillStyle = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
      ctx.fill();
    },
    DrawRectangleRec: (rect_ptr, color_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const [x, y, w, h] = new Float32Array(buffer, rect_ptr, 4);
      const [r, g, b, a] = new Uint8Array(buffer, color_ptr, 4);
      ctx.beginPath(); // Start a new path
      ctx.rect(x, y, w, h); // Add a rectangle to the current path
      ctx.fillStyle = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
      ctx.fill();
    },
    LoadTexture: (out_ptr, path_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const path = get_str(path_ptr);
      var result = new Uint32Array(buffer, out_ptr, 5);
      var img = new Image();
      img.src = path;
      // console.log(img.naturalWidth, img);
      images.push(img);
      result[0] = images.indexOf(img);
      // console.log(result, img.naturalWidth, img.naturalHeight);
      // TODO: get the true width and height of the image
      result[1] = 256; // width
      result[2] = 256; // height
      result[3] = 1; // mipmaps
      result[4] = 7; // format PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
      return result;
    },
    DrawTexturePro: (
      texture_ptr,
      source_rect_ptr,
      desti_rect_ptr,
      origin_vec2_ptr,
      rotation_f_ptr,
      tint_color_ptr
    ) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const texture = new Uint32Array(buffer, texture_ptr, 5);
      const [sx, sy, sWidth, sHeight] = new Float32Array(
        buffer,
        source_rect_ptr,
        4
      );
      const [dx, dy, dWidth, dHeight] = new Float32Array(
        buffer,
        desti_rect_ptr,
        4
      );
      const [r, g, b, a] = new Uint8Array(buffer, tint_color_ptr, 4);
      const tint = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
      ctx.drawImage(
        images[texture[0]],
        sx,
        sy,
        sWidth,
        sHeight,
        dx,
        dy,
        dWidth,
        dHeight
      );
      // console.log(sx, sy, dx, dy);
    },
    LoadMusicStream: (ptr, filePath_ptr) => {
      audio = new Audio(get_str(filePath_ptr));
    },
    UpdateMusicStream: (musicPtr) => {
      audio.play();
    },
    SetMasterVolume: (volume) => {
      audio.volume = volume;
      console.log(volume);
    },
    PlayMusicStream: (ptr) => {
      // audio.play();
      audio.loop = true;
    },
    printf: (str_ptr, ...args) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const str = get_str(str_ptr);
      const [arg1] = new Float64Array(buffer, args[0], 1);
      console.log(str);
      console.log(args.length, arg1);
    },
    InitAudioDevice: () => {},
    DrawTextureEx: (texture_ptr, vec2_pos_ptr, rotation, scale, color_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const texture = new Uint32Array(buffer, texture_ptr, 5);
      const [dx, dy] = new Float32Array(buffer, vec2_pos_ptr, 2);
      let img = images[texture[0]];
      ctx.drawImage(img, dx, dy, img.width * scale, img.height * scale);
      // console.log(images[texture[0]], dx, dy, img.width * scale, img.height * scale)
    },
    CheckCollisionRecs: (rec1_ptr, rec2_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const [x1, y1, width1, height1] = new Float32Array(buffer, rec1_ptr, 4);
      const [x2, y2, width2, height2] = new Float32Array(buffer, rec2_ptr, 4);
      // return x1 + width1 >= x2;
      // console.log(y1 + height1 >= y2 && x1 < x2 + width2);
      return y1 + height1 >= y2 && x1 <= x2 + width2 && x1 + width1 >= x2;
    },
    IsKeyDown: (key) => {
      return currentPressedKeyState.has(key);
    },
  }),
}).then((w) => {
  wasm = w;
  canvas = document.getElementById("canvas");
  let fps = document.getElementById("fps");
  ctx = canvas.getContext("2d");

  const { GameInit, GameFrame } = w.instance.exports;
  // console.log(addStruct(20, 12.1));
  const keyDown = (e) => {
    currentPressedKeyState.add(e.keyCode);
  };
  const keyUp = (e) => {
    currentPressedKeyState.delete(e.keyCode);
  };
  GameInit();
  window.addEventListener("keydown", keyDown);
  window.addEventListener("keyup", keyUp);
  const first = (timestamp) => {
    previous = timestamp;
    ctx.imageSmoothingEnabled = false;
    window.requestAnimationFrame(next);
  };
  const next = (timestamp) => {
    dt =
      (timestamp - previous) / 1000.0 > 1 / 60
        ? 1 / 60
        : (timestamp - previous) / 1000.0;
    fps.innerHTML = 1 / dt;
    previous = timestamp;
    if (!blured) {
      GameFrame();
    }
    window.requestAnimationFrame(next);
  };
  window.requestAnimationFrame(first);
  // console.log(w.instance.exports.memory.buffer);
});
window.onblur = () => {
  console.log("blured");
  blured = true;
};
window.onfocus = () => {
  console.log("Unblured");
  blured = false;
};
