#ifndef TWOD_H_
#define TWOD_H_
#include "raylib.h" 
#include <stdint.h>
#ifdef linux
#endif
#ifdef _WIN32
#include "raylib.h"
#endif
#include <stdbool.h>

#define Gravity 800.8f
#define screenWidth 1280.0f
#define screenHeight 720.0f

// redefining types
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef float f32;
typedef double f64;
typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;

// Animation struct
typedef struct Animation {
  Texture2D rightAnimationTexture;
  Texture2D leftAnimationTexture;
  u8 numOfFrames;
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
  u16 frameIndex;
  bool onGround;
  u32 healthPoints;
  Texture2D currentTexture;
  Orientation orientation;
} Player;

typedef Player Enemy;


// declaration of a function that create and return a player
Player createPlayer(Rectangle playerRect, Vector2 spritSize, Vector2 velocity);

// declaration of a function that creates nad returns an animation
Animation createAnimation(Texture2D rightAnimationTexture, Texture2D leftAnimationTexture, u8 numOfFrames);

// calculate and display dmg
void takeDamage(u32 *hp, u32 dmg);

// save game 
void saveGame(Player player, Camera2D camera);

// load game
void loadGame(Player* player, Camera2D* camera);

// reset the game
void resetGame();

void DrawGameOver(Color color);

#endif