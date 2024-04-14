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
	.globl _MovementPhysics
	.globl _SetupCharacter
	.globl _MoveCharacterWithJoypad
	.globl _ScrollCharacter
	.globl _MoveCharacter
	.globl _LoadSpriteFrame
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _slowingX
	.globl _lastMovementY
	.globl _lastMovementX
	.globl _frameCount
	.globl _player
	.globl _showTitle
	.globl _SetupBackGround
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$player$0_0$0==.
_player::
	.ds 19
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$frameCount$0_0$0==.
_frameCount::
	.ds 1
G$lastMovementX$0_0$0==.
_lastMovementX::
	.ds 1
G$lastMovementY$0_0$0==.
_lastMovementY::
	.ds 1
G$slowingX$0_0$0==.
_slowingX::
	.ds 1
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
	G$LoadSpriteFrame$0$0	= .
	.globl	G$LoadSpriteFrame$0$0
	C$Character.h$64$0_0$130	= .
	.globl	C$Character.h$64$0_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:64: void LoadSpriteFrame(Character* character, uint8_t frame)
;	---------------------------------
; Function LoadSpriteFrame
; ---------------------------------
_LoadSpriteFrame::
	add	sp, #-23
	ldhl	sp,	#19
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$Character.h$66$1_0$130	= .
	.globl	C$Character.h$66$1_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:66: character->spriteCurrentFrame = frame;
	dec	hl
	ld	b, a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, b
	ld	(de), a
	C$Character.h$68$1_1$131	= .
	.globl	C$Character.h$68$1_1$131
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:68: uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ld	c, a
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	e, l
	ld	a, c
	C$Character.h$71$2_1$130	= .
	.globl	C$Character.h$71$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:71: for (uint8_t y = 0; y != character->spriteTileHeight; y++)
	call	__muluchar
	pop	af
	ld	b, a
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000a
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000b
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0011
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
	ld	e, c
	ld	a, b
	call	__muluchar
	ldhl	sp,	#10
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0005
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl), a
	ldhl	sp,	#21
	ld	(hl), #0x00
00109$:
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ldhl	sp,	#21
	ld	a, (hl)
	sub	a, b
	jp	Z,00111$
	C$Character.h$72$2_1$130	= .
	.globl	C$Character.h$72$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:72: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	ld	(hl), #0x00
00106$:
	C$Character.h$68$2_1$130	= .
	.globl	C$Character.h$68$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:68: uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#16
	ld	(hl), a
	C$Character.h$72$3_1$133	= .
	.globl	C$Character.h$72$3_1$133
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:72: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#16
	sub	a, (hl)
	jp	Z,00110$
	C$Character.h$75$2_1$130	= .
	.globl	C$Character.h$75$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:75: uint8_t ix = character->spriteFlippedX ? character->spriteTileWidth - 1 - x : x;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#17
	ld	(hl), a
	ld	a, (hl)
	or	a, a
	jr	Z, 00113$
	dec	hl
	ld	a, (hl)
	dec	a
	ldhl	sp,	#22
	ld	c, (hl)
	sub	a, c
	jr	00114$
00113$:
	ldhl	sp,	#22
	ld	a, (hl)
00114$:
	ld	c, a
	C$Character.h$76$2_1$130	= .
	.globl	C$Character.h$76$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: uint8_t iy = character->spriteFlippedY ? character->spriteTileHeight - 1 - y : y;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#18
	ld	(hl), a
	ld	a, (hl)
	or	a, a
	jr	Z, 00115$
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	dec	a
	ldhl	sp,	#21
	ld	b, (hl)
	sub	a, b
	jr	00116$
00115$:
	ldhl	sp,	#21
	ld	a, (hl)
