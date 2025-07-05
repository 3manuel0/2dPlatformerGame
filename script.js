// thanks to Tsoding(Alexey Kutepov) for this proxy
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

// mapping keys to work with the raylib KeyboardKey enum
const RAYLIB_KEY_MAPPINGS = {
  Space: 32,
  Quote: 39,
  Comma: 44,
  Minus: 45,
  Period: 46,
  Slash: 47,
  Digit0: 48,
  Digit1: 49,
  Digit2: 50,
  Digit3: 51,
  Digit4: 52,
  Digit5: 53,
  Digit6: 54,
  Digit7: 55,
  Digit8: 56,
  Digit9: 57,
  Semicolon: 59,
  Equal: 61,
  KeyA: 65,
  KeyB: 66,
  KeyC: 67,
  KeyD: 68,
  KeyE: 69,
  KeyF: 70,
  KeyG: 71,
  KeyH: 72,
  KeyI: 73,
  KeyJ: 74,
  KeyK: 75,
  KeyL: 76,
  KeyM: 77,
  KeyN: 78,
  KeyO: 79,
  KeyP: 80,
  KeyQ: 81,
  KeyR: 82,
  KeyS: 83,
  KeyT: 84,
  KeyU: 85,
  KeyV: 86,
  KeyW: 87,
  KeyX: 88,
  KeyY: 89,
  KeyZ: 90,
  BracketLeft: 91,
  Backslash: 92,
  BracketRight: 93,
  Backquote: 96,
  Escape: 256,
  Enter: 257,
  Tab: 258,
  Backspace: 259,
  Insert: 260,
  Delete: 261,
  ArrowRight: 262,
  ArrowLeft: 263,
  ArrowDown: 264,
  ArrowUp: 265,
  PageUp: 266,
  PageDown: 267,
  Home: 268,
  End: 269,
  CapsLock: 280,
  ScrollLock: 281,
  NumLock: 282,
  PrintScreen: 283,
  Pause: 284,
  F1: 290,
  F2: 291,
  F3: 292,
  F4: 293,
  F5: 294,
  F6: 295,
  F7: 296,
  F8: 297,
  F9: 298,
  F10: 299,
  F11: 300,
  F12: 301,
  F13: 302,
  F14: 303,
  F15: 304,
  F16: 305,
  F17: 306,
  F18: 307,
  F19: 308,
  F20: 309,
  F21: 310,
  F22: 311,
  F23: 312,
  F24: 313,
  F25: 314,
  NumPad0: 320,
  NumPad1: 321,
  NumPad2: 322,
  NumPad3: 323,
  NumPad4: 324,
  NumPad5: 325,
  NumPad6: 326,
  NumPad7: 327,
  NumPad8: 328,
  NumPad9: 329,
  NumpadDecimal: 330,
  NumpadDivide: 331,
  NumpadMultiply: 332,
  NumpadSubtract: 333,
  NumpadAdd: 334,
  NumpadEnter: 335,
  NumpadEqual: 336,
  ShiftLeft: 340,
  ControlLeft: 341,
  AltLeft: 342,
  MetaLeft: 343,
  ShiftRight: 344,
  ControlRight: 345,
  AltRight: 346,
  MetaRight: 347,
  ContextMenu: 348,
};

// variables
let playing = false;
let wasm;
let canvas;
let ctx;
let previous;
let dt;
let images = [];
let prevPressedKeyState = new Set();
let currentPressedKeyState = new Set();
let currentPressedMouseKeyState = new Set();
let camera_obj = { offset_x: 0, offset_y: 0 };
let player = { x: 0, y: 0 };
let audio;
let targetFps;
let currentMousePosition = { x: 0, y: 0 };
const startingScreen = document.getElementById("strating-screen");

// getting Cstring length in memory
const str_len = (mem, str_ptr) => {
  let len = 0;
  while (mem[str_ptr] != 0) {
    len++;
    str_ptr++;
  }
  return len;
};

// getting a Cstring from wasm memory
const get_str = (str_ptr) => {
  const buffer = wasm.instance.exports.memory.buffer;
  const mem = new Uint8Array(buffer);
  const len = str_len(mem, str_ptr);
  const str_bytes = new Uint8Array(buffer, str_ptr, len);
  return new TextDecoder().decode(str_bytes);
};

