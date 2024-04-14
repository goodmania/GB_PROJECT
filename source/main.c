#include "Character.h"
#include "SplashScreenSprite.h"
#include "BirdSprite.h"

// prototype
void showTitle(void);
void SetupBackGround(void);

// grobal variable
Character player;
uint8_t frameCount = 0;
int8_t lastMovementX = 0;
int8_t lastMovementY = 0;
int8_t slowingX = 0;
#define PLAYER_ANIMATION_FRAMES 8

void showTitle(void)
{
    // Load tileset into GB memory
    set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);

    // Fill screen with map
    set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);

    // show background
    SHOW_BKG;
    DISPLAY_ON;
}

void SetupBackGround()
{

}

void MovementPhysics(Character *character, uint8_t slowDownFrames)
{
     // Calculate if in air
     uint8_t inAir = 0;
     inAir = character->y < 112;

     // Reset frame every time we start and stop moving...
     if (
          // Stopped
          (lastMovementX != 0 && character->movementForceX == 0) ||
          // Or started
          (lastMovementX == 0 && character->movementForceX != 0))
          {
               // Reset frame count
               frameCount = 0;
          }

     // Flag true when we release from movement...
     if (lastMovementX != 0 && character->movementForceX == 0)
          slowingX = lastMovementX > 0 ? 1 : -1;

     // While moving...
     if (character->movementForceX != 0)
     {
          // Compare movement to animation frames...
          if (frameCount == 2 || frameCount == 6)
          {
               // Don't move during this frame
               character->velocityX = 0;
          }
          else
          {
               // Move character by movement force
               character->velocityX = character->movementForceX;
          }

          // Increment frame count
          frameCount++;
          
          // Roll around after max frame
          if (frameCount == PLAYER_ANIMATION_FRAMES)
          {
               frameCount = 0;
          }
     }
     // When no longer moving
     else
     {
          if (slowingX && frameCount < slowDownFrames)
          {
               frameCount++;

               // Allow character to move one frame before stopping
               if (frameCount == slowDownFrames - 1)
               {
                    character->velocityX = 0;
                    slowingX = 0;
               }
               else
                    // Continue to move in the direction we were
                    character->velocityX = slowingX;
          }
     }
     
     // Calculate future position
     uint8_t predictedX = character->x + character->velocityX;

     // Move character to new position
     MoveCharacter(character, predictedX, character->y);

     // Which way were we moving
     lastMovementX = character->movementForceX;
     lastMovementY = character->movementForceY;
}

void main(void)
{
    SetupBackGround();

    set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);

    SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);

    MoveCharacter(&player, 8, 56);

    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;

    while(1)
    {
        MoveCharacterWithJoypad(&player);
        MovementPhysics(&player, 3);
        wait_vbl_done();
    }
}