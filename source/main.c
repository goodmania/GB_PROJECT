#include <rand.h>

#include "Character.h"
#include "SplashScreenSprite.h"
#include "BackGroundSprite.h"
#include "BirdSprite.h"
#include "BlockSprite.h"

// prototype
void ShowTitle(void);
void SetupBackGround(void);
void SetupBlock(void);

// grobal variable
Character player;
uint8_t movementFrameCount = 0;
uint8_t animationFrameCount = 0;
uint8_t jumpFrameCount = 0;
int8_t lastMovementX = 0;
int8_t lastMovementY = 0;
int8_t slowingX = 0;

#define MAX_BLOCK_COUNT 4
#define PLAYER_ANIMATION_FRAMES 8
#define GLOUND_LEVEL 130
#define MAX_HEIGHT_LEVEL 20

void ShowTitle(void)
{
    // Load tileset into GB memory
    set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);

    // Fill screen with map
    set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);
}

void SetupBackGround()
{
     // Load tileset into GB memory
    set_bkg_data(0, BackGroundSprite_tileset_size, BackGroundSprite_tileset);

    // Fill screen with map
    set_bkg_tiles(0, 0, 40, 18, BackGroundSprite_tilemap);
}

void DetectCollisions(Character *character, uint8_t *predictedX, uint8_t *predictedY)
{
     // If we hit ground...
     if (*predictedY >= GLOUND_LEVEL)
     {
          // Snap to ground
          *predictedY = GLOUND_LEVEL; 

          // Remove velocity
          character->velocityY = 0;
     }else if(*predictedY < MAX_HEIGHT_LEVEL)
     {
          // Snap to ground
          *predictedY = MAX_HEIGHT_LEVEL; 

          // Remove velocity
          character->velocityY = 0;
     }
}

void MovementPhysics(Character *character, uint8_t slowDownFrames)
{
     // While jumping...
     if (character->movementForceY != 0)
     {
          character->velocityY += character->movementForceY;
          jumpFrameCount = 0;
     }

     // Otherwise, if in the air...
     else if (character->underfootState & FOOT_IN_AIR)
     {
          // Jump frame count from 0 to 60
          jumpFrameCount = (jumpFrameCount + 1) % 120;

          // Apply gravity
          if (jumpFrameCount < 3)
               character->velocityY = -2;
          else if (jumpFrameCount < 10)
               character->velocityY = -1;
          else if (jumpFrameCount < 14)
               character->velocityY = 0;
          else if (jumpFrameCount < 20)
               character->velocityY = 1;
          else
               character->velocityY = 2;
     }

     // Velocity limits
     if (character->velocityY != 0 && character->velocityY < -3)
          character->velocityY = -3;
     if (character->velocityY != 0 && character->velocityY > 3)
          character->velocityY = 3;
     
     // Calculate future position
     uint8_t predictedY = character->y + character->velocityY;

     // Update predictions based on collision
     DetectCollisions(character, &character->x, &predictedY);

     // Move character to new position
     MoveCharacter(character, character->x, predictedY);

     // Which way were we moving
     lastMovementY = character->movementForceY;
}

BOOLEAN Hit(uint8_t playerX, uint8_t playerY, uint8_t objX, uint8_t objY)
{
     return (playerX < objX + 8 && objX < playerX + 8) && (playerY < objY + 8 && objY < playerY + 8) ;
}

void SetupBlock()
{
     const uint8_t blockOffset = 4;
     set_sprite_data(BirdSprite_tileset_size + 1, 4, blocksprite_tileset);

     for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
     {
          set_sprite_tile(i * blockOffset + 4, 39); 
          set_sprite_tile(i * blockOffset + 5, 40); 
          set_sprite_tile(i * blockOffset + 6, 41); 
          set_sprite_tile(i * blockOffset + 7, 42); 

          move_sprite(i * blockOffset + 4, 30, 30);
          move_sprite(i * blockOffset + 5, 30, 38);
          move_sprite(i * blockOffset + 6, 38, 30);
          move_sprite(i * blockOffset + 7, 38, 38);
     }
}

void main(void)
{
     // init randomvariable generator
     initarand(__rand_seed);

     SetupBackGround();

     set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);

     SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);

     MoveCharacter(&player, 16, 56);

     SetupBlock();

     SHOW_BKG;
     SHOW_SPRITES;
     DISPLAY_ON;
     
     BOOLEAN gameLoop = 1;

     while(gameLoop)
     {
          player.underfootState = player.y >= GLOUND_LEVEL ? FOOT_ON_LAND : FOOT_IN_AIR;
          MoveCharacterWithJoypad(&player);
          MovementPhysics(&player, 3);
          LoadNextSpriteFrame(&player);

          scroll_bkg(1, 0);

          if(Hit(player.x, player.y, 0, 0))
          {
               gameLoop= 0;
          }
          wait_vbl_done();
     }
     printf("GameOver");
}