#include "2D.h"
#ifdef linux
#include"raylib.h"
#endif
#ifdef _WIN32
#include "raylib.h"
#endif


// function to create/return a player
Player createPlayer(Rectangle playerRect, Vector2 spritSize, Vector2 velocity) {
  return (Player){
      .playerRect = playerRect,
      .spriteSize = spritSize,
      .velocity = velocity,
      .frameIndex = 0,
      .healthPoints = 1000,
      .orientation = RIGHT,
  };
}

// function that creates/returns an animation
Animation createAnimation(Texture2D rightAnimationTexture, Texture2D leftAnimationTexture, U8 numOfFrames) {
  return (Animation){
      .rightAnimationTexture = rightAnimationTexture,
      .leftAnimationTexture = leftAnimationTexture,
      .numOfFrames = numOfFrames,
  };
}

void getDamage(U16 *hp, U16 dmg){
    if(*hp > 0){
      *hp -= dmg;
    }else if(*hp < dmg){
      *hp -= *hp;
    }
}