00116$:
	ld	b, a
	C$Character.h$79$4_1$134	= .
	.globl	C$Character.h$79$4_1$134
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:79: spriteId = character->spriteId + ix + (iy * character->spriteTileWidth);
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	add	a, c
	ld	c, a
	push	bc
	ldhl	sp,	#18
	ld	e, (hl)
	ld	a, b
	call	__muluchar
	ld	a, c
	pop	bc
	add	a, c
	ldhl	sp,	#14
	ld	(hl), a
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:82: set_sprite_prop(spriteId, (character->spriteFlippedX ? S_FLIPX : 0) |  (character->spriteFlippedY ? S_FLIPY : 0));
	ldhl	sp,	#17
	ld	a, (hl)
	or	a, a
	jr	Z, 00117$
	dec	hl
	dec	hl
	ld	a, #0x20
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	jr	00118$
00117$:
	xor	a, a
	ldhl	sp,	#15
	ld	(hl+), a
	ld	(hl), a
00118$:
	ldhl	sp,	#18
	ld	a, (hl)
	or	a, a
	jr	Z, 00119$
	dec	hl
	ld	a, #0x40
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	jr	00120$
00119$:
	xor	a, a
	ldhl	sp,	#17
	ld	(hl+), a
	ld	(hl), a
00120$:
	ldhl	sp,	#15
	ld	a, (hl+)
	inc	hl
	ld	c, (hl)
	or	a, c
	ld	e, a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1850: shadow_OAM[nb].prop=prop;
	ldhl	sp,	#14
	ld	c, (hl)
	ld	b, #0x00
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#_shadow_OAM + 1
	add	hl,bc
	inc	hl
	inc	hl
	ld	(hl), e
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:85: set_sprite_tile(spriteId, character->tilemap[x + (y * character->spriteTileWidth) + (frame * spriteCount)] + character->tilesetStart);
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#15
	ld	(hl+), a
	inc	de
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	e, l
	ldhl	sp,	#23
	ld	a, (hl)
	call	__muluchar
	ld	e, c
	ld	d, b
	pop	bc
	ldhl	sp,	#17
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ldhl	sp,	#15
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,#12
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	af
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
	add	a, l
	ld	e, a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl,#_shadow_OAM + 1
	add	hl,bc
	inc	hl
	ld	(hl), e
	C$Character.h$72$3_1$133	= .
	.globl	C$Character.h$72$3_1$133
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:72: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	inc	(hl)
	jp	00106$
00110$:
	C$Character.h$71$2_1$132	= .
	.globl	C$Character.h$71$2_1$132
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:71: for (uint8_t y = 0; y != character->spriteTileHeight; y++)
	ldhl	sp,	#21
	inc	(hl)
	jp	00109$
00111$:
	C$Character.h$87$2_1$130	= .
	.globl	C$Character.h$87$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:87: }
	add	sp, #23
	C$Character.h$87$2_1$130	= .
	.globl	C$Character.h$87$2_1$130
	XG$LoadSpriteFrame$0$0	= .
	.globl	XG$LoadSpriteFrame$0$0
	ret
	G$MoveCharacter$0$0	= .
	.globl	G$MoveCharacter$0$0
	C$Character.h$89$2_1$142	= .
	.globl	C$Character.h$89$2_1$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:89: void MoveCharacter(Character *character, uint8_t x, uint8_t y)
;	---------------------------------
; Function MoveCharacter
; ---------------------------------
_MoveCharacter::
	add	sp, #-8
	ld	c, e
	ld	b, d
	ldhl	sp,	#5
	ld	(hl), a
	C$Character.h$92$1_0$142	= .
	.globl	C$Character.h$92$1_0$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:92: character->x = x;
	ld	hl, #0x0006
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(de), a
	C$Character.h$93$1_0$142	= .
	.globl	C$Character.h$93$1_0$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:93: character->y = y;
	ld	hl, #0x0007
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	C$Character.h$95$4_0$145	= .
	.globl	C$Character.h$95$4_0$145
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:95: for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
	ld	l, c
	ld	h, b
	inc	hl
	inc	sp
	inc	sp
	push	hl
	ld	hl, #0x0002
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#6
	ld	(hl), #0x00
