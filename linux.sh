# linux
gcc game.c -o game -O2 -Wall -Werror -Wno-missing-braces -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 \
&& ./game 
