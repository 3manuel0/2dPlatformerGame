#include"raylib.h"
#include "game.h"

Rectangle platforms[] = {
        {0,550,400, 400},
        {600,650,400, 400},
        {1200,650,400, 400},
        {1800,650,400, 400},
        {2400,650,800, 400},
        {3400,650,800, 400},
        {4400,650,800, 400},
        {5400,650,1000, 400},
        {6800,550,1000, 400},
        {8200,550,1000, 400},
        {9500,550,1000, 400},
        {10500,550,1000, 400},
        {11500,550,1000, 400},
        {12500,550,1000, 400},    
};


U8 platformsCount = sizeof(platforms) / sizeof(Rectangle);
Player player = {0};
Texture2D terrain = {0};
Texture2D bg = {0};
Texture2D bg1 = {0};
Texture2D bg2 = {0};
Texture2D playerIcon = {0};
Camera2D camera = {{0, 0}, {0, 1.0}, 0, 1.0};
bool onGround = false;
Rectangle spriteRect = {0};
Animation idle = {0};
Animation run = {0};
Animation jump = {0};
Animation fall = {0};
Animation attack = {0};
U8 numberOfFrames = 0;
U8 framDelay = 5;
U8 frameDelayCounter = 0;
Rectangle healthBar ;
Rectangle healthPoints ;
Color hpColor ;
U16  fullHp ;
f32 hpConv ;
Music mainSong = {0};
void GameInit(){
    InitWindow(screenWidth, screenHeight, "my game in wasm");
    InitAudioDevice();
    mainSong = LoadMusicStream("assets/sound/mainSong.mp3");
    PlayMusicStream(mainSong);
    player = createPlayer((Rectangle){0, -9000, 120, 120}, (Vector2){64, 43},(Vector2){0 , 0});
    // creating animations
    idle = createAnimation(LoadTexture("assets/idle/Warrior_Idle_sheet.png"), LoadTexture("assets/idle/Warrior_Idle_sheet_left.png"), 5);
    run = createAnimation(LoadTexture( "assets/run/Warrior_Run_sheet.png"), LoadTexture( "assets/run/Warrior_Run_sheet_left.png"), 7);
    jump = createAnimation(LoadTexture( "assets/Jump/Warrior_Jump_sheet.png"), LoadTexture( "assets/Jump/Warrior_Jump_sheet_left.png"), 2);
    fall = createAnimation(LoadTexture( "assets/Jump/Warrior_fall_sheet.png"), LoadTexture( "assets/Jump/Warrior_fall_sheet_left.png"), 2);
    attack = createAnimation(LoadTexture( "assets/Attack/Warrior_Attack_1-sheet.png"), LoadTexture( "assets/Attack/Warrior_Attack_1-sheet_left.png"), 11);
    terrain = LoadTexture("assets/terrain/Terrain-and-Props.png");
    bg = LoadTexture("assets/bg/BG_1.png");
    bg1 = LoadTexture("assets/bg/BG_2.png");
    bg2 = LoadTexture("assets/bg/BG_3.png");
    playerIcon = LoadTexture("assets/icons/Warrior_icont.png");
    spriteRect = player.playerRect;
    player.velocity.x = 10;
    spriteRect = player.playerRect;
    healthBar = (Rectangle) {34, 10, 300, 30};
    healthPoints = (Rectangle) {healthBar.x, healthBar.y, 300, healthBar.height};
    hpColor = GREEN;
    fullHp = player.healthPoints;
    hpConv = healthBar.width / player.healthPoints;
    SetTargetFPS(60);
}