00108$:
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	sub	a, (hl)
	jr	Z, 00110$
	C$Character.h$97$2_0$142	= .
	.globl	C$Character.h$97$2_0$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:97: for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
	ldhl	sp,	#7
	ld	(hl), #0x00
00105$:
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#4
	sub	a, (hl)
	jr	Z, 00109$
	C$Character.h$100$5_0$146	= .
	.globl	C$Character.h$100$5_0$146
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:100: uint8_t index = character->spriteId + ix + (iy * character->spriteTileWidth);
	ld	a, (bc)
	ldhl	sp,	#7
	add	a, (hl)
	ld	d, a
	push	bc
	push	de
	ldhl	sp,	#8
	ld	a, (hl+)
	inc	hl
	ld	e, a
	ld	a, (hl)
	call	__muluchar
	ld	a, c
	pop	de
	pop	bc
	add	a, d
	ld	e, a
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:103: move_sprite(index, x + (ix * 8), y + (iy * 8));       
	ldhl	sp,	#6
	ld	a, (hl)
	add	a, a
	add	a, a
	add	a, a
	ldhl	sp,	#10
	ld	d, (hl)
	add	a, d
	ld	d, a
	ldhl	sp,	#7
	ld	a, (hl-)
	dec	hl
	add	a, a
	add	a, a
	add	a, a
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	add	a, l
	ldhl	sp,	#4
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	pop	de
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, d
	ld	(hl+), a
	ld	e, l
	ld	d, h
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(de), a
	C$Character.h$97$4_0$145	= .
	.globl	C$Character.h$97$4_0$145
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:97: for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
	ldhl	sp,	#7
	inc	(hl)
	jr	00105$
00109$:
	C$Character.h$95$2_0$143	= .
	.globl	C$Character.h$95$2_0$143
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:95: for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
	ldhl	sp,	#6
	inc	(hl)
	jr	00108$
00110$:
	C$Character.h$106$2_0$142	= .
	.globl	C$Character.h$106$2_0$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:106: }
	add	sp, #8
	pop	hl
	inc	sp
	jp	(hl)
	G$ScrollCharacter$0$0	= .
	.globl	G$ScrollCharacter$0$0
	C$Character.h$108$2_0$151	= .
	.globl	C$Character.h$108$2_0$151
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:108: void ScrollCharacter(Character *character, int8_t x, int8_t y)
;	---------------------------------
; Function ScrollCharacter
; ---------------------------------
_ScrollCharacter::
	push	de
	ld	c, a
	C$Character.h$110$1_0$151	= .
	.globl	C$Character.h$110$1_0$151
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:110: character->x += x;
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	add	a, c
	ld	(de), a
	C$Character.h$111$1_0$151	= .
	.globl	C$Character.h$111$1_0$151
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:111: character->y += y;
	push	de
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	pop	de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#4
	add	a, (hl)
	C$Character.h$113$1_0$151	= .
	.globl	C$Character.h$113$1_0$151
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:113: MoveCharacter(character, character->x, character->y);
	ld	(bc), a
	ld	b, a
	ld	a, (de)
	ld	c, a
	push	bc
	inc	sp
	ld	a, c
	ldhl	sp,	#1
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	C$Character.h$114$1_0$151	= .
	.globl	C$Character.h$114$1_0$151
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:114: }
	call	_MoveCharacter
	pop	hl
	pop	hl
	inc	sp
	jp	(hl)
	G$MoveCharacterWithJoypad$0$0	= .
	.globl	G$MoveCharacterWithJoypad$0$0
	C$Character.h$116$1_0$153	= .
	.globl	C$Character.h$116$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:116: void MoveCharacterWithJoypad(Character *character)