// Instintiating webassembly
WebAssembly.instantiateStreaming(fetch("game.wasm"), {
  // Raylib function in js
  env: make_environment({
    InitWindow: (width, height, str_ptr) => {
      canvas.width = width;
      canvas.height = height;
      document.title = get_str(str_ptr);
    },
    BeginDrawing: () => {},
    EndDrawing: () => {
      prevPressedKeyState.clear();
      currentPressedMouseKeyState.clear();
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
      targetFps = fps;
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
    DrawText: (text_ptr, x, y, font_size, color_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      text = get_str(text_ptr);
      const [r, g, b, a] = new Uint8Array(buffer, color_ptr, 4);
      ctx.font = `${font_size - 5}px grixel`;
      ctx.fillStyle = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
      ctx.fillText(text, x, y + font_size - 5);
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
      audio.loop = true;
    },
    printf: (str_ptr, args_ptrs) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const str = get_str(str_ptr);
      let args = [];
      let argsIndex = 0;
      for (let i = 0; i < str.length; i++) {
        if (str[i] === "%") {
          switch (str[i + 1]) {
            case "f":
              args.push(new Float64Array(buffer, args_ptrs + argsIndex, 1)[0]);
              argsIndex += 8;
              break;
            case "d":
              args.push(new Int32Array(buffer, args_ptrs + argsIndex, 1)[0]);
              argsIndex += 4;
              break;
            case "u":
              args.push(new Uint32Array(buffer, args_ptrs + argsIndex, 1)[0]);
              argsIndex += 8;
              break;
            case "s":
              args.push(get_str(args_ptrs + argsIndex));
              argsIndex += str_len(args_ptrs + argsIndex);
              break;
            case "i":
              args.push(new Int32Array(buffer, args_ptrs + argsIndex, 1)[0]);
              argsIndex += 4;
              break;
          }
        }
      }
      // const [arg1, arg2] = new Float64Array(buffer, args_ptrs[0], 2);
      console.log(...args);
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
    DrawRectangleLinesEx: (rect_ptr, lineHeight, color_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const [x, y, width, height] = new Float32Array(buffer, rect_ptr, 4);
      const [r, g, b, a] = new Uint8Array(buffer, color_ptr, 4);
      const color = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
      ctx.lineWidth = lineHeight;
      ctx.strokeStyle = color;
      ctx.rect(x, y, width, height);
      ctx.stroke();
    },
    GetMousePosition: (ret_ptr) => {
      const canvasRect = ctx.canvas.getBoundingClientRect();
      const x = currentMousePosition.x - canvasRect.left;
      const y = currentMousePosition.y - canvasRect.top;
      const buffer = wasm.instance.exports.memory.buffer;
      new Float32Array(buffer, ret_ptr, 2).set([
        (canvas.clientWidth / canvas.width) * x,
        (canvas.clientHeight / canvas.height) * y,
      ]);
      // console.log(
      //   (canvas.clientWidth / canvas.width) * x,
      //   (canvas.clientHeight / canvas.height) * y
      // );
    },
    DrawFPS: (x, y) => {
      text = `${Math.floor(1 / dt)} FPS`;
      const fontSize = 16 - 3;
      ctx.font = `${fontSize}px grixel`;
      ctx.fillStyle = `rgba(0, 117, 44, 1)`;
      ctx.fillText(text, x, y + fontSize);
    },
    CheckCollisionRecs: (rec1_ptr, rec2_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const [x1, y1, width1, height1] = new Float32Array(buffer, rec1_ptr, 4);
      const [x2, y2, width2, height2] = new Float32Array(buffer, rec2_ptr, 4);
      // return x1 + width1 >= x2;
      // console.log(y1 + height1 >= y2 && x1 < x2 + width2);
      return y1 + height1 >= y2 && x1 <= x2 + width2 && x1 + width1 >= x2;
    },
    CheckCollisionPointRec: (point_ptr, rect_ptr) => {
      let [x_off, y_off] = [
        canvas.clientWidth / canvas.width,
        canvas.clientHeight / canvas.height,
      ];
      const buffer = wasm.instance.exports.memory.buffer;
      const [pX, pY] = new Float32Array(buffer, point_ptr, 2);
      let [recX, recY, width, height] = new Float32Array(buffer, rect_ptr, 4);
      recX *= x_off;
      recY *= y_off;
      // console.log(pX, pY, recX, recY, width, height);
      // console.log(pX, pY, recX, recY, recX + width, recY + height);
      return (
        pY <= recY + height && pY >= recY && pX <= recX + width && pX >= recX
      );
      // return true;
    },
    IsKeyDown: (key) => {
      // console.log(key);
      return currentPressedKeyState.has(key);
    },
    IsMouseButtonPressed: (key) => {
      return currentPressedMouseKeyState.has(key);
    },
    loadGame: (player_ptr, camera_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;

      // ----changing wasm's memory to the saved values------
      new Float32Array(buffer, player_ptr, 1).set([
        localStorage.getItem("playerX"),
      ]);
      new Float32Array(buffer, player_ptr + 4, 1).set([
        localStorage.getItem("playerY"),
      ]);
      new Float32Array(buffer, camera_ptr, 1).set([
        localStorage.getItem("cameraX"),
      ]);
      if (localStorage.getItem("hp")) {
        new Uint32Array(buffer, player_ptr + 16 + 16 + 4, 1).set([
          localStorage.getItem("hp"),
        ]);
      } else {
        new Uint32Array(buffer, player_ptr + 16 + 16 + 4, 1).set([1000]);
      }
      // --------------------------------------------------
    },
    saveGame: (player_ptr, camera_ptr) => {
      const buffer = wasm.instance.exports.memory.buffer;
      const [x, y, width, height] = new Float32Array(buffer, player_ptr, 4);
      const [camx, camy] = new Float32Array(buffer, camera_ptr, 2);
      const [hp] = new Uint32Array(buffer, player_ptr + 16 + 16 + 4, 1);
      // console.log(hp);

      localStorage.setItem("playerX", x);
      localStorage.setItem("playerY", y);
      localStorage.setItem("cameraX", camx);
      localStorage.setItem("hp", hp);
    },
  }),
}).then((w) => {
  wasm = w;
  canvas = document.getElementById("canvas");
  ctx = canvas.getContext("2d");

  // getting these functions from wasm
  const { GameInit, GameFrame } = w.instance.exports;

  const keyDown = (e) => {
    // e.preventDefault();
    currentPressedKeyState.add(RAYLIB_KEY_MAPPINGS[e.code]);
  };
  const keyUp = (e) => {
    currentPressedKeyState.delete(RAYLIB_KEY_MAPPINGS[e.code]);
  };
  const MouseDown = (e) => {
    currentPressedMouseKeyState.add(e.button);
    console.log(e.button);
  };
  // GameInit func from wasm (see the C code for function)
  GameInit();
  window.addEventListener("keydown", keyDown);
  window.addEventListener("keyup", keyUp);
  window.addEventListener("mousedown", MouseDown);
  // first initialization for window.requestAnimationFrame
  const first = (timestamp) => {
    previous = timestamp;
    // startingScreen.style.width = canvas.width + "px";
    // startingScreen.style.height = canvas.height + "px";
    window.requestAnimationFrame(next);
  };
  // function called every frame
  const next = (timestamp) => {
    // for fixing a problem with images being blury when drawn
    ctx.imageSmoothingEnabled = false;
    // deltatime
    dt =
      (timestamp - previous) / 1000.0 > 1 / 24 // stopping delta taime from getting so big
        ? 1 / 24 // stopping the delta time to be a max value of 1/24fps 0.04166...
        : (timestamp - previous) / 1000.0;

    previous = timestamp;

    if (playing) {
      // draw the next frame
      GameFrame();
    }

    // continue the loop by recalling this function (next())
    window.requestAnimationFrame(next);
  };
  window.requestAnimationFrame(first);
});

document.getElementById("play").onclick = () => {
  playing = true;
  startingScreen.style.display = "none";
};

const mouseMove = (e) => {
  currentMousePosition = { x: e.clientX, y: e.clientY };
};
window.addEventListener("mousemove", mouseMove);
