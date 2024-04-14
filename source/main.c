#include <gb/gb.h>
#include <stdio.h>
#include "SplashScreenSprite.h"
#include "BirdSprite.h"

void showTitle(void);
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

void main(void)
{
    set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);
    for(uint8_t i = 0; i < 16; i++)
    {
        set_sprite_tile(i, BirdSprite_tilemap[i]);
    }

    move_sprite(0, 8, 16);
    move_sprite(1, 16, 16);
    move_sprite(4, 8, 24);
    move_sprite(5, 16, 24);

    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;

    while(1)
    {
        uint8_t buttons = joypad();
        uint8_t moveX = 0;
        uint8_t moveY = 0;

        if(buttons & J_LEFT)
        {
            moveX = -1;
        }
        else if(buttons & J_RIGHT)
        {
            moveX = 1;
        }

        if(buttons & J_UP)
        {
            moveY = -1;
        }
        else if(buttons & J_DOWN)
        {
            moveY = 1;
        }

        scroll_sprite(0, moveX, moveY);
        scroll_sprite(1, moveX, moveY);
        scroll_sprite(4, moveX, moveY);
        scroll_sprite(5, moveX, moveY);
        wait_vbl_done();
    }
}