;	---------------------------------
; Function MoveCharacterWithJoypad
; ---------------------------------
_MoveCharacterWithJoypad::
	push	de
	C$Character.h$119$1_0$153	= .
	.globl	C$Character.h$119$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:119: uint8_t buttons = joypad();
	call	_joypad
	C$Character.h$121$1_0$153	= .
	.globl	C$Character.h$121$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:121: int8_t moveX = 0;
	C$Character.h$122$1_0$153	= .
	.globl	C$Character.h$122$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:122: int8_t moveY = 0;
	ld	bc, #0x0
	C$Character.h$124$1_0$153	= .
	.globl	C$Character.h$124$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:124: if (buttons & J_LEFT)
	bit	1, a
	jr	Z, 00104$
	C$Character.h$126$2_0$154	= .
	.globl	C$Character.h$126$2_0$154
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:126: moveX = -1;
	ld	c, #0xff
	jr	00105$
00104$:
	C$Character.h$128$1_0$153	= .
	.globl	C$Character.h$128$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:128: else if (buttons & J_RIGHT)
	bit	0, a
	jr	Z, 00105$
	C$Character.h$130$2_0$155	= .
	.globl	C$Character.h$130$2_0$155
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:130: moveX = 1;
	ld	c, #0x01
00105$:
	C$Character.h$133$1_0$153	= .
	.globl	C$Character.h$133$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:133: if (buttons & J_UP)
	bit	2, a
	jr	Z, 00110$
	C$Character.h$135$2_0$156	= .
	.globl	C$Character.h$135$2_0$156
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:135: moveY = -1;
	ld	b, #0xff
	jr	00111$
00110$:
	C$Character.h$137$1_0$153	= .
	.globl	C$Character.h$137$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:137: else if (buttons & J_DOWN)
	bit	3, a
	jr	Z, 00111$
	C$Character.h$139$2_0$157	= .
	.globl	C$Character.h$139$2_0$157
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:139: moveY = 1;
	ld	b, #0x01
	C$Character.h$142$1_0$153	= .
	.globl	C$Character.h$142$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:142: else if (buttons & J_A)
00111$:
	C$Character.h$148$1_0$153	= .
	.globl	C$Character.h$148$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:148: character->movementForceX = moveX;
	pop	de
	push	de
	ld	hl, #0x000c
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, c
	ld	(de), a
	C$Character.h$149$1_0$153	= .
	.globl	C$Character.h$149$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:149: character->movementForceY = moveY;
	pop	de
	push	de
	ld	hl, #0x000d
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, b
	ld	(de), a
	C$Character.h$150$1_0$153	= .
	.globl	C$Character.h$150$1_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:150: }
	inc	sp
	inc	sp
	C$Character.h$150$1_0$153	= .
	.globl	C$Character.h$150$1_0$153
	XG$MoveCharacterWithJoypad$0$0	= .
	.globl	XG$MoveCharacterWithJoypad$0$0
	ret
	G$SetupCharacter$0$0	= .
	.globl	G$SetupCharacter$0$0
	C$Character.h$153$1_0$160	= .
	.globl	C$Character.h$153$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:153: void SetupCharacter(Character* character, uint8_t spriteId, uint8_t tileWidth, uint8_t tileHeight, uint8_t tilesetStart, uint8_t totalFrames, const unsigned char* tilemap)
