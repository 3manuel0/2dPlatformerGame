wasm: game.c
	clang --target=wasm32 --no-standard-libraries -I./include -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined -DPLATFORM_WEB -o game.wasm game.c
linux: game.c
	gcc game.c -o game -Wall -Werror -Wno-missing-braces -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 