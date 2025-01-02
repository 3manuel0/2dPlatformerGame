#include"raylib.h"
#include "game.h"
#include <stdbool.h>
#ifndef PLATFORM_WEB
#include <stdio.h>
#endif

Rectangle platforms[] = {
        {0,550,400, 400},
        {600,650,400, 400},
        {1200,650,400, 400},
        {1800,650,400, 400},
        {2400,650,800, 400},
        {3400,650,800, 400},
        {4400,650,800, 400},
        {5400,650,1000, 400},
        {6800,650,1000, 400},
        {8200,650,1000, 400},
        {9500,650,4000, 400},
        {10400,650,1000, 400},
        {11400,650,1000, 400},
        {12400,650,1000, 400},    
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
// Animation attack = {0};
U8 numberOfFrames = 0;
bool gameOver = false;
// f32 framDelay = 0;
f32 frameDelayCounter = 0;
Rectangle healthBar ;
Rectangle healthPoints ;
Rectangle hitBox;
Color hpColor ;
U16  fullHp ;
f32 hpConv ;
Music mainSong = {0};

void GameInit(){
    InitWindow(screenWidth, screenHeight, "my game in wasm");
    InitAudioDevice();
    mainSong = LoadMusicStream("assets/sound/mainSong.mp3");
    PlayMusicStream(mainSong);
    player = createPlayer((Rectangle){0, 100, 64*2, 43*2}, (Vector2){64, 43},(Vector2){0 , 0});
    loadGame(&player, &camera);
    for(U8 i = 0; i < platformsCount; i++){
        platforms[i].x += camera.offset.x;
    }
    // creating animations
    idle = createAnimation(LoadTexture("assets/idle/Warrior_Idle_sheet.png"), LoadTexture("assets/idle/Warrior_Idle_sheet_left.png"), 5);
    run = createAnimation(LoadTexture( "assets/run/Warrior_Run_sheet.png"), LoadTexture( "assets/run/Warrior_Run_sheet_left.png"), 7);
    jump = createAnimation(LoadTexture( "assets/Jump/Warrior_Jump_sheet.png"), LoadTexture( "assets/Jump/Warrior_Jump_sheet_left.png"), 2);
    fall = createAnimation(LoadTexture( "assets/Jump/Warrior_fall_sheet.png"), LoadTexture( "assets/Jump/Warrior_fall_sheet_left.png"), 2);
    // attack = createAnimation(LoadTexture( "assets/Attack/Warrior_Attack_1-sheet.png"), LoadTexture( "assets/Attack/Warrior_Attack_1-sheet_left.png"), 11);
    terrain = LoadTexture("assets/terrain/Terrain-and-Props.png");
    bg = LoadTexture("assets/bg/BG_1.png");
    bg1 = LoadTexture("assets/bg/BG_2.png");
    bg2 = LoadTexture("assets/bg/BG_3.png");
    playerIcon = LoadTexture("assets/icons/Warrior_icont.png");
    spriteRect = player.playerRect;
    spriteRect = player.playerRect;
    healthBar = (Rectangle) {34, 10, 300, 30};
    healthPoints = (Rectangle) {healthBar.x, healthBar.y, 300, healthBar.height};
    hpColor = GREEN;
    fullHp = player.healthPoints;
    hpConv = healthBar.width / player.healthPoints;
    onGround = false;
    SetTargetFPS(60);
    SetMasterVolume(0.1);
}

void GameFrame(){
    UpdateMusicStream(mainSong);
    float dt = GetFrameTime();
    player.velocity.x = 500 * dt;
    player.playerRect.y += player.velocity.y * dt;
    player.currentTexture = idle.rightAnimationTexture;
    healthPoints.width = player.healthPoints * hpConv; 
    hitBox = player.orientation == RIGHT ? 
        (Rectangle){player.playerRect.x + (player.playerRect.width / 4) +15 , player.playerRect.y + player.playerRect.height - 10, 26, 10} 
        :(Rectangle){player.playerRect.x + (player.playerRect.width / 2) - 10, player.playerRect.y + player.playerRect.height - 10, 26, 10} ;
    // printf("%f\n%f\n%d",dt ,player.playerRect.y , platformsCount);
    // frame delay to slow the fast animation pace
    // frameDelayCounter ++;
    if(player.frameIndex >= numberOfFrames){
        // player.frameIndex %= numberOfFrames;
        player.frameIndex = 0;
        frameDelayCounter = 0;
    }
    frameDelayCounter += 12 * dt;
    player.frameIndex = (U8)frameDelayCounter;
    numberOfFrames = idle.numOfFrames;
    player.currentTexture = player.orientation == RIGHT ?  idle.rightAnimationTexture : idle.leftAnimationTexture;
    if (numberOfFrames > idle.numOfFrames){
        player.frameIndex = 0;
    }
    if(player.playerRect.y > 900){
        player.playerRect.y = 100;
        takeDamage(&player.healthPoints, 200);
        player.playerRect.x = 0;
        resetGame();
        gameOver = true;
            // camera.offset.x = 0;
    }
    onGround = false;

    for(U16 i = 0; i <  platformsCount; i++){
        // chek if one of two points (left foot of the sprite, right foot of the sprite) is touching a platform
        if(CheckCollisionRecs(hitBox, platforms[i]) && hitBox.y - hitBox.height <= platforms[i].y){
            player.velocity.y = 0;
            player.playerRect.y = platforms[i].y - spriteRect.height;
            onGround = true;
            break;
        }
    }
        if(IsKeyDown(KEY_D) || IsKeyDown(KEY_RIGHT)){
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
        }else if(IsKeyDown(KEY_A) || IsKeyDown(KEY_LEFT)){
            if(player.playerRect.x >= (screenWidth / 2) || platforms[0].x >= -5){
                // printf("%f\n",player.playerRect.x);
                if(player.playerRect.x +  (player.playerRect.width / 2) - 20 >= 0){
                    player.playerRect.x -= player.velocity.x ;
                    player.orientation = LEFT;
                }
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
        }
        // else if(IsKeyDown(KEY_E)){
        //     numberOfFrames = attack.numOfFrames;
        //     player.currentTexture = player.orientation == RIGHT ?  attack.rightAnimationTexture : attack.leftAnimationTexture;
        // }
        player.velocity.y += Gravity * dt;
        if(onGround){
            if(IsKeyDown(KEY_W) || IsKeyDown(KEY_UP) || IsKeyDown(KEY_SPACE)){
                player.velocity.y -= 500;
                onGround = false;
            }
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
    DrawRectangleLinesEx(healthBar, 3, GRAY);
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
    // DrawRectangle(player.playerRect.x, player.playerRect.y, player.playerRect.width, player.playerRect.height, BLUE);
    // DrawRectangle(hitBox.x, hitBox.y, hitBox.width, hitBox.height, BLUE);
    DrawTexturePro(player.currentTexture,(Rectangle) {player.spriteSize.x* player.frameIndex ,0, player.spriteSize.x, player.spriteSize.y}, player.playerRect,(Vector2){0, 0}, 0, WHITE);
    DrawText("Use AS to move or and W or space to jump", 20 + camera.offset.x, 200, 16, BLACK);
    DrawFPS(screenWidth - 90 , 0);
    EndDrawing();
    #ifdef PLATFORM_WEB
        saveGame(player,  camera);
    #endif
}


#ifndef PLATFORM_WEB
#include <stdio.h>
int main(){
    GameInit();
    // Main game loop
    while (!WindowShouldClose())
    {   

        GameFrame();
        // printf("%f\t%f\t%d\n", player.velocity.y, frameDelayCounter, player.frameIndex);
    }
    // De-Initialization
    //--------------------------------------------------------------------------------------
    saveGame(player, camera);
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

void takeDamage(U32 *hp, U32 dmg){
    if(*hp > 0){
      *hp -= dmg;
    }else if(*hp < dmg){
      *hp -= *hp;
    }
}
void resetGame() {
    player.playerRect.x = 0; player.playerRect.y = 100;
    for(U8 i = 0; i < platformsCount; i++){
        platforms[i].x -= camera.offset.x;
    }
    camera = (Camera2D){0};
}

#ifndef PLATFORM_WEB
void saveGame(Player player, Camera2D camera){
    printf("%f %f\n",platforms[0].x,camera.offset.x);
    float data[] = {player.playerRect.x, player.playerRect.y, camera.offset.x};
    FILE * fptr = fopen("save.sav", "wb");
    if(fptr == NULL) return;
    fwrite(data, sizeof(float), sizeof(data)/sizeof(float), fptr);
    fclose(fptr);
}


void loadGame(Player* player, Camera2D* camera){
    float data[3];
    FILE * fptr = fopen("save.sav", "rb");
    if(fptr == NULL) return;
    fread(data, sizeof(float), 3, fptr);
    fclose(fptr);
    player->playerRect.x = data[0];
    player->playerRect.y = data[1];
    camera->offset.x = data[2];
    printf("%f %f %f",data[0], data[1], data[2]);
}

#endif