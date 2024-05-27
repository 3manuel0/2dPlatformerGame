#ifndef TWOD_H_
#define TWOD_H_
#include "include/raylib.h"
#include <stdbool.h>

#define screenWidth 1280
#define screenHeight 720

typedef unsigned char U8;
typedef unsigned short int U16;
typedef unsigned int U32;
typedef unsigned long long int U64;
typedef float f32;
typedef double f64;
typedef char i8;
typedef short int i16;
typedef int i32;
typedef long long int i64;

typedef enum Direction {
    Right,
    Left,
} Direction;

typedef enum CurrentAnimation {
    idling,
    running,
    jumping,
} CurrentAnimation;

typedef struct Animation {
    Texture2D rightAnimationTexture;
    Texture2D leftAnimationTexture;
    unsigned char numOfFrames;
} Animation;

typedef struct Player {
    Rectangle playerRect;
    CurrentAnimation currentAnimation;
    Direction direction;
    Vector2 spriteSize;
    Vector2 velocity;
} Player;

Player createPlayer(Rectangle playerRect, CurrentAnimation currentAnimation, Direction direction, Vector2 spritSize, Vector2 velocity);
Animation createAnimation(Texture2D rightAnimationTexture, Texture2D leftAnimationTexture, U8 numOfFrames);
void updatePlayersPosition(Player * player, f32 frameTime);
bool collitionWithPlatform(Rectangle player, Rectangle platform);
#endif