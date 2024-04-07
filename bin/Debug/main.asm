;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _keyInput
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _vsync
	.globl _joypad
	.globl _blinkFlag
	.globl _swordAction
	.globl _direction
	.globl _heroAction
	.globl _swordCnt
	.globl _blinkCnt
	.globl _actionCnt
	.globl _velocityY
	.globl _velocityX
	.globl _bkgY
	.globl _bkgX
	.globl _spriteY
	.globl _spriteX
	.globl _joypadPrevious
	.globl _initDangeonSprite
	.globl _initHeroSprite
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$joypadPrevious$0_0$0==.
_joypadPrevious::
	.ds 1
G$spriteX$0_0$0==.
_spriteX::
	.ds 1
G$spriteY$0_0$0==.
_spriteY::
	.ds 1
G$bkgX$0_0$0==.
_bkgX::
	.ds 1
G$bkgY$0_0$0==.
_bkgY::
	.ds 1
G$velocityX$0_0$0==.
_velocityX::
	.ds 1
G$velocityY$0_0$0==.
_velocityY::
	.ds 1
G$actionCnt$0_0$0==.
_actionCnt::
	.ds 1
G$blinkCnt$0_0$0==.
_blinkCnt::
	.ds 1
G$swordCnt$0_0$0==.
_swordCnt::
	.ds 1
G$heroAction$0_0$0==.
_heroAction::
	.ds 1
G$direction$0_0$0==.
_direction::
	.ds 1
G$swordAction$0_0$0==.
_swordAction::
	.ds 1
G$blinkFlag$0_0$0==.
_blinkFlag::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$keyInput$0$0	= .
	.globl	G$keyInput$0$0
	C$main.c$31$0_0$133	= .
	.globl	C$main.c$31$0_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:31: void keyInput(void)
;	---------------------------------
; Function keyInput
; ---------------------------------
_keyInput::
	C$main.c$33$1_0$133	= .
	.globl	C$main.c$33$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:33: switch (joypad())
	call	_joypad
	cp	a, #0x01
	jr	Z, 00102$
	cp	a, #0x02
	jr	Z, 00101$
	cp	a, #0x04
	jr	Z, 00103$
	sub	a, #0x08
	jr	Z, 00104$
	ret
	C$main.c$35$2_0$134	= .
	.globl	C$main.c$35$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:35: case J_LEFT:
00101$:
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	dec	a
	ld	(bc), a
	C$main.c$37$2_0$134	= .
	.globl	C$main.c$37$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:37: break;
	ret
	C$main.c$38$2_0$134	= .
	.globl	C$main.c$38$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:38: case J_RIGHT:
00102$:
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	inc	a
	ld	(bc), a
	C$main.c$40$2_0$134	= .
	.globl	C$main.c$40$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:40: break;
	ret
	C$main.c$41$2_0$134	= .
	.globl	C$main.c$41$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:41: case J_UP:
00103$:
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	dec	a
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
	C$main.c$43$2_0$134	= .
	.globl	C$main.c$43$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:43: break;
	ret
	C$main.c$44$2_0$134	= .
	.globl	C$main.c$44$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:44: case J_DOWN:
00104$:
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	inc	a
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
	C$main.c$47$1_0$133	= .
	.globl	C$main.c$47$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:47: }
	C$main.c$48$1_0$133	= .
	.globl	C$main.c$48$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:48: }
	C$main.c$48$1_0$133	= .
	.globl	C$main.c$48$1_0$133
	XG$keyInput$0$0	= .
	.globl	XG$keyInput$0$0
	ret
	G$initDangeonSprite$0$0	= .
	.globl	G$initDangeonSprite$0$0
	C$main.c$50$1_0$148	= .
	.globl	C$main.c$50$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:50: void initDangeonSprite(void)
;	---------------------------------
; Function initDangeonSprite
; ---------------------------------
_initDangeonSprite::
	C$main.c$52$1_0$148	= .
	.globl	C$main.c$52$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:52: HIDE_BKG;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfe
	ldh	(_LCDC_REG + 0), a
	C$main.c$53$1_0$148	= .
	.globl	C$main.c$53$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:53: set_bkg_data(0, 52, doukutsuTile);
	ld	de, #_doukutsuTile
	push	de
	ld	hl, #0x3400
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$54$1_0$148	= .
	.globl	C$main.c$54$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:54: set_bkg_tiles(0,0,32,32,doukutsu);
	ld	de, #_doukutsu
	push	de
	ld	hl, #0x2020
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$55$1_0$148	= .
	.globl	C$main.c$55$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:55: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$56$1_0$148	= .
	.globl	C$main.c$56$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:56: }
	C$main.c$56$1_0$148	= .
	.globl	C$main.c$56$1_0$148
	XG$initDangeonSprite$0$0	= .
	.globl	XG$initDangeonSprite$0$0
	ret
	G$initHeroSprite$0$0	= .
	.globl	G$initHeroSprite$0$0
	C$main.c$58$1_0$150	= .
	.globl	C$main.c$58$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:58: void initHeroSprite(void)
