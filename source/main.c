#include <gb/gb.h>
#include <stdio.h>
#include "DangeonSprite.h"
#include "HeroSprite.h"

#define NOACTION 0
#define MOVEUP 1
#define MOVERIGHT 2
#define MOVEDOWN 3
#define MOVELEFT 4

#define NOACTION 0
#define SWORD 1

#define UP 0
#define RIGHT 1
#define DOWN 2
#define LEFT 3

uint8_t joypadPrevious;
uint8_t spriteX,spriteY,bkgX,bkgY;
uint8_t velocityX,velocityY;
uint8_t actionCnt, blinkCnt, swordCnt;
int8_t heroAction, direction, swordAction;
BOOLEAN blinkFlag;

void KeyInput(void);
void initDangeonSprite(void);
void initHeroSprite(void);

void keyInput(void)
{
    switch (joypad())
    {
    case J_LEFT:
        scroll_sprite(0, -1, 0);
        break;
    case J_RIGHT:
        scroll_sprite(0, 1, 0);
        break;
    case J_UP:
        scroll_sprite(0, 0, -1);
        break;
    case J_DOWN:
        scroll_sprite(0, 0, 1);
        break;
    }
}

void initDangeonSprite(void)
{
    HIDE_BKG;
    set_bkg_data(0, 52, doukutsuTile);
    set_bkg_tiles(0,0,32,32,doukutsu);
    SHOW_BKG;
}

void initHeroSprite(void)
{
        //主人公
    set_sprite_data(4,4,HeroDownTile);
    set_sprite_tile(2,4);
    set_sprite_prop(2,0x00);
    set_sprite_tile(3,6);
    set_sprite_prop(3,0x00);
    spriteX=80;
    spriteY=72;
    move_sprite(2, spriteX, spriteY);
    move_sprite(3, spriteX + 8, spriteY);
    velocityX=0;
    velocityY=0;
    actionCnt=0;
    heroAction=NOACTION;
    bkgX = 0;
    bkgY = 0;
    blinkFlag = FALSE;
    blinkCnt = 0;
    swordAction = NOACTION;
    swordCnt = 0;
    direction = DOWN;   
}

void main(void)
{
    DISPLAY_ON;
    SPRITES_8x16;

    initDangeonSprite();
    initHeroSprite();

    SHOW_SPRITES;
    while(1){
        vsync();
    }
}