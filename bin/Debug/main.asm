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
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _showTitle
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	G$showTitle$0$0	= .
	.globl	G$showTitle$0$0
	C$main.c$7$0_0$131	= .
	.globl	C$main.c$7$0_0$131
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:7: void showTitle(void)
;	---------------------------------
; Function showTitle
; ---------------------------------
_showTitle::
	C$main.c$10$1_0$131	= .
	.globl	C$main.c$10$1_0$131
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:10: set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);
	ld	de, #_SplashScreenSprite_tileset
	push	de
	ld	hl, #0xc800
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$13$1_0$131	= .
	.globl	C$main.c$13$1_0$131
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:13: set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);
	ld	de, #_SplashScreenSprite_tilemap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$16$1_0$131	= .
	.globl	C$main.c$16$1_0$131
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:16: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$17$1_0$131	= .
	.globl	C$main.c$17$1_0$131
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:17: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$18$1_0$131	= .
	.globl	C$main.c$18$1_0$131
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:18: }
	C$main.c$18$1_0$131	= .
	.globl	C$main.c$18$1_0$131
	XG$showTitle$0$0	= .
	.globl	XG$showTitle$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$20$1_0$133	= .
	.globl	C$main.c$20$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:20: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$22$1_0$133	= .
	.globl	C$main.c$22$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:22: set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);
	ld	de, #_BirdSprite_tileset
	push	de
	ld	hl, #0x2600
	push	hl
	call	_set_sprite_data
	add	sp, #4
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:23: for(uint8_t i = 0; i < 16; i++)
	ld	c, #0x00
00125$:
	ld	a, c
	sub	a, #0x10
	jr	NC, 00101$
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:25: set_sprite_tile(i, BirdSprite_tilemap[i]);
	ld	hl, #_BirdSprite_tilemap
	ld	b, #0x00
	add	hl, bc
	ld	b, (hl)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	de, #_shadow_OAM+0
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ld	a, b
	ld	(de), a
	C$main.c$23$2_0$134	= .
	.globl	C$main.c$23$2_0$134
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:23: for(uint8_t i = 0; i < 16; i++)
	inc	c
	jr	00125$
00101$:
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x10
	ld	(hl+), a
	ld	(hl), #0x08
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x10
	ld	(hl+), a
	ld	(hl), #0x10
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 16)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x18
	ld	(hl+), a
	ld	(hl), #0x08
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 20)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x18
	ld	(hl+), a
	ld	(hl), #0x10
	C$main.c$33$1_0$133	= .
	.globl	C$main.c$33$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:33: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$34$1_0$133	= .
	.globl	C$main.c$34$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:34: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$35$1_0$133	= .
	.globl	C$main.c$35$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:35: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$37$1_0$133	= .
	.globl	C$main.c$37$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:37: while(1)
00113$:
	C$main.c$39$2_0$136	= .
	.globl	C$main.c$39$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:39: uint8_t buttons = joypad();
	call	_joypad
	C$main.c$40$2_0$136	= .
	.globl	C$main.c$40$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:40: uint8_t moveX = 0;
	C$main.c$41$2_0$136	= .
	.globl	C$main.c$41$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:41: uint8_t moveY = 0;
	ld	c, #0x00
	ld	e, c
	C$main.c$43$2_0$136	= .
	.globl	C$main.c$43$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:43: if(buttons & J_LEFT)
	bit	1, a
	jr	Z, 00105$
	C$main.c$45$3_0$137	= .
	.globl	C$main.c$45$3_0$137
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:45: moveX = -1;
	ld	c, #0xff
	jr	00106$
00105$:
	C$main.c$47$2_0$136	= .
	.globl	C$main.c$47$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:47: else if(buttons & J_RIGHT)
	bit	0, a
	jr	Z, 00106$
	C$main.c$49$3_0$138	= .
	.globl	C$main.c$49$3_0$138
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:49: moveX = 1;
	ld	c, #0x01
00106$:
	C$main.c$52$2_0$136	= .
	.globl	C$main.c$52$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:52: if(buttons & J_UP)
	bit	2, a
	jr	Z, 00110$
	C$main.c$54$3_0$139	= .
	.globl	C$main.c$54$3_0$139
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:54: moveY = -1;
	ld	e, #0xff
	jr	00111$
00110$:
	C$main.c$56$2_0$136	= .
	.globl	C$main.c$56$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:56: else if(buttons & J_DOWN)
	bit	3, a
	jr	Z, 00111$
	C$main.c$58$3_0$140	= .
	.globl	C$main.c$58$3_0$140
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:58: moveY = 1;
	ld	e, #0x01
00111$:
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	add	a, e
	ld	(hl+), a
	ld	a, (hl)
	add	a, c
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	add	a, e
	ld	(hl+), a
	ld	a, (hl)
	add	a, c
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 16)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	add	a, e
	ld	(hl+), a
	ld	a, (hl)
	add	a, c
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 20)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	add	a, e
	ld	(hl+), a
	ld	a, (hl)
	add	a, c
	ld	(hl), a
	C$main.c$65$2_0$136	= .
	.globl	C$main.c$65$2_0$136
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:65: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$67$1_0$133	= .
	.globl	C$main.c$67$1_0$133
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:67: }
	C$main.c$67$1_0$133	= .
	.globl	C$main.c$67$1_0$133
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00113$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
