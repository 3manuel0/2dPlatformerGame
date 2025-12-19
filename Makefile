wasm: game.c
	clang --target=wasm32 --no-standard-libraries -I./include -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined -DPLATFORM_WEB -o game.wasm game.c
linux: game.c
	gcc game.c -o game -Wall -Werror -Wno-missing-braces ./raylib_linux/libraylib.a -lGL -lm -lpthread -ldl -lrt -lX11 
windows: game.c # mingw
	gcc game.c -o game.exe -I./include ./raylib_mingw_windows/libraylib.a -lopengl32 -lgdi32 -lwinmm