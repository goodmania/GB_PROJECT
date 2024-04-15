#include <rand.h>

#include "Character.h"
#include "SplashScreenSprite.h"
#include "BackGroundSprite.h"
#include "BirdSprite.h"
#include "BlockSprite.h"

#define BLOCK_SPRITE_OFFSET 4
#define MAX_BLOCK_COUNT 6
#define PLAYER_ANIMATION_FRAMES 8
#define GLOUND_LEVEL 130
#define MAX_HEIGHT_LEVEL 20

typedef struct Block
{
     int8_t x; // topleft
     int8_t y; // topleft
     uint8_t blockWidth;
     uint8_t blockHeight;
} Block;

// prototype
void ShowTitle(void);
void SetupBackGround(void);
void SetupBlock(Block* block);

// grobal variable
Character player;
Block block[MAX_BLOCK_COUNT];
uint8_t movementFrameCount = 0;
uint8_t animationFrameCount = 0;
uint8_t jumpFrameCount = 0;
int8_t lastMovementX = 0;
int8_t lastMovementY = 0;
int8_t slowingX = 0;

void ShowTitle(void)
{
    // Load tileset into GB memory
    set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);

    // Fill screen with map
    set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);

     SHOW_BKG;
     SHOW_SPRITES;
     DISPLAY_ON;
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
     return (playerX < objX + 8 && objX < playerX + 8) && (playerY < objY + 8 && objY < playerY + 8);
}

void SetupBlock(Block* block)
{
     const uint8_t blockOffset = 4;
     set_sprite_data(BirdSprite_tileset_size + 1, 4, blocksprite_tileset);

     for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
     {
          uint8_t baseSpriteId = i * blockOffset;
          set_sprite_tile(baseSpriteId + 4, 39); 
          set_sprite_tile(baseSpriteId + 5, 40); 
          set_sprite_tile(baseSpriteId + 6, 41); 
          set_sprite_tile(baseSpriteId + 7, 42);

          for (uint8_t iy = 0; iy != block->blockHeight; iy++)
          {
               for (uint8_t ix = 0; ix != block->blockWidth; ix++)
                    {
                    uint8_t index = baseSpriteId + iy + (ix * block->blockWidth);
                    move_sprite(index, block[i].x + (ix * 8), block[i].y + (iy * 8));       
               }
          }
     }
}

void ScrollBlock()
{
     for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
     {
          uint8_t baseSpriteId = i * BLOCK_SPRITE_OFFSET;
          block[i].x -= 1;
          for (uint8_t iy = 0; iy != block->blockHeight; iy++)
          {
               for (uint8_t ix = 0; ix != block->blockWidth; ix++)
               {
                    uint8_t index = baseSpriteId + iy + (ix * block->blockWidth);
                    scroll_sprite(index, -1, 0);
                    if(block[i].x <= -128)
                    {
                         block[i].x = 127;
                    }
               }
          }
     }
}

void main(void)
{
     // enable sound
     NR52_REG = 0x80; // 1000 0000 turns on sound
     NR50_REG = 0x77; // sets the volume for both left and right channel to max
     NR51_REG = 0xFF; // select which chanels using
     
     ShowTitle();
     delay(2000);

     // init randomvariable generator　
     initarand(__rand_seed);

     SetupBackGround();

     set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);

     SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);

     MoveCharacter(&player, 16, 56);

     // init block
     for(int8_t i = 0; i < MAX_BLOCK_COUNT; i++)
     {
          block[i].x = 60 * (i + 1);
          block[i].y = 20 * (i + 1);
          block[i].blockWidth = 2;
          block[i].blockHeight = 2;
     }

     SetupBlock(block);

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
          ScrollBlock();

          for(int8_t i = 0; i < MAX_BLOCK_COUNT; i++)
          {
               if(Hit(player.x, player.y, block[i].x, block[i].y))
               {
                    gameLoop= 0;
                    break;
               }
          }
          wait_vbl_done();
     }
     HIDE_SPRITES;
     move_bkg(0, 0);
     printf("GameOver");
}