#include <gb/gb.h>
#include <stdio.h>

#define FOOT_ON_LAND    0x01U
#define FOOT_IN_AIR     0x02U

// A structure for a character
typedef struct Character
{
    // The starting ID of the sprite for this character
    // Remaining sprites should follow in sequency
    uint8_t spriteId;

    // The number of tiles wide this sprite is
    uint8_t spriteTileWidth;

    // The number of tiles high this sprite is
    uint8_t spriteTileHeight;
    
    // The total number of animated frames
    uint8_t spriteFrames;

    // The current frame the sprite is on
    uint8_t spriteCurrentFrame;
    
    // The start index where the tiles starts inside the set
    uint8_t tilesetStart;

    // The sprite X position (top left)
    uint8_t x;

    // The sprite Y position (top left)
    uint8_t y;

    // The current speed of travel in the X direction
    int8_t velocityX;

    // The current speed of travel in the Y direction
    int8_t velocityY;
    
    // Indicates if the sprite is flipped in the X axis
    uint8_t spriteFlippedX;
    
    // Indicates if the sprite is flipped in the Y axis
    uint8_t spriteFlippedY;

    // The movement force wanting to act upon the X direction
    int8_t movementForceX;

    // The movement force wanting to act upon the Y direction
    int8_t movementForceY;

    // Keep track of tile under character
    uint8_t underfootState;

    // Flag indicating if we have jumped
    uint8_t hasJumped;

    // Keep track of the jumped height
    uint8_t jumpedFrames;
    
    // A pointer to the tilemap
    const unsigned char *tilemap;

} Character;

void LoadSpriteFrame(Character* character, uint8_t frame)
{
    character->spriteCurrentFrame = frame;
    uint8_t spriteId = 0;
    uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;

    // Loop X and Y of sprite
    for (uint8_t y = 0; y != character->spriteTileHeight; y++)
    {
        for (uint8_t x = 0; x != character->spriteTileWidth; x++)
        {
            // Calculate indexes
            uint8_t ix = character->spriteFlippedX ? character->spriteTileWidth - 1 - x : x;
            uint8_t iy = character->spriteFlippedY ? character->spriteTileHeight - 1 - y : y;

            // Set sprite ID
            spriteId = character->spriteId + ix + (iy * character->spriteTileWidth);

            // Set sprite properties
            set_sprite_prop(spriteId, (character->spriteFlippedX ? S_FLIPX : 0) |  (character->spriteFlippedY ? S_FLIPY : 0));

            // Set sprite tile
            set_sprite_tile(spriteId, character->tilemap[x + (y * character->spriteTileWidth) + (frame * spriteCount)] + character->tilesetStart);
        }
    }

}

void RefreshSprite(Character *character)
{
    LoadSpriteFrame(character, character->spriteCurrentFrame);
}

void LoadNextSpriteFrame(Character *character)
{
    // Set next frame 
    character->spriteCurrentFrame = (character->spriteCurrentFrame + 1) % character->spriteFrames;

    RefreshSprite(character);
}

void SetSpriteFlip(Character *character, uint8_t flipX, uint8_t flipY)
{
    character->spriteFlippedX = flipX;
    character->spriteFlippedY = flipY;

    RefreshSprite(character);
}

void MoveCharacter(Character *character, uint8_t x, uint8_t y)
{
    // Set characters new position
    character->x = x;
    character->y = y;

    for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
    {
        for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
        {
            // Calculate sprite index
            uint8_t index = character->spriteId + ix + (iy * character->spriteTileWidth);

            // Move character to screen
            move_sprite(index, x + (ix * 8), y + (iy * 8));       
        }
    }
}

void ScrollCharacter(Character *character, int8_t x, int8_t y)
{
    character->x += x;
    character->y += y;

    MoveCharacter(character, character->x, character->y);
}

void MoveCharacterWithJoypad(Character *character)
{
    // Read buttons
    uint8_t buttons = joypad();

    int8_t moveX = 0;
    int8_t moveY = 0;

    if (buttons & J_LEFT)
    {
        moveX = -1;
    }
    else if (buttons & J_RIGHT)
    {
        moveX = 1;
    }

    if (buttons & J_UP)
    {
    }
    else if (buttons & J_DOWN)
    {
    }
    
    // Have we jumped?
    if ((buttons & J_A))
    {
        // sound Noise Reg 
        NR10_REG = 0x00;
        NR11_REG = 0x81;
        NR12_REG = 0x43;
        NR13_REG = 0x73;
        NR14_REG = 0x86;

        // Mark character as jumped
        character->hasJumped = 1;
        character->jumpedFrames = 0;
    }

    // If we have jumped and still have button pressed...
    if (character->hasJumped && (buttons & J_A))
    {
        // Apply upward velocity
        moveY = -1;

        // Keep track of jumped height
        character->jumpedFrames++;
    }

    // Set movement force
    character->movementForceX = moveX;
    character->movementForceY = moveY;
}


void SetupCharacter(Character* character, uint8_t spriteId, uint8_t tileWidth, uint8_t tileHeight, uint8_t tilesetStart, uint8_t totalFrames, const unsigned char* tilemap)
{
    character->tilemap = tilemap;
    character->spriteId = spriteId;
    character->spriteTileWidth = tileWidth;
    character->spriteTileHeight = tileHeight;
    character->tilesetStart = tilesetStart;
    character->spriteFrames = totalFrames;
    character->underfootState = 0;
    character->jumpedFrames = 0;
    character->hasJumped = 0;
    // Load first sprite frame
    LoadSpriteFrame(character, 0);
}