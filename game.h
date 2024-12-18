#ifndef TWOD_H_
#define TWOD_H_
#include"raylib.h"
#ifdef linux
#endif
#ifdef _WIN32
#include "raylib.h"
#endif
#include <stdbool.h>

#define Gravity 500.0f
#define screenWidth 1280.0f
#define screenHeight 720.0f

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

typedef enum Orientation{
  RIGHT = 0, 
  LEFT,
}Orientation;

// player struct
typedef struct Player {
  Rectangle playerRect;
  Vector2 spriteSize;
  Vector2 velocity;
  U8 frameIndex;
  U32 healthPoints;
  Texture2D currentTexture;
  Orientation orientation;
} Player;

typedef Player Enemy;


// declaration of a function that create and return a player
Player createPlayer(Rectangle playerRect, Vector2 spritSize, Vector2 velocity);

// declaration of a function that creates nad returns an animation
Animation createAnimation(Texture2D rightAnimationTexture, Texture2D leftAnimationTexture, U8 numOfFrames);

// calculate and display dmg
void takeDamage(U32 *hp, U32 dmg);

#endif