;	---------------------------------
; Function SetupCharacter
; ---------------------------------
_SetupCharacter::
	dec	sp
	ldhl	sp,	#0
	ld	(hl), a
	C$Character.h$155$1_0$160	= .
	.globl	C$Character.h$155$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:155: character->tilemap = tilemap;
	ld	hl, #0x0011
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$156$1_0$160	= .
	.globl	C$Character.h$156$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:156: character->spriteId = spriteId;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$157$1_0$160	= .
	.globl	C$Character.h$157$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:157: character->spriteTileWidth = tileWidth;
	ld	c, e
	ld	b, d
	inc	bc
	ldhl	sp,	#3
	C$Character.h$158$1_0$160	= .
	.globl	C$Character.h$158$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:158: character->spriteTileHeight = tileHeight;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$159$1_0$160	= .
	.globl	C$Character.h$159$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:159: character->tilesetStart = tilesetStart;
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#5
	C$Character.h$160$1_0$160	= .
	.globl	C$Character.h$160$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:160: character->spriteFrames = totalFrames;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$162$1_0$160	= .
	.globl	C$Character.h$162$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:162: LoadSpriteFrame(character, 0);
	xor	a, a
	call	_LoadSpriteFrame
	C$Character.h$163$1_0$160	= .
	.globl	C$Character.h$163$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:163: }
	inc	sp
	pop	hl
	add	sp, #6
	jp	(hl)
	G$showTitle$0$0	= .
	.globl	G$showTitle$0$0
	C$main.c$17$1_0$164	= .
	.globl	C$main.c$17$1_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:17: void showTitle(void)
;	---------------------------------
; Function showTitle
; ---------------------------------
_showTitle::
	C$main.c$20$1_0$164	= .
	.globl	C$main.c$20$1_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:20: set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);
	ld	de, #_SplashScreenSprite_tileset
	push	de
	ld	hl, #0xc800
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$23$1_0$164	= .
	.globl	C$main.c$23$1_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:23: set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);
	ld	de, #_SplashScreenSprite_tilemap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$26$1_0$164	= .
	.globl	C$main.c$26$1_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:26: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$27$1_0$164	= .
	.globl	C$main.c$27$1_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:27: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$28$1_0$164	= .
	.globl	C$main.c$28$1_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:28: }
	C$main.c$28$1_0$164	= .
	.globl	C$main.c$28$1_0$164
	XG$showTitle$0$0	= .
	.globl	XG$showTitle$0$0
	ret
	G$SetupBackGround$0$0	= .
	.globl	G$SetupBackGround$0$0
	C$main.c$30$1_0$166	= .
	.globl	C$main.c$30$1_0$166
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:30: void SetupBackGround()
;	---------------------------------
; Function SetupBackGround
; ---------------------------------
_SetupBackGround::
	C$main.c$33$1_0$166	= .
	.globl	C$main.c$33$1_0$166
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:33: }
	C$main.c$33$1_0$166	= .
	.globl	C$main.c$33$1_0$166
	XG$SetupBackGround$0$0	= .
	.globl	XG$SetupBackGround$0$0
	ret
	G$MovementPhysics$0$0	= .
	.globl	G$MovementPhysics$0$0
	C$main.c$35$1_0$168	= .
	.globl	C$main.c$35$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:35: void MovementPhysics(Character *character, uint8_t slowDownFrames)
