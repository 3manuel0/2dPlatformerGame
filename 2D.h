#ifndef TWOD_H_
#define TWOD_H_
// #include"include/raylib.h"
#include "raylib.h"
#include <stdbool.h>

#define screenWidth 1280
#define screenHeight 720

// redefining types
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

// Animation struct
typedef struct Animation {
  Texture2D rightAnimationTexture;
  Texture2D leftAnimationTexture;
  unsigned char numOfFrames;
} Animation;

// player struct
typedef struct Player {
  Rectangle playerRect;
  Vector2 spriteSize;
  Vector2 velocity;
} Player;

// declaration of a function that create/return a player
Player createPlayer(Rectangle playerRect, Vector2 spritSize, Vector2 velocity);

// declaration of a function that creates/returns an animation
Animation createAnimation(Texture2D rightAnimationTexture,
                          Texture2D leftAnimationTexture, U8 numOfFrames);
#endif