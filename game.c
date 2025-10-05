#include "game.h"
#include <raylib.h>
#ifndef PLATFORM_WEB
#include <stdio.h>
#endif
// TODO add upward platforms, add dashes
static Rectangle platforms[] = {
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
        {13800,650,1000, 400},
        {15200,650,1000, 400},    
};
static u8 platformsCount = sizeof(platforms) / sizeof(Rectangle);
static Player player = {0};
static Texture2D terrain = {0};
static Texture2D bg = {0};
static Texture2D bg1 = {0};
static Texture2D bg2 = {0};
static Texture2D playerIcon = {0};
static Camera2D camera = {{0, 0}, {0, 1.0}, 0, 1.0};
static Vector2 mouse = {0};
static Animation idle = {0};
static Animation run = {0};
static Animation jump = {0};
static Animation fall = {0};
// Animation attack = {0};
static u8 numberOfFrames = 0;
static bool gameOver = false;
// f32 framDelay = 0;
static f32 frameDelayCounter = 0;
f32 saveDelay = 0;
static Rectangle healthBar ;
static Rectangle healthPoints ;
static Rectangle hitBox;
static Color hpColor ;
static u16  fullHp ;
static f32 hpConv ;
static Music mainSong = {0};
static u8 special_keys[4] = {0, 0, 0, 0};
static u16 speed = 500;

void GameInit(){
    #ifndef PLATFORM_WEB
        InitWindow(screenWidth, screenHeight, "my platformer game");
    #else
        InitWindow(screenWidth, screenHeight, "my platformer game in wasm");
    #endif
    InitAudioDevice();
    mainSong = LoadMusicStream("assets/sound/mainSong.mp3");
    PlayMusicStream(mainSong);
    player = createPlayer((Rectangle){0, 100, 64*2, 43*2}, (Vector2){64, 43},(Vector2){0 , 0});
    fullHp = player.healthPoints;
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
    healthBar = (Rectangle) {34, 10, 300, 30};
    healthPoints = (Rectangle) {healthBar.x, healthBar.y, 300, healthBar.height};
    hpColor = GREEN;
    hpConv = healthBar.width / player.healthPoints;
    loadSavedGame(&player, &camera);
    // resetting here for wasm sake no need to write the same thing in js
    for(u8 i = 0; i < platformsCount; i++){
        platforms[i].x += camera.offset.x;
    }
    SetTargetFPS(240);
    SetMasterVolume(0.05);
}