void GameFrame(){
    UpdateMusicStream(mainSong);
    onGround = false;
    float dt = GetFrameTime();
    player.velocity.y += Gravity * dt;
    player.playerRect.y += player.velocity.y;
    player.currentTexture = idle.rightAnimationTexture;
    healthPoints.width = player.healthPoints * hpConv; 
    // frame delay to slow the fast animation pace
    frameDelayCounter ++;
    if(framDelay == frameDelayCounter){
        frameDelayCounter = 0;
        player.frameIndex %= numberOfFrames;
        player.frameIndex ++;
    }
    numberOfFrames = idle.numOfFrames;
    player.currentTexture = player.orientation == RIGHT ?  idle.rightAnimationTexture : idle.leftAnimationTexture;
    if (numberOfFrames > idle.numOfFrames){
        player.frameIndex = 0;
    }
    if(player.playerRect.y > 900){
        player.playerRect.y = 100;
        getDamage(&player.healthPoints, 200);
        player.playerRect.x = 0;
            // camera.offset.x = 0;
    }
    for(U16 i = 0; i <  platformsCount; i++){
        // chek if one of two points (left foot of the sprite, right foot of the sprite) is touching a platform
        if(CheckCollisionRecs(player.playerRect, platforms[i])){
            onGround = true;
                player.velocity.y = 0;
                player.playerRect.y = platforms[i].y - spriteRect.height;
        }
    //    if(CheckCollisionPointLine((Vector2){enemy.playerRect.x + 80, enemy.playerRect.y + enemy.playerRect.height}, (Vector2){platforms[i].x, platforms[i].y}, (Vector2){platforms[i].x+ platforms[i].width, platforms[i].y}, 11) || CheckCollisionPointLine((Vector2){enemy.playerRect.x + 40, enemy.playerRect.y + enemy.playerRect.height}, (Vector2){platforms[i].x, platforms[i].y}, (Vector2){platforms[i].x+ platforms[i].width, platforms[i].y}, 11)){
    //         // onGround = true;
    //         enemy.velocity.y = 0;
    //         enemy.playerRect.y = platforms[i].y - spriteRect.height;
    //         }
    }
        if(IsKeyDown(KEY_D)){
            if(player.playerRect.x >= screenWidth / 2){
                camera.offset.x -= player.velocity.x;
                player.orientation = RIGHT;
                for(U16 i = 0; i <  platformsCount; i++){
                    platforms[i].x -= player.velocity.x;
                }      
            } else {
                player.orientation = RIGHT;
                player.playerRect.x += player.velocity.x ;
            }
            player.currentTexture =run.rightAnimationTexture;
            numberOfFrames = run.numOfFrames;
        }else if(IsKeyDown(KEY_A)){
            if(player.playerRect.x >= (screenWidth / 2) || platforms[0].x >= -5){
                player.playerRect.x -= player.velocity.x ;
                player.orientation = LEFT;
            } else {
                player.orientation = LEFT;
                camera.offset.x += player.velocity.x;
                for(U16 i = 0; i <  platformsCount; i++){
                    platforms[i].x += player.velocity.x ;
                }                   
            }
            player.currentTexture = run.leftAnimationTexture;
            numberOfFrames = run.numOfFrames;
            // player.playerRect.x -= player.velocity.x;
        }else if(IsKeyDown(KEY_E)){
            numberOfFrames = attack.numOfFrames;
            player.currentTexture = player.orientation == RIGHT ?  attack.rightAnimationTexture : attack.leftAnimationTexture;
        }
        if(IsKeyDown(KEY_W) && onGround){
            player.velocity.y -= 12;
            onGround = false;
        }
        if(!onGround){
            numberOfFrames = jump.numOfFrames;
            player.frameIndex = 0;
            player.currentTexture = player.orientation == RIGHT ?  jump.rightAnimationTexture : jump.leftAnimationTexture;
        }
        if(!onGround && player.velocity.y > 0){
            numberOfFrames = fall.numOfFrames;
            player.frameIndex = 0;
            player.currentTexture = player.orientation == RIGHT ?  fall.rightAnimationTexture : fall.leftAnimationTexture;
        }
        if(player.healthPoints <= 45 * fullHp / 100){ 
            hpColor = YELLOW;
        }
        if(player.healthPoints <= 30 * fullHp / 100){
            hpColor = RED;
        }
    BeginDrawing();
    ClearBackground(WHITE);
    DrawTextureEx(bg2, (Vector2){camera.offset.x * 0.3, -30}, 0, 2.0, WHITE);
    DrawTextureEx(bg2, (Vector2){(camera.offset.x * 0.3)  + 1000, -30}, 0, 2.0, WHITE);
    DrawTextureEx(bg1, (Vector2){camera.offset.x * 0.2, -30}, 0, 2.0, WHITE);
    DrawTextureEx(bg, (Vector2){camera.offset.x * 0.1, -30}, 0, 2.0, WHITE);
    DrawRectangleRec(healthBar, RAYWHITE);
    DrawRectangleRec(healthPoints, hpColor);
    // DrawRectangleLinesEx(healthBar, 3, GRAY);
    DrawTextureEx(playerIcon, (Vector2){0,0}, 0, 2.8, WHITE);        
        // else if(IsKeyDown(KEY_E)){
        //     // numberOfFrames = attack.numOfFrames;
        //     player.currentTexture = player.orientation == RIGHT ?  attack.rightAnimationTexture : attack.leftAnimationTexture;
        // }
    for(U16 i = 0; i < platformsCount; i++){
        // DrawRectangleRec(platforms[i], BLUE);
        DrawTexturePro(terrain, (Rectangle) {99, 0, 25, 65}, platforms[i],(Vector2){0, 0}, 0, WHITE);
        // DrawRectangle(99, 0, 25, 65,WHITE);
        // DrawRectangleRec(platforms[i], BLUE);

    }
    DrawRectangle(player.playerRect.x, player.playerRect.y, player.playerRect.width, player.playerRect.height, BLUE);
    DrawTexturePro(player.currentTexture,(Rectangle) {player.spriteSize.x* player.frameIndex ,0, player.spriteSize.x, player.spriteSize.y}, player.playerRect,(Vector2){0, 0}, 0, WHITE);
    EndDrawing();
}


#ifndef PLATFORM_WEB
#include <stdio.h>
int main(){
    GameInit();
    // Main game loop
    while (!WindowShouldClose())
    {   

        GameFrame();
        printf("%f\t%f\t%f\n", player.velocity.y, screenWidth / 2, platforms[0].x);
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    CloseWindow();        // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    return 0;
}
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