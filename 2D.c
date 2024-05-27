#include "2D.h"
#include "include/raylib.h"
#include <stdbool.h>


Player createPlayer(Rectangle playerRect, CurrentAnimation currentAnimation, Direction direction, Vector2 spritSize, Vector2 velocity){
    return (Player) {
        .playerRect = playerRect,
        .currentAnimation = currentAnimation,
        .direction = direction,
        .spriteSize = spritSize,
        .velocity = velocity,
    };
}

Animation createAnimation(Texture2D rightAnimationTexture, Texture2D leftAnimationTexture, U8 numOfFrames){
    return (Animation) {
        .rightAnimationTexture = rightAnimationTexture,
        .leftAnimationTexture = leftAnimationTexture,
        .numOfFrames = numOfFrames,
    };
}


void updatePlayersPosition(Player * player, f32 frameTime){
    player->playerRect = (Rectangle) {200, 300, 200, 200};
}

bool collitionWithPlatform(Rectangle player, Rectangle platform){
    // printf("player.y = %f\n", player.y);
    // printf("platform.y = %f\n", platform.y);
    // printf("player.x = %f\n",   player.x);
    // printf("platform.x = %f\n", platform.x);
    // printf("%d\n", platform.y <= player.y && player.x - 130 <= platform.width && player.x  <= platform.x);
    if(platform.y <= player.y + player.height) return true;
    return false;
}