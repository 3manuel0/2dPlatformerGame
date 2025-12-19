# this is the an old script, I use make now
# wasm32 for compiling wasm 
clang --target=wasm32 --no-standard-libraries -I./include -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined -DPLATFORM_WEB -o game.wasm game.c &&
# from wasm bynary to wat(webassembly text format)
wasm2wat game.wasm > game.wat