;	---------------------------------
; Function initHeroSprite
; ---------------------------------
_initHeroSprite::
	C$main.c$61$1_0$150	= .
	.globl	C$main.c$61$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:61: set_sprite_data(4,4,HeroDownTile);
	ld	de, #_HeroDownTile
	push	de
	ld	hl, #0x404
	push	hl
	call	_set_sprite_data
	add	sp, #4
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 10)
	ld	(hl), #0x04
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 11)
	ld	(hl), #0x00
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 14)
	ld	(hl), #0x06
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 15)
	ld	(hl), #0x00
	C$main.c$66$1_0$150	= .
	.globl	C$main.c$66$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:66: spriteX=80;
	ld	hl, #_spriteX
	ld	(hl), #0x50
	C$main.c$67$1_0$150	= .
	.globl	C$main.c$67$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:67: spriteY=72;
	ld	hl, #_spriteY
	ld	(hl), #0x48
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 8)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x48
	ld	(hl+), a
	ld	(hl), #0x50
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:69: move_sprite(3, spriteX + 8, spriteY);
	ld	hl, #_spriteY
	ld	b, (hl)
	ld	a, (#_spriteX)
	add	a, #0x08
	ld	c, a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 12)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$main.c$70$1_0$150	= .
	.globl	C$main.c$70$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:70: velocityX=0;
	ld	hl, #_velocityX
	ld	(hl), #0x00
	C$main.c$71$1_0$150	= .
	.globl	C$main.c$71$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:71: velocityY=0;
	ld	hl, #_velocityY
	ld	(hl), #0x00
	C$main.c$72$1_0$150	= .
	.globl	C$main.c$72$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:72: actionCnt=0;
	ld	hl, #_actionCnt
	ld	(hl), #0x00
	C$main.c$73$1_0$150	= .
	.globl	C$main.c$73$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:73: heroAction=NOACTION;
	ld	hl, #_heroAction
	ld	(hl), #0x00
	C$main.c$74$1_0$150	= .
	.globl	C$main.c$74$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:74: bkgX = 0;
	ld	hl, #_bkgX
	ld	(hl), #0x00
	C$main.c$75$1_0$150	= .
	.globl	C$main.c$75$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:75: bkgY = 0;
	ld	hl, #_bkgY
	ld	(hl), #0x00
	C$main.c$76$1_0$150	= .
	.globl	C$main.c$76$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:76: blinkFlag = FALSE;
	ld	hl, #_blinkFlag
	ld	(hl), #0x00
	C$main.c$77$1_0$150	= .
	.globl	C$main.c$77$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:77: blinkCnt = 0;
	ld	hl, #_blinkCnt
	ld	(hl), #0x00
	C$main.c$78$1_0$150	= .
	.globl	C$main.c$78$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:78: swordAction = NOACTION;
	ld	hl, #_swordAction
	ld	(hl), #0x00
	C$main.c$79$1_0$150	= .
	.globl	C$main.c$79$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:79: swordCnt = 0;
	ld	hl, #_swordCnt
	ld	(hl), #0x00
	C$main.c$80$1_0$150	= .
	.globl	C$main.c$80$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:80: direction = DOWN;   
	ld	hl, #_direction
	ld	(hl), #0x02
	C$main.c$81$1_0$150	= .
	.globl	C$main.c$81$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:81: }
	C$main.c$81$1_0$150	= .
	.globl	C$main.c$81$1_0$150
	XG$initHeroSprite$0$0	= .
	.globl	XG$initHeroSprite$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$83$1_0$170	= .
	.globl	C$main.c$83$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:83: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$85$1_0$170	= .
	.globl	C$main.c$85$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:85: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$86$1_0$170	= .
	.globl	C$main.c$86$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:86: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
	C$main.c$88$1_0$170	= .
	.globl	C$main.c$88$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:88: initDangeonSprite();
	call	_initDangeonSprite
	C$main.c$89$1_0$170	= .
	.globl	C$main.c$89$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:89: initHeroSprite();
	call	_initHeroSprite
	C$main.c$91$1_0$170	= .
	.globl	C$main.c$91$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:91: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$92$1_0$170	= .
	.globl	C$main.c$92$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:92: while(1){
00102$:
	C$main.c$93$2_0$171	= .
	.globl	C$main.c$93$2_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:93: vsync();
	call	_vsync
	C$main.c$95$1_0$170	= .
	.globl	C$main.c$95$1_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:95: }
	C$main.c$95$1_0$170	= .
	.globl	C$main.c$95$1_0$170
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
