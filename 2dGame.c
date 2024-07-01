// #include"include/raylib.h"
#include"raylib.h"
#include "2D.h"

int main(){
    // creation of a player
    Player player = createPlayer((Rectangle){0, 100, 120, 120}, (Vector2){64, 43},(Vector2){0 , 0});
    Enemy enemy = createPlayer((Rectangle){800, 100, 120, 120}, (Vector2){64, 43}, (Vector2){0 , 0});
    Rectangle spriteRect = player.playerRect;
    Rectangle healthBar = {34, 10, 300, 30};
    Rectangle healthPoints = {healthBar.x, healthBar.y, 300, healthBar.height};
    Color hpColor = GREEN;
    U16  fullHp = player.healthPoints;
    const f32 hpConv = healthBar.width / player.healthPoints;
    // initiat camera
    Camera2D camera = {{0, 0}, {0, 1.0}, 0, 1.0};
    // platforms
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
    };
    // player speed on the x axis 
    player.velocity.x = 12;
    InitWindow(screenWidth, screenHeight, "2D");
    // initiate audio device
    InitAudioDevice();
    // set fps
    SetTargetFPS(60);
    // creating animations
    Animation idle = createAnimation(LoadTexture("assets/idle/Warrior_Idle_sheet.png"), LoadTexture("assets/idle/Warrior_Idle_sheet_left.png"), 6);
    Animation run = createAnimation(LoadTexture( "assets/run/Warrior_Run_sheet.png"), LoadTexture( "assets/run/Warrior_Run_sheet_left.png"), 8);
    Animation jump = createAnimation(LoadTexture( "assets/Jump/Warrior_Jump_sheet.png"), LoadTexture( "assets/Jump/Warrior_Jump_sheet_left.png"), 3);
    Animation fall = createAnimation(LoadTexture( "assets/Jump/Warrior_fall_sheet.png"), LoadTexture( "assets/Jump/Warrior_fall_sheet_left.png"), 3);
    Animation attack = createAnimation(LoadTexture( "assets/Attack/Warrior_Attack_1-sheet.png"), LoadTexture( "assets/Attack/Warrior_Attack_1-sheet_left.png"), 12);
    player.currentTexture = idle.rightAnimationTexture;
    Texture2D EnemyCurrentTexture = idle.rightAnimationTexture;
    Texture2D terrain = LoadTexture("assets/terrain/Terrain-and-Props.png");
    Texture2D bg = LoadTexture("assets/bg/BG_1.png");
    Texture2D bg1 = LoadTexture("assets/bg/BG_2.png");
    Texture2D bg2 = LoadTexture("assets/bg/BG_3.png");
    Texture2D playerIcon = LoadTexture("assets/icons/Warrior_icont.png");
    Music mainSong = LoadMusicStream("assets/sound/mainSong.mp3");
    PlayMusicStream(mainSong);
    U8 framDelay = 5;
    U8 frameDelayCounter = 0;
    U8 numberOfFrames = 0;
    U8 platformsCount = sizeof(platforms) / sizeof(Rectangle);
    f32 gravity = 0.5; 
    bool onGround = false;
    SetMasterVolume(0.3);
    // game loop
    while (!WindowShouldClose())
    {   
        UpdateMusicStream(mainSong);
        onGround = false;
        player.velocity.y += gravity;
        player.playerRect.y += player.velocity.y;
        enemy.velocity.y += gravity;
        enemy.playerRect.y += enemy.velocity.y;
        healthPoints.width = player.healthPoints * hpConv; 
        // healthPoints.width = player.healthPoints;
        for(U16 i = 0; i <  platformsCount; i++){
            // chek if one of two points (left foot of the sprite, right foot of the sprite) is touching a platform
            if(CheckCollisionPointLine((Vector2){player.playerRect.x + 80, player.playerRect.y + player.playerRect.height}, (Vector2){platforms[i].x, platforms[i].y}, (Vector2){platforms[i].x+ platforms[i].width, platforms[i].y}, 11) || CheckCollisionPointLine((Vector2){player.playerRect.x + 40, player.playerRect.y + player.playerRect.height}, (Vector2){platforms[i].x, platforms[i].y}, (Vector2){platforms[i].x+ platforms[i].width, platforms[i].y}, 11)){
                onGround = true;
                player.velocity.y = 0;
                player.playerRect.y = platforms[i].y - spriteRect.height;
            }
            if(CheckCollisionPointLine((Vector2){enemy.playerRect.x + 80, enemy.playerRect.y + enemy.playerRect.height}, (Vector2){platforms[i].x, platforms[i].y}, (Vector2){platforms[i].x+ platforms[i].width, platforms[i].y}, 11) || CheckCollisionPointLine((Vector2){enemy.playerRect.x + 40, enemy.playerRect.y + enemy.playerRect.height}, (Vector2){platforms[i].x, platforms[i].y}, (Vector2){platforms[i].x+ platforms[i].width, platforms[i].y}, 11)){
                // onGround = true;
                enemy.velocity.y = 0;
                enemy.playerRect.y = platforms[i].y - spriteRect.height;
            }
        }
        // if player fell more than 900 of the screen to bring him back to the start
        if(player.playerRect.y > 900){
            player.playerRect.y = 100;
            getDamage(&player.healthPoints, 200);
            player.playerRect.x = 0;
            camera.offset.x = 0;
        } 
        // frame delay to slow the fast animation pace
        frameDelayCounter ++;
        if(framDelay == frameDelayCounter){
            frameDelayCounter = 0;
            player.frameIndex %= numberOfFrames;
            player.frameIndex ++;
            enemy.frameIndex %= idle.numOfFrames;
            enemy.frameIndex ++;
        }

        numberOfFrames = idle.numOfFrames;
        player.currentTexture = player.orientation == RIGHT ?  idle.rightAnimationTexture : idle.leftAnimationTexture;
        
        if(IsKeyDown(KEY_D)){
            if(player.playerRect.x >= screenWidth / 2){
                camera.offset.x -= player.velocity.x;
            }
            player.currentTexture =run.rightAnimationTexture;
            numberOfFrames = run.numOfFrames;
            player.playerRect.x += player.velocity.x;
            player.orientation = RIGHT;
        }else if(IsKeyDown(KEY_A)){
             if(player.playerRect.x >= screenWidth / 2){
                if(camera.offset.x < 0)
                    camera.offset.x += player.velocity.x;
            }
            player.currentTexture = run.leftAnimationTexture;
            numberOfFrames = run.numOfFrames;
            player.playerRect.x -= player.velocity.x;
            player.orientation = LEFT;
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
            player.currentTexture = player.orientation == RIGHT ?  jump.rightAnimationTexture : jump.leftAnimationTexture;
        }
        if(!onGround && player.velocity.y > 0){
            numberOfFrames = fall.numOfFrames;
            player.currentTexture = player.orientation == RIGHT ?  fall.rightAnimationTexture : fall.leftAnimationTexture;
        }
        if(player.healthPoints <= 45 * fullHp / 100){ 
            hpColor = YELLOW;
        }
        if(player.healthPoints <= 30 * fullHp / 100){
            hpColor = RED;
        }

        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawTextureEx(bg2, (Vector2){camera.offset.x * 0.3, -30}, 0, 2.0, WHITE);
        DrawTextureEx(bg1, (Vector2){camera.offset.x * 0.2, -30}, 0, 2.0, WHITE);
        DrawTextureEx(bg, (Vector2){camera.offset.x * 0.1, -30}, 0, 2.0, WHITE);
        DrawRectangleRec(healthBar, RAYWHITE);
        DrawRectangleRec(healthPoints, hpColor);
        DrawRectangleLinesEx(healthBar, 3, GRAY);
        DrawTextureEx(playerIcon, (Vector2){0,0}, 0, 2.8, WHITE);
        BeginMode2D(camera);
        for(U16 i = 0; i < platformsCount; i++){
            // DrawRectangleRec(platforms[i], BLUE);
            DrawTexturePro(terrain, (Rectangle) {99, 0, 25, 65}, platforms[i],(Vector2){0, 0}, 0, WHITE);
        }
        // DrawRectangleRec(player.playerRect, BLACK);
        // DrawRectangle(player.playerRect.x + 40, player.playerRect.y + player.playerRect.height, 2, 2, BLACK);
        // DrawRectangle(player.playerRect.x + 80, player.playerRect.y + player.playerRect.height, 2, 2, BLACK);
        DrawTexturePro(EnemyCurrentTexture,(Rectangle) {enemy.spriteSize.x* enemy.frameIndex , 0, enemy.spriteSize.x, enemy.spriteSize.y}, enemy.playerRect,(Vector2){0, 0}, 0, WHITE);
        // drawing player 
        DrawTexturePro(player.currentTexture,(Rectangle) {player.spriteSize.x* player.frameIndex ,0, player.spriteSize.x, player.spriteSize.y}, player.playerRect,(Vector2){0, 0}, 0, WHITE);
        // making the background white
        EndDrawing();
    }
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
    CloseWindow();
    return 0;
}