;	---------------------------------
; Function MovementPhysics
; ---------------------------------
_MovementPhysics::
	add	sp, #-4
	ldhl	sp,	#2
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$main.c$44$1_1$168	= .
	.globl	C$main.c$44$1_1$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:44: (lastMovementX != 0 && character->movementForceX == 0) ||
	dec	hl
	ld	c, a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ld	b, a
	ld	a, (#_lastMovementX)
	or	a, a
	jr	Z, 00105$
	ld	a, b
	or	a, a
	jr	Z, 00101$
00105$:
	C$main.c$46$1_0$168	= .
	.globl	C$main.c$46$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:46: (lastMovementX == 0 && character->movementForceX != 0))
	ld	a, (#_lastMovementX)
	or	a,a
	jr	NZ, 00102$
	or	a,b
	jr	Z, 00102$
00101$:
	C$main.c$49$2_0$169	= .
	.globl	C$main.c$49$2_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:49: frameCount = 0;
	ld	hl, #_frameCount
	ld	(hl), #0x00
00102$:
	C$main.c$53$1_0$168	= .
	.globl	C$main.c$53$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:53: if (lastMovementX != 0 && character->movementForceX == 0)
	ld	hl, #_lastMovementX
	ld	a, (hl)
	or	a, a
	jr	Z, 00107$
	pop	de
	push	de
	ld	a, (de)
	or	a, a
	jr	NZ, 00107$
	C$main.c$54$1_0$168	= .
	.globl	C$main.c$54$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:54: slowingX = lastMovementX > 0 ? 1 : -1;
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00205$
	bit	7, d
	jr	NZ, 00206$
	cp	a, a
	jr	00206$
00205$:
	bit	7, d
	jr	Z, 00206$
	scf
00206$:
	jr	NC, 00126$
	ld	de, #0x0001
	jr	00127$
00126$:
	ld	de, #0xffff
00127$:
	ld	hl, #_slowingX
	ld	(hl), e
00107$:
	C$main.c$57$1_0$168	= .
	.globl	C$main.c$57$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:57: if (character->movementForceX != 0)
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
	C$main.c$63$1_1$168	= .
	.globl	C$main.c$63$1_1$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:63: character->velocityX = 0;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	ld	e, l
	ld	d, h
	C$main.c$57$1_0$168	= .
	.globl	C$main.c$57$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:57: if (character->movementForceX != 0)
	ld	a, b
	or	a, a
	jr	Z, 00122$
	C$main.c$60$2_0$170	= .
	.globl	C$main.c$60$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:60: if (frameCount == 2 || frameCount == 6)
	ld	a,(#_frameCount)
	cp	a,#0x02
	jr	Z, 00109$
	sub	a, #0x06
	jr	NZ, 00110$
00109$:
	C$main.c$63$3_0$171	= .
	.globl	C$main.c$63$3_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:63: character->velocityX = 0;
	xor	a, a
	ld	(de), a
	jr	00111$
00110$:
	C$main.c$68$3_0$172	= .
	.globl	C$main.c$68$3_0$172
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:68: character->velocityX = character->movementForceX;
	ld	a, b
	ld	(de), a
00111$:
	C$main.c$72$2_0$170	= .
	.globl	C$main.c$72$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:72: frameCount++;
	ld	hl, #_frameCount
	inc	(hl)
	C$main.c$75$2_0$170	= .
	.globl	C$main.c$75$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:75: if (frameCount == PLAYER_ANIMATION_FRAMES)
	ld	a, (hl)
	sub	a, #0x08
	jr	NZ, 00123$
	C$main.c$77$3_0$173	= .
	.globl	C$main.c$77$3_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:77: frameCount = 0;
	ld	hl, #_frameCount
	ld	(hl), #0x00
	jr	00123$
00122$:
	C$main.c$83$2_0$174	= .
	.globl	C$main.c$83$2_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:83: if (slowingX && frameCount < slowDownFrames)
	ld	a, (#_slowingX)
	or	a, a
	jr	Z, 00123$
	ld	hl, #_frameCount
	ld	a, (hl)
	sub	a, c
	jr	NC, 00123$
	C$main.c$85$3_0$175	= .
	.globl	C$main.c$85$3_0$175
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:85: frameCount++;
	inc	(hl)
	C$main.c$88$3_0$175	= .
	.globl	C$main.c$88$3_0$175
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:88: if (frameCount == slowDownFrames - 1)
	ld	b, #0x00
	dec	bc
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, c
	jr	NZ, 00116$
	ld	a, h
	sub	a, b
	jr	NZ, 00116$
	C$main.c$90$4_0$176	= .
	.globl	C$main.c$90$4_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:90: character->velocityX = 0;
	xor	a, a
	ld	(de), a
	C$main.c$91$4_0$176	= .
	.globl	C$main.c$91$4_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:91: slowingX = 0;
	ld	hl, #_slowingX
	ld	(hl), #0x00
	jr	00123$
00116$:
	C$main.c$95$3_0$175	= .
	.globl	C$main.c$95$3_0$175
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:95: character->velocityX = slowingX;
	ld	a, (#_slowingX)
	ld	(de), a
00123$:
	C$main.c$100$1_1$177	= .
	.globl	C$main.c$100$1_1$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:100: uint8_t predictedX = character->x + character->velocityX;
	push	de
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	pop	de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	c, a
	ld	a, (de)
	add	a, c
	ld	c, a
	C$main.c$103$1_1$177	= .
	.globl	C$main.c$103$1_1$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:103: MoveCharacter(character, predictedX, character->y);
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	push	af
	inc	sp
	ld	a, c
	ldhl	sp,	#3
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_MoveCharacter
	C$main.c$106$1_1$177	= .
	.globl	C$main.c$106$1_1$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:106: lastMovementX = character->movementForceX;
	pop	de
	push	de
	ld	a, (de)
	ld	(#_lastMovementX),a
	C$main.c$107$1_1$177	= .
	.globl	C$main.c$107$1_1$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:107: lastMovementY = character->movementForceY;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000d
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	(#_lastMovementY),a
	C$main.c$108$1_1$168	= .
	.globl	C$main.c$108$1_1$168
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:108: }
	add	sp, #4
	C$main.c$108$1_1$168	= .
	.globl	C$main.c$108$1_1$168
	XG$MovementPhysics$0$0	= .
	.globl	XG$MovementPhysics$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$110$1_1$179	= .
	.globl	C$main.c$110$1_1$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:110: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$112$1_0$179	= .
	.globl	C$main.c$112$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:112: SetupBackGround();
	call	_SetupBackGround
	C$main.c$114$1_0$179	= .
	.globl	C$main.c$114$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:114: set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);
	ld	de, #_BirdSprite_tileset
	push	de
	ld	hl, #0x2600
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$116$1_0$179	= .
	.globl	C$main.c$116$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:116: SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);
	ld	de, #_BirdSprite_tilemap
	push	de
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	ld	h, a
	ld	l, #0x02
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	xor	a, a
	ld	de, #_player
	call	_SetupCharacter
	C$main.c$118$1_0$179	= .
	.globl	C$main.c$118$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:118: MoveCharacter(&player, 8, 56);
	ld	a, #0x38
	push	af
	inc	sp
	ld	a, #0x08
	ld	de, #_player
	call	_MoveCharacter
	C$main.c$120$1_0$179	= .
	.globl	C$main.c$120$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:120: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$121$1_0$179	= .
	.globl	C$main.c$121$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:121: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$122$1_0$179	= .
	.globl	C$main.c$122$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:122: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$124$1_0$179	= .
	.globl	C$main.c$124$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:124: while(1)
00102$:
	C$main.c$126$2_0$180	= .
	.globl	C$main.c$126$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:126: MoveCharacterWithJoypad(&player);
	ld	de, #_player
	call	_MoveCharacterWithJoypad
	C$main.c$127$2_0$180	= .
	.globl	C$main.c$127$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:127: MovementPhysics(&player, 3);
	ld	a, #0x03
	ld	de, #_player
	call	_MovementPhysics
	C$main.c$128$2_0$180	= .
	.globl	C$main.c$128$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:128: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$130$1_0$179	= .
	.globl	C$main.c$130$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:130: }
	C$main.c$130$1_0$179	= .
	.globl	C$main.c$130$1_0$179
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _INITIALIZER
Fmain$__xinit_frameCount$0_0$0 == .
__xinit__frameCount:
	.db #0x00	; 0
Fmain$__xinit_lastMovementX$0_0$0 == .
__xinit__lastMovementX:
	.db #0x00	;  0
Fmain$__xinit_lastMovementY$0_0$0 == .
__xinit__lastMovementY:
	.db #0x00	;  0
Fmain$__xinit_slowingX$0_0$0 == .
__xinit__slowingX:
	.db #0x00	;  0
	.area _CABS (ABS)
