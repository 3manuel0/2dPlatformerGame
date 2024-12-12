# wasm32 
clang --target=wasm32 --no-standard-libraries -I./include -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined -DPLATFORM_WEB -o game.wasm game.c
