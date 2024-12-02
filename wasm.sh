# clang --target=wasm32 -o add.wasm add.c -O3 -s -Wl,--export-all
clang --target=wasm32 --no-standard-libraries -I./include -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined -DPLATFORM_WEB -o game.wasm game.c
