#include "2D.h"
// #include"include/raylib.h"
#include "raylib.h"

// function to create/return a player
Player createPlayer(Rectangle playerRect, Vector2 spritSize, Vector2 velocity) {
  return (Player){
      .playerRect = playerRect,
      .spriteSize = spritSize,
      .velocity = velocity,
  };
}

// function that creates/returns an animation
Animation createAnimation(Texture2D rightAnimationTexture,
                          Texture2D leftAnimationTexture, U8 numOfFrames) {
  return (Animation){
      .rightAnimationTexture = rightAnimationTexture,
      .leftAnimationTexture = leftAnimationTexture,
      .numOfFrames = numOfFrames,
  };
}