void GameFrame(){
    mouse = GetMousePosition();
    UpdateMusicStream(mainSong);
    f32 dt = GetFrameTime();
    player.velocity.x = speed * dt;
    player.playerRect.y += player.velocity.y * dt;
    player.currentTexture = idle.rightAnimationTexture;
    healthPoints.width = player.healthPoints * hpConv;
    // printf("%f\n", healthPoints.width);
    #ifdef PLATFORM_WEB
        saveDelay += dt;
        if(saveDelay >= 1.0f){
            saveGame(player,  camera);
            saveDelay = 0;
        }
    #endif
    hitBox = player.orientation == RIGHT ? 
        (Rectangle){player.playerRect.x + (player.playerRect.width / 4) +15 , player.playerRect.y + player.playerRect.height - 10, 26, 10} 
        :(Rectangle){player.playerRect.x + (player.playerRect.width / 2) - 10, player.playerRect.y + player.playerRect.height - 10, 26, 10} ;

    if(player.frameIndex >= numberOfFrames){
        // player.frameIndex %= numberOfFrames;
        player.frameIndex = 0;
        frameDelayCounter = 0;
    }
    frameDelayCounter += 12 * dt;
    player.frameIndex = frameDelayCounter;
    numberOfFrames = idle.numOfFrames;
    player.currentTexture = player.orientation == RIGHT ?  idle.rightAnimationTexture : idle.leftAnimationTexture;
    
    if (numberOfFrames > idle.numOfFrames){
        player.frameIndex = 0;
    }

    if(player.playerRect.y > 900){
        player.playerRect.y = 100;
        takeDamage(&player.healthPoints, 400);
        player.playerRect.x = 0;
        resetGame();
    }

    player.onGround = false;

    for(u16 i = 0; i <  platformsCount; i++){
        // chek if one of two points (left foot of the sprite, right foot of the sprite) is touching a platform
        if(CheckCollisionRecs(hitBox, platforms[i]) && hitBox.y - hitBox.height <= platforms[i].y){
            player.velocity.y = 0;
            player.playerRect.y = platforms[i].y - player.playerRect.height;
            player.onGround = true;
            break;
        }
    }
    if(IsKeyDown(KEY_D) || IsKeyDown(KEY_RIGHT)){
        if(player.playerRect.x >= screenWidth / 2){
            camera.offset.x -= player.velocity.x;
            player.orientation = RIGHT;
            for(u16 i = 0; i <  platformsCount; i++){
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
            for(u16 i = 0; i <  platformsCount; i++){
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
    if (special_keys[0] && special_keys[1] && special_keys[2]) {
        player.velocity.y = 0.0;
        // printf("Activated: %f \n",player.velocity.y);
        speed  = 2800;
    }
    if(IsKeyPressed(KEY_LEFT_ALT)){
        // printf("pressed %d %d %d\n",special_keys[0], special_keys[1], special_keys[3]);
        special_keys[special_keys[3]] = 1;
        if(special_keys[3] < 3)
            special_keys[3] ++;
    }
    if(IsKeyPressed(KEY_LEFT_CONTROL)){
        for(u8 i = 0; i < 4; i++){
            special_keys[i] = 0;
        }
        speed = 500;
    }
    if(player.onGround){
        if(IsKeyDown(KEY_W) || IsKeyDown(KEY_UP) || IsKeyDown(KEY_SPACE)){
            player.velocity.y -= 410;
            player.onGround = false;
        }
    }
    if(!player.onGround){
        numberOfFrames = jump.numOfFrames;
        // player.frameIndex = 0;
        player.currentTexture = player.orientation == RIGHT ?  jump.rightAnimationTexture : jump.leftAnimationTexture;
    }
    if(!player.onGround && player.velocity.y > 0){
        numberOfFrames = fall.numOfFrames;
        // player.frameIndex = 0;
        player.currentTexture = player.orientation == RIGHT ?  fall.rightAnimationTexture : fall.leftAnimationTexture;
    }
    if(player.healthPoints <= 45 * fullHp / 100){ 
        hpColor = YELLOW;
    }
    if(player.healthPoints <= 30 * fullHp / 100){
        hpColor = RED;
    }
    if(player.healthPoints <= 0){
        gameOver = true;
    }
    BeginDrawing();
    if(gameOver){
        DrawPlatformsAndBG();
        DrawGameOver(WHITE);
    }else{
        DrawPlatformsAndBG();
        //DrawRectangle(player.playerRect.x, player.playerRect.y, player.playerRect.width, player.playerRect.height, BLUE);
        //DrawRectangle(hitBox.x, hitBox.y, hitBox.width, hitBox.height, BLACK);
        DrawTexturePro(player.currentTexture,(Rectangle) {player.spriteSize.x* player.frameIndex ,0, player.spriteSize.x, player.spriteSize.y}, player.playerRect,(Vector2){0, 0}, 0, WHITE);
        DrawText("Use A/D to move and W to jump", 20 + camera.offset.x, 200, 16, BLACK);
        DrawText("Or arrows to move and space to jump", 20 + camera.offset.x, 220, 16, BLACK);
    }
    DrawFPS(screenWidth - 90 , 0);
    EndDrawing();

}


#ifndef PLATFORM_WEB
int main(){
    GameInit();
    // Main game loop
    while (!WindowShouldClose())
    {   

        GameFrame();

    }
    // De-Initialization
    //--------------------------------------------------------------------------------------
    // saving the game stat
    saveGame(player, camera);
    UnloadMusicStream(mainSong);   // Unload music stream buffers from RAM
    UnloadTexture(terrain);  // Unload terrain texture
    UnloadTexture(idle.leftAnimationTexture);   // Unload animation texture
    UnloadTexture(idle.rightAnimationTexture);   // Unload animation texture
    UnloadTexture(run.rightAnimationTexture);   // Unload animation texture
    UnloadTexture(run.rightAnimationTexture);   // Unload animation texture
    UnloadTexture(jump.rightAnimationTexture);   // Unload animation texture
    UnloadTexture(jump.rightAnimationTexture);   // Unload animation texture
    UnloadTexture(fall.rightAnimationTexture);   // Unload animation texture
    UnloadTexture(fall.leftAnimationTexture);   // Unload animation texture
    UnloadTexture(bg);   // Unload bg texture
    UnloadTexture(bg1);   // Unload bg1 texture
    UnloadTexture(bg2);   // Unload bg2 texture
    CloseAudioDevice(); 
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


void DrawGameOver(Color color){
    //DrawRectangle(screenWidth/2 - (300 / 2), screenHeight/2 - 150, 300, 30, color); 
    //DrawRectangle(screenWidth/2 - (300 / 2), screenHeight/2, 300, 30, color); 
    Rectangle button = {screenWidth/2 - (100.0 / 2), screenHeight/2 + 150, 100, 30};
    DrawRectangleRec(button, color); 
    DrawText("Restart", button.x, button.y + 5, 16, BLACK);
    DrawText("Game Over!", screenWidth/2 - (100.0 / 2), screenHeight/2, 32, BLACK);
    if(CheckCollisionPointRec(mouse, button)){
        if(IsMouseButtonPressed(MOUSE_LEFT_BUTTON)){
            // DrawText("Anger Builds", screenWidth/2 , screenHeight/2, 16, BLACK);
            player.healthPoints = 1000;
            hpColor = GREEN;
            gameOver = false;
        }
    }
}
// function that creates/returns an animation
Animation createAnimation(Texture2D rightAnimationTexture, Texture2D leftAnimationTexture, u8 numOfFrames) {
  return (Animation){
      .rightAnimationTexture = rightAnimationTexture,
      .leftAnimationTexture = leftAnimationTexture,
      .numOfFrames = numOfFrames,
  };
}

// maybe unecessary function to take dmg (reduce hp)
void takeDamage(u32 *hp, u32 dmg){
    if(*hp > dmg){
      *hp -= dmg;
    }else if(*hp < dmg){
      *hp -= *hp;
    }
}

// reset the game
void resetGame() {
    for(u8 i = 0; i < platformsCount; i++){
        platforms[i].x -= camera.offset.x;
    }
    camera = (Camera2D){0};
}

// Draw Platforms And Backgrounds
void DrawPlatformsAndBG(){
    ClearBackground(WHITE);
    DrawTextureEx(bg2, (Vector2){camera.offset.x * 0.05, -30}, 0, 2.0, WHITE);
    DrawTextureEx(bg2, (Vector2){(camera.offset.x * 0.05)  + 1000, -30}, 0, 2.0, WHITE);
    DrawTextureEx(bg1, (Vector2){camera.offset.x * 0.15 - 600, -30}, 0, 2.0, WHITE);
    DrawTextureEx(bg, (Vector2){camera.offset.x * 0.25, -30}, 0, 2.0, WHITE);
    DrawRectangleRec(healthBar, RAYWHITE);
    DrawRectangleRec(healthPoints, hpColor);
    DrawRectangleLinesEx(healthBar, 3, GRAY);
    DrawTextureEx(playerIcon, (Vector2){0,0}, 0, 2.8, WHITE);        

    for(u16 i = 0; i < platformsCount; i++){
        DrawTexturePro(terrain, (Rectangle) {99, 0, 25, 65}, platforms[i],(Vector2){0, 0}, 0, WHITE);

    }
}

#ifndef PLATFORM_WEB
// save the player's position and the camera postion to a file as binary values
void saveGame(Player player, Camera2D camera){
    float data[] = {player.playerRect.x, player.playerRect.y, camera.offset.x};
    FILE * fptr = fopen("save.sav", "wb"); 
    if(fptr == NULL) return;
    fwrite(data, sizeof(float), sizeof(data)/sizeof(float), fptr);
    fwrite(&player.healthPoints, sizeof(u32), 1, fptr);
    fclose(fptr);
}

// load the save from the save.sav file
void loadSavedGame(Player* player, Camera2D* camera){
    float data[3];
    u32 hp;
    FILE * fptr = fopen("save.sav", "rb");
    if(fptr == NULL) return;
    fread(data, sizeof(float), 3, fptr);
    fread(&hp, sizeof(u32), 1, fptr);
    fclose(fptr);
    player->playerRect.x = data[0];
    player->playerRect.y = data[1];
    camera->offset.x = data[2];
    player->healthPoints = hp;
    printf("%f %f %f %d php: %d",data[0], data[1], data[2], hp, player->healthPoints);
}

#endif