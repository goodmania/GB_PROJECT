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
	.globl _DetectCollisions
	.globl _SetupCharacter
	.globl _MoveCharacterWithJoypad
	.globl _ScrollCharacter
	.globl _MoveCharacter
	.globl _SetSpriteFlip
	.globl _LoadNextSpriteFrame
	.globl _RefreshSprite
	.globl _LoadSpriteFrame
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _slowingX
	.globl _lastMovementY
	.globl _lastMovementX
	.globl _jumpFrameCount
	.globl _animationFrameCount
	.globl _movementFrameCount
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
G$movementFrameCount$0_0$0==.
_movementFrameCount::
	.ds 1
G$animationFrameCount$0_0$0==.
_animationFrameCount::
	.ds 1
G$jumpFrameCount$0_0$0==.
_jumpFrameCount::
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
	C$Character.h$68$0_0$130	= .
	.globl	C$Character.h$68$0_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:68: void LoadSpriteFrame(Character* character, uint8_t frame)
;	---------------------------------
; Function LoadSpriteFrame
; ---------------------------------
_LoadSpriteFrame::
	add	sp, #-23
	ldhl	sp,	#19
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$Character.h$70$1_0$130	= .
	.globl	C$Character.h$70$1_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:70: character->spriteCurrentFrame = frame;
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
	C$Character.h$72$1_1$131	= .
	.globl	C$Character.h$72$1_1$131
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:72: uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;
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
	C$Character.h$75$2_1$130	= .
	.globl	C$Character.h$75$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:75: for (uint8_t y = 0; y != character->spriteTileHeight; y++)
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
	C$Character.h$76$2_1$130	= .
	.globl	C$Character.h$76$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	ld	(hl), #0x00
00106$:
	C$Character.h$72$2_1$130	= .
	.globl	C$Character.h$72$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:72: uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#16
	ld	(hl), a
	C$Character.h$76$3_1$133	= .
	.globl	C$Character.h$76$3_1$133
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#16
	sub	a, (hl)
	jp	Z,00110$
	C$Character.h$79$2_1$130	= .
	.globl	C$Character.h$79$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:79: uint8_t ix = character->spriteFlippedX ? character->spriteTileWidth - 1 - x : x;
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
	C$Character.h$80$2_1$130	= .
	.globl	C$Character.h$80$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:80: uint8_t iy = character->spriteFlippedY ? character->spriteTileHeight - 1 - y : y;
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
	C$Character.h$83$4_1$134	= .
	.globl	C$Character.h$83$4_1$134
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:83: spriteId = character->spriteId + ix + (iy * character->spriteTileWidth);
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
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:86: set_sprite_prop(spriteId, (character->spriteFlippedX ? S_FLIPX : 0) |  (character->spriteFlippedY ? S_FLIPY : 0));
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
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:89: set_sprite_tile(spriteId, character->tilemap[x + (y * character->spriteTileWidth) + (frame * spriteCount)] + character->tilesetStart);
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
	C$Character.h$76$3_1$133	= .
	.globl	C$Character.h$76$3_1$133
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	inc	(hl)
	jp	00106$
00110$:
	C$Character.h$75$2_1$132	= .
	.globl	C$Character.h$75$2_1$132
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:75: for (uint8_t y = 0; y != character->spriteTileHeight; y++)
	ldhl	sp,	#21
	inc	(hl)
	jp	00109$
00111$:
	C$Character.h$91$2_1$130	= .
	.globl	C$Character.h$91$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:91: }
	add	sp, #23
	C$Character.h$91$2_1$130	= .
	.globl	C$Character.h$91$2_1$130
	XG$LoadSpriteFrame$0$0	= .
	.globl	XG$LoadSpriteFrame$0$0
	ret
	G$RefreshSprite$0$0	= .
	.globl	G$RefreshSprite$0$0
	C$Character.h$93$2_1$142	= .
	.globl	C$Character.h$93$2_1$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:93: void RefreshSprite(Character *character)
;	---------------------------------
; Function RefreshSprite
; ---------------------------------
_RefreshSprite::
	C$Character.h$95$1_0$142	= .
	.globl	C$Character.h$95$1_0$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:95: LoadSpriteFrame(character, character->spriteCurrentFrame);
	ld	hl, #0x0004
	add	hl, de
	ld	c, (hl)
	ld	a, c
	C$Character.h$96$1_0$142	= .
	.globl	C$Character.h$96$1_0$142
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:96: }
	C$Character.h$96$1_0$142	= .
	.globl	C$Character.h$96$1_0$142
	XG$RefreshSprite$0$0	= .
	.globl	XG$RefreshSprite$0$0
	jp	_LoadSpriteFrame
	G$LoadNextSpriteFrame$0$0	= .
	.globl	G$LoadNextSpriteFrame$0$0
	C$Character.h$98$1_0$144	= .
	.globl	C$Character.h$98$1_0$144
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:98: void LoadNextSpriteFrame(Character *character)
;	---------------------------------
; Function LoadNextSpriteFrame
; ---------------------------------
_LoadNextSpriteFrame::
	add	sp, #-4
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
	C$Character.h$101$1_0$144	= .
	.globl	C$Character.h$101$1_0$144
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:101: character->spriteCurrentFrame = (character->spriteCurrentFrame + 1) % character->spriteFrames;
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	inc	bc
	inc	sp
	inc	sp
	push	bc
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	push	de
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__modsint
	pop	de
	ld	a, c
	ld	(de), a
	C$Character.h$103$1_0$144	= .
	.globl	C$Character.h$103$1_0$144
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:103: RefreshSprite(character);
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_RefreshSprite
	C$Character.h$104$1_0$144	= .
	.globl	C$Character.h$104$1_0$144
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:104: }
	add	sp, #4
	C$Character.h$104$1_0$144	= .
	.globl	C$Character.h$104$1_0$144
	XG$LoadNextSpriteFrame$0$0	= .
	.globl	XG$LoadNextSpriteFrame$0$0
	ret
	G$SetSpriteFlip$0$0	= .
	.globl	G$SetSpriteFlip$0$0
	C$Character.h$106$1_0$146	= .
	.globl	C$Character.h$106$1_0$146
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:106: void SetSpriteFlip(Character *character, uint8_t flipX, uint8_t flipY)
;	---------------------------------
; Function SetSpriteFlip
; ---------------------------------
_SetSpriteFlip::
	ld	c, a
	C$Character.h$108$1_0$146	= .
	.globl	C$Character.h$108$1_0$146
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:108: character->spriteFlippedX = flipX;
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), c
	C$Character.h$109$1_0$146	= .
	.globl	C$Character.h$109$1_0$146
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:109: character->spriteFlippedY = flipY;
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$111$1_0$146	= .
	.globl	C$Character.h$111$1_0$146
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:111: RefreshSprite(character);
	call	_RefreshSprite
	C$Character.h$112$1_0$146	= .
	.globl	C$Character.h$112$1_0$146
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:112: }
	pop	hl
	inc	sp
	jp	(hl)
	G$MoveCharacter$0$0	= .
	.globl	G$MoveCharacter$0$0
	C$Character.h$114$1_0$148	= .
	.globl	C$Character.h$114$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:114: void MoveCharacter(Character *character, uint8_t x, uint8_t y)
;	---------------------------------
; Function MoveCharacter
; ---------------------------------
_MoveCharacter::
	add	sp, #-8
	ld	c, e
	ld	b, d
	ldhl	sp,	#5
	ld	(hl), a
	C$Character.h$117$1_0$148	= .
	.globl	C$Character.h$117$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:117: character->x = x;
	ld	hl, #0x0006
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(de), a
	C$Character.h$118$1_0$148	= .
	.globl	C$Character.h$118$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:118: character->y = y;
	ld	hl, #0x0007
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	C$Character.h$120$4_0$151	= .
	.globl	C$Character.h$120$4_0$151
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:120: for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
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
	C$Character.h$122$2_0$148	= .
	.globl	C$Character.h$122$2_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:122: for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
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
	C$Character.h$125$5_0$152	= .
	.globl	C$Character.h$125$5_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:125: uint8_t index = character->spriteId + ix + (iy * character->spriteTileWidth);
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
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:128: move_sprite(index, x + (ix * 8), y + (iy * 8));       
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
	C$Character.h$122$4_0$151	= .
	.globl	C$Character.h$122$4_0$151
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:122: for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
	ldhl	sp,	#7
	inc	(hl)
	jr	00105$
00109$:
	C$Character.h$120$2_0$149	= .
	.globl	C$Character.h$120$2_0$149
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:120: for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
	ldhl	sp,	#6
	inc	(hl)
	jr	00108$
00110$:
	C$Character.h$131$2_0$148	= .
	.globl	C$Character.h$131$2_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:131: }
	add	sp, #8
	pop	hl
	inc	sp
	jp	(hl)
	G$ScrollCharacter$0$0	= .
	.globl	G$ScrollCharacter$0$0
	C$Character.h$133$2_0$157	= .
	.globl	C$Character.h$133$2_0$157
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:133: void ScrollCharacter(Character *character, int8_t x, int8_t y)
;	---------------------------------
; Function ScrollCharacter
; ---------------------------------
_ScrollCharacter::
	push	de
	ld	c, a
	C$Character.h$135$1_0$157	= .
	.globl	C$Character.h$135$1_0$157
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:135: character->x += x;
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	add	a, c
	ld	(de), a
	C$Character.h$136$1_0$157	= .
	.globl	C$Character.h$136$1_0$157
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:136: character->y += y;
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
	C$Character.h$138$1_0$157	= .
	.globl	C$Character.h$138$1_0$157
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:138: MoveCharacter(character, character->x, character->y);
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
	C$Character.h$139$1_0$157	= .
	.globl	C$Character.h$139$1_0$157
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:139: }
	call	_MoveCharacter
	pop	hl
	pop	hl
	inc	sp
	jp	(hl)
	G$MoveCharacterWithJoypad$0$0	= .
	.globl	G$MoveCharacterWithJoypad$0$0
	C$Character.h$141$1_0$159	= .
	.globl	C$Character.h$141$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:141: void MoveCharacterWithJoypad(Character *character)
;	---------------------------------
; Function MoveCharacterWithJoypad
; ---------------------------------
_MoveCharacterWithJoypad::
	add	sp, #-8
	ld	c, e
	ld	b, d
	C$Character.h$144$1_0$159	= .
	.globl	C$Character.h$144$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:144: uint8_t buttons = joypad();
	call	_joypad
	ldhl	sp,	#7
	ld	(hl), a
	C$Character.h$146$1_0$159	= .
	.globl	C$Character.h$146$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:146: int8_t moveX = 0;
	ldhl	sp,	#0
	C$Character.h$147$1_0$159	= .
	.globl	C$Character.h$147$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:147: int8_t moveY = 0;
	xor	a, a
	ld	(hl+), a
	ld	(hl), a
	C$Character.h$149$1_0$159	= .
	.globl	C$Character.h$149$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:149: if (buttons & J_LEFT)
	push	hl
	ldhl	sp,	#9
	bit	1, (hl)
	pop	hl
	jr	Z, 00104$
	C$Character.h$151$2_0$160	= .
	.globl	C$Character.h$151$2_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:151: moveX = -1;
	ldhl	sp,	#0
	ld	(hl), #0xff
	jr	00108$
00104$:
	C$Character.h$153$1_0$159	= .
	.globl	C$Character.h$153$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:153: else if (buttons & J_RIGHT)
	push	hl
	ldhl	sp,	#9
	bit	0, (hl)
	pop	hl
	jr	Z, 00108$
	C$Character.h$155$2_0$161	= .
	.globl	C$Character.h$155$2_0$161
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:155: moveX = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	C$Character.h$161$1_0$159	= .
	.globl	C$Character.h$161$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:161: else if (buttons & J_DOWN)
00108$:
	C$Character.h$166$1_0$159	= .
	.globl	C$Character.h$166$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:166: if ((character->underfootState & FOOT_ON_LAND) && (buttons & J_A))
	ld	hl, #0x000e
	add	hl, bc
	ld	a, (hl)
	and	a, #0x01
	ld	e, a
	ld	d, #0x00
	ldhl	sp,	#7
	ld	a, (hl)
	and	a, #0x10
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), #0x00
	C$Character.h$169$1_0$159	= .
	.globl	C$Character.h$169$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:169: character->hasJumped = 1;
	ld	hl, #0x000f
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
	C$Character.h$170$1_0$159	= .
	.globl	C$Character.h$170$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:170: character->jumpedFrames = 0;
	ld	hl, #0x0010
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	C$Character.h$166$1_0$159	= .
	.globl	C$Character.h$166$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:166: if ((character->underfootState & FOOT_ON_LAND) && (buttons & J_A))
	ld	a, d
	or	a, e
	jr	Z, 00112$
	xor	a, a
	ldhl	sp,	#2
	or	a, (hl)
	jr	Z, 00112$
	C$Character.h$169$2_0$164	= .
	.globl	C$Character.h$169$2_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:169: character->hasJumped = 1;
	inc	hl
	inc	hl
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	C$Character.h$170$2_0$164	= .
	.globl	C$Character.h$170$2_0$164
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:170: character->jumpedFrames = 0;
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	jr	00113$
00112$:
	C$Character.h$174$1_0$159	= .
	.globl	C$Character.h$174$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:174: else if (character->underfootState & FOOT_ON_LAND)
	ld	a, d
	or	a, e
	jr	Z, 00113$
	C$Character.h$177$2_0$165	= .
	.globl	C$Character.h$177$2_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:177: character->jumpedFrames = 0;
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	C$Character.h$180$2_0$165	= .
	.globl	C$Character.h$180$2_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:180: character->hasJumped = 0;
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
00113$:
	C$Character.h$184$1_0$159	= .
	.globl	C$Character.h$184$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:184: if (!(buttons & J_A) || character->jumpedFrames > MAX_JUMP_FRAMES)
	xor	a, a
	ldhl	sp,	#2
	or	a, (hl)
	jr	Z, 00115$
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	sub	a, l
	jr	NC, 00116$
00115$:
	C$Character.h$186$2_0$166	= .
	.globl	C$Character.h$186$2_0$166
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:186: character->hasJumped = 0;
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
00116$:
	C$Character.h$190$1_0$159	= .
	.globl	C$Character.h$190$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:190: if (character->hasJumped && (buttons & J_A))
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	Z, 00119$
	xor	a, a
	ldhl	sp,	#2
	or	a, (hl)
	jr	Z, 00119$
	C$Character.h$193$2_0$167	= .
	.globl	C$Character.h$193$2_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:193: moveY = -1;
	dec	hl
	ld	(hl), #0xff
	C$Character.h$196$2_0$167	= .
	.globl	C$Character.h$196$2_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:196: character->jumpedFrames++;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	ld	a, (de)
	inc	a
	push	af
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
00119$:
	C$Character.h$200$1_0$159	= .
	.globl	C$Character.h$200$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:200: character->movementForceX = moveX;
	ld	hl, #0x000c
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$201$1_0$159	= .
	.globl	C$Character.h$201$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:201: character->movementForceY = moveY;
	ld	hl, #0x000d
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$202$1_0$159	= .
	.globl	C$Character.h$202$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:202: }
	add	sp, #8
	C$Character.h$202$1_0$159	= .
	.globl	C$Character.h$202$1_0$159
	XG$MoveCharacterWithJoypad$0$0	= .
	.globl	XG$MoveCharacterWithJoypad$0$0
	ret
	G$SetupCharacter$0$0	= .
	.globl	G$SetupCharacter$0$0
	C$Character.h$205$1_0$169	= .
	.globl	C$Character.h$205$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:205: void SetupCharacter(Character* character, uint8_t spriteId, uint8_t tileWidth, uint8_t tileHeight, uint8_t tilesetStart, uint8_t totalFrames, const unsigned char* tilemap)
;	---------------------------------
; Function SetupCharacter
; ---------------------------------
_SetupCharacter::
	dec	sp
	ldhl	sp,	#0
	ld	(hl), a
	C$Character.h$207$1_0$169	= .
	.globl	C$Character.h$207$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:207: character->tilemap = tilemap;
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
	C$Character.h$208$1_0$169	= .
	.globl	C$Character.h$208$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:208: character->spriteId = spriteId;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$209$1_0$169	= .
	.globl	C$Character.h$209$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:209: character->spriteTileWidth = tileWidth;
	ld	c, e
	ld	b, d
	inc	bc
	ldhl	sp,	#3
	C$Character.h$210$1_0$169	= .
	.globl	C$Character.h$210$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:210: character->spriteTileHeight = tileHeight;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$211$1_0$169	= .
	.globl	C$Character.h$211$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:211: character->tilesetStart = tilesetStart;
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#5
	C$Character.h$212$1_0$169	= .
	.globl	C$Character.h$212$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:212: character->spriteFrames = totalFrames;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$213$1_0$169	= .
	.globl	C$Character.h$213$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:213: character->underfootState = 0;
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$214$1_0$169	= .
	.globl	C$Character.h$214$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:214: character->jumpedFrames = 0;
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$215$1_0$169	= .
	.globl	C$Character.h$215$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:215: character->hasJumped = 0;
	ld	hl, #0x000f
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$217$1_0$169	= .
	.globl	C$Character.h$217$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:217: LoadSpriteFrame(character, 0);
	xor	a, a
	call	_LoadSpriteFrame
	C$Character.h$218$1_0$169	= .
	.globl	C$Character.h$218$1_0$169
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:218: }
	inc	sp
	pop	hl
	add	sp, #6
	jp	(hl)
	G$showTitle$0$0	= .
	.globl	G$showTitle$0$0
	C$main.c$20$1_0$173	= .
	.globl	C$main.c$20$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:20: void showTitle(void)
;	---------------------------------
; Function showTitle
; ---------------------------------
_showTitle::
	C$main.c$23$1_0$173	= .
	.globl	C$main.c$23$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:23: set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);
	ld	de, #_SplashScreenSprite_tileset
	push	de
	ld	hl, #0xc800
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$26$1_0$173	= .
	.globl	C$main.c$26$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:26: set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);
	ld	de, #_SplashScreenSprite_tilemap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$29$1_0$173	= .
	.globl	C$main.c$29$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:29: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$30$1_0$173	= .
	.globl	C$main.c$30$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:30: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$31$1_0$173	= .
	.globl	C$main.c$31$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:31: }
	C$main.c$31$1_0$173	= .
	.globl	C$main.c$31$1_0$173
	XG$showTitle$0$0	= .
	.globl	XG$showTitle$0$0
	ret
	G$SetupBackGround$0$0	= .
	.globl	G$SetupBackGround$0$0
	C$main.c$33$1_0$175	= .
	.globl	C$main.c$33$1_0$175
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:33: void SetupBackGround()
;	---------------------------------
; Function SetupBackGround
; ---------------------------------
_SetupBackGround::
	C$main.c$36$1_0$175	= .
	.globl	C$main.c$36$1_0$175
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:36: }
	C$main.c$36$1_0$175	= .
	.globl	C$main.c$36$1_0$175
	XG$SetupBackGround$0$0	= .
	.globl	XG$SetupBackGround$0$0
	ret
	G$DetectCollisions$0$0	= .
	.globl	G$DetectCollisions$0$0
	C$main.c$38$1_0$177	= .
	.globl	C$main.c$38$1_0$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:38: void DetectCollisions(Character *character, uint8_t *predictedX, uint8_t *predictedY)
;	---------------------------------
; Function DetectCollisions
; ---------------------------------
_DetectCollisions::
	C$main.c$41$1_0$177	= .
	.globl	C$main.c$41$1_0$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:41: if (*predictedY >= 120)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
	sub	a, #0x78
	jr	C, 00103$
	C$main.c$44$2_0$178	= .
	.globl	C$main.c$44$2_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:44: *predictedY = 120; 
	ld	a, #0x78
	ld	(bc), a
	C$main.c$47$2_0$178	= .
	.globl	C$main.c$47$2_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:47: character->velocityY = 0;
	ld	hl, #0x0009
	add	hl, de
	ld	(hl), #0x00
00103$:
	C$main.c$49$1_0$177	= .
	.globl	C$main.c$49$1_0$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:49: }
	pop	hl
	pop	af
	jp	(hl)
	G$MovementPhysics$0$0	= .
	.globl	G$MovementPhysics$0$0
	C$main.c$51$1_0$180	= .
	.globl	C$main.c$51$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:51: void MovementPhysics(Character *character, uint8_t slowDownFrames)
;	---------------------------------
; Function MovementPhysics
; ---------------------------------
_MovementPhysics::
	add	sp, #-15
	ldhl	sp,	#13
	ld	(hl), e
	inc	hl
	ld	(hl), d
	dec	hl
	dec	hl
	C$main.c$56$1_1$180	= .
	.globl	C$main.c$56$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:56: (lastMovementX != 0 && character->movementForceX == 0) ||
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000c
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	ld	a, (#_lastMovementX)
	or	a, a
	jr	Z, 00105$
	ld	a, c
	or	a, a
	jr	Z, 00101$
00105$:
	C$main.c$58$1_0$180	= .
	.globl	C$main.c$58$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:58: (lastMovementX == 0 && character->movementForceX != 0))
	ld	a, (#_lastMovementX)
	or	a,a
	jr	NZ, 00102$
	or	a,c
	jr	Z, 00102$
00101$:
	C$main.c$61$2_0$181	= .
	.globl	C$main.c$61$2_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:61: movementFrameCount = 0;
	ld	hl, #_movementFrameCount
	ld	(hl), #0x00
	C$main.c$62$2_0$181	= .
	.globl	C$main.c$62$2_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:62: animationFrameCount = 0;
	ld	hl, #_animationFrameCount
	ld	(hl), #0x00
00102$:
	C$main.c$67$1_1$180	= .
	.globl	C$main.c$67$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:67: slowingX = lastMovementX > 0 ? 1 : -1;
	ld	hl, #_lastMovementX
	ld	e, (hl)
	xor	a, a
	ld	d, a
	sub	a, (hl)
	bit	7, e
	jr	Z, 00334$
	bit	7, d
	jr	NZ, 00335$
	cp	a, a
	jr	00335$
00334$:
	bit	7, d
	jr	Z, 00335$
	scf
00335$:
	ld	a, #0x00
	rla
	ldhl	sp,	#9
	ld	(hl), a
	C$main.c$66$1_0$180	= .
	.globl	C$main.c$66$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:66: if (lastMovementX != 0 && character->movementForceX == 0)
	ld	a, (#_lastMovementX)
	or	a, a
	jr	Z, 00107$
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	NZ, 00107$
	C$main.c$67$1_0$180	= .
	.globl	C$main.c$67$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:67: slowingX = lastMovementX > 0 ? 1 : -1;
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
	jr	Z, 00157$
	inc	hl
	ld	a, #0x01
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	jr	00158$
00157$:
	ldhl	sp,	#10
	ld	a, #0xff
	ld	(hl+), a
	ld	(hl), #0xff
00158$:
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(#_slowingX),a
00107$:
	C$main.c$56$1_1$180	= .
	.globl	C$main.c$56$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:56: (lastMovementX != 0 && character->movementForceX == 0) ||
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	C$main.c$70$1_0$180	= .
	.globl	C$main.c$70$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:70: if (lastMovementX <= 0 && character->movementForceX > 0)
	ldhl	sp,	#9
	bit	0, (hl)
	jr	NZ, 00113$
	ld	e, c
	xor	a, a
	ld	d, a
	sub	a, c
	bit	7, e
	jr	Z, 00336$
	bit	7, d
	jr	NZ, 00337$
	cp	a, a
	jr	00337$
00336$:
	bit	7, d
	jr	Z, 00337$
	scf
00337$:
	jr	NC, 00113$
	C$main.c$71$1_0$180	= .
	.globl	C$main.c$71$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:71: SetSpriteFlip(character, 0, 0);
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	ldhl	sp,	#14
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_SetSpriteFlip
	jr	00114$
00113$:
	C$main.c$73$1_0$180	= .
	.globl	C$main.c$73$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:73: else if (lastMovementX >= 0 && character->movementForceX < 0)
	ld	a, (#_lastMovementX)
	bit	7, a
	jr	NZ, 00114$
	bit	7, c
	jr	Z, 00114$
	C$main.c$74$1_0$180	= .
	.globl	C$main.c$74$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:74: SetSpriteFlip(character, 1, 0);
	xor	a, a
	push	af
	inc	sp
	ld	a, #0x01
	ldhl	sp,	#14
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_SetSpriteFlip
00114$:
	C$main.c$77$1_0$180	= .
	.globl	C$main.c$77$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:77: if (character->movementForceX != 0)
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	C$main.c$88$1_1$180	= .
	.globl	C$main.c$88$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:88: character->velocityX = character->movementForceX;
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	C$main.c$77$1_0$180	= .
	.globl	C$main.c$77$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:77: if (character->movementForceX != 0)
	ld	a, c
	or	a, a
	jr	Z, 00130$
	C$main.c$88$3_0$184	= .
	.globl	C$main.c$88$3_0$184
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:88: character->velocityX = character->movementForceX;
	pop	hl
	push	hl
	ld	(hl), c
	C$main.c$92$2_0$182	= .
	.globl	C$main.c$92$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:92: movementFrameCount++;
	ld	hl, #_movementFrameCount
	inc	(hl)
	C$main.c$95$2_0$182	= .
	.globl	C$main.c$95$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:95: if (movementFrameCount == PLAYER_ANIMATION_FRAMES)
	ld	a, (hl)
	sub	a, #0x08
	jr	NZ, 00120$
	C$main.c$97$3_0$185	= .
	.globl	C$main.c$97$3_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:97: movementFrameCount = 0;
	ld	hl, #_movementFrameCount
	ld	(hl), #0x00
00120$:
	C$main.c$101$2_0$182	= .
	.globl	C$main.c$101$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:101: animationFrameCount++;
	ld	hl, #_animationFrameCount
	inc	(hl)
	C$main.c$104$2_0$182	= .
	.globl	C$main.c$104$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:104: if (animationFrameCount == PLAYER_ANIMATION_FRAMES)
	ld	a, (hl)
	sub	a, #0x08
	jr	NZ, 00131$
	C$main.c$106$3_0$186	= .
	.globl	C$main.c$106$3_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:106: animationFrameCount = 0;
	ld	hl, #_animationFrameCount
	ld	(hl), #0x00
	C$main.c$109$3_0$186	= .
	.globl	C$main.c$109$3_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:109: LoadNextSpriteFrame(character);
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_LoadNextSpriteFrame
	jr	00131$
00130$:
	C$main.c$116$2_0$187	= .
	.globl	C$main.c$116$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:116: if (slowingX && movementFrameCount < slowDownFrames)
	ld	a, (#_slowingX)
	or	a, a
	jr	Z, 00131$
	ld	a, (#_movementFrameCount)
	ldhl	sp,	#12
	sub	a, (hl)
	jr	NC, 00131$
	C$main.c$118$3_0$188	= .
	.globl	C$main.c$118$3_0$188
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:118: movementFrameCount++;
	ld	hl, #_movementFrameCount
	inc	(hl)
	C$main.c$121$3_0$188	= .
	.globl	C$main.c$121$3_0$188
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:121: if (movementFrameCount == slowDownFrames - 1)
	ldhl	sp,	#12
	ld	c, (hl)
	ld	b, #0x00
	dec	bc
	ld	hl, #_movementFrameCount
	ld	e, (hl)
	ld	d, #0x00
	ld	a, e
	sub	a, c
	jr	NZ, 00124$
	ld	a, d
	sub	a, b
	jr	NZ, 00124$
	C$main.c$123$4_0$189	= .
	.globl	C$main.c$123$4_0$189
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:123: character->velocityX = 0;
	pop	hl
	ld	(hl), #0x00
	push	hl
	C$main.c$124$4_0$189	= .
	.globl	C$main.c$124$4_0$189
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:124: slowingX = 0;
	ld	hl, #_slowingX
	ld	(hl), #0x00
	jr	00131$
00124$:
	C$main.c$128$3_0$188	= .
	.globl	C$main.c$128$3_0$188
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:128: character->velocityX = slowingX;
	pop	de
	push	de
	ld	a, (#_slowingX)
	ld	(de), a
00131$:
	C$main.c$133$1_1$180	= .
	.globl	C$main.c$133$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:133: if (character->movementForceY != 0)
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000d
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl), a
	C$main.c$135$1_1$180	= .
	.globl	C$main.c$135$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:135: character->velocityY += character->movementForceY;
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	C$main.c$133$1_0$180	= .
	.globl	C$main.c$133$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:133: if (character->movementForceY != 0)
	ld	(hl+), a
	inc	hl
	ld	a, (hl)
	or	a, a
	jr	Z, 00147$
	C$main.c$135$2_0$190	= .
	.globl	C$main.c$135$2_0$190
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:135: character->velocityY += character->movementForceY;
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	add	a, (hl)
	ld	c, a
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	jr	00148$
00147$:
	C$main.c$140$1_0$180	= .
	.globl	C$main.c$140$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:140: else if (character->underfootState & FOOT_IN_AIR)
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	bit	1, a
	jr	Z, 00148$
	C$main.c$143$2_0$191	= .
	.globl	C$main.c$143$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:143: jumpFrameCount = (jumpFrameCount + 1) % 60;
	ld	hl, #_jumpFrameCount
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ldhl	sp,	#10
	ld	a, c
	ld	(hl+), a
	ld	a, b
	ld	(hl-), a
	ld	bc, #0x003c
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	__modsint
	ldhl	sp,	#10
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ldhl	sp,	#10
	ld	a, (hl)
	C$main.c$146$2_0$191	= .
	.globl	C$main.c$146$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:146: if (jumpFrameCount < 5)
	ld	(#_jumpFrameCount),a
	sub	a, #0x05
	jr	NC, 00142$
	C$main.c$147$2_0$191	= .
	.globl	C$main.c$147$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:147: character->velocityY = -2;
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0xfe
	jr	00148$
00142$:
	C$main.c$148$2_0$191	= .
	.globl	C$main.c$148$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:148: else if (jumpFrameCount < 10)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0a
	jr	NC, 00139$
	C$main.c$149$2_0$191	= .
	.globl	C$main.c$149$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:149: character->velocityY = -1;
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0xff
	jr	00148$
00139$:
	C$main.c$150$2_0$191	= .
	.globl	C$main.c$150$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:150: else if (jumpFrameCount < 14)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0e
	jr	NC, 00136$
	C$main.c$151$2_0$191	= .
	.globl	C$main.c$151$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:151: character->velocityY = 0;
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	jr	00148$
00136$:
	C$main.c$152$2_0$191	= .
	.globl	C$main.c$152$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:152: else if (jumpFrameCount < 20)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x14
	jr	NC, 00133$
	C$main.c$153$2_0$191	= .
	.globl	C$main.c$153$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:153: character->velocityY = 1;
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jr	00148$
00133$:
	C$main.c$155$2_0$191	= .
	.globl	C$main.c$155$2_0$191
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:155: character->velocityY = 2;
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x02
00148$:
	C$main.c$159$1_0$180	= .
	.globl	C$main.c$159$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:159: if (character->velocityY != 0 && character->velocityY < -3)
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a,a
	jr	Z, 00150$
	xor	a, #0x80
	sub	a, #0x7d
	jr	NC, 00150$
	C$main.c$160$1_0$180	= .
	.globl	C$main.c$160$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:160: character->velocityY = -3;
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	(hl), #0xfd
00150$:
	C$main.c$159$1_1$180	= .
	.globl	C$main.c$159$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:159: if (character->velocityY != 0 && character->velocityY < -3)
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	C$main.c$161$1_0$180	= .
	.globl	C$main.c$161$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:161: if (character->velocityY != 0 && character->velocityY > 3)
	ld	c, a
	or	a, a
	jr	Z, 00153$
	ld	e, c
	ld	a,#0x03
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00345$
	bit	7, d
	jr	NZ, 00346$
	cp	a, a
	jr	00346$
00345$:
	bit	7, d
	jr	Z, 00346$
	scf
00346$:
	jr	NC, 00153$
	C$main.c$162$1_0$180	= .
	.globl	C$main.c$162$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:162: character->velocityY = 3;
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x03
00153$:
	C$main.c$165$1_1$192	= .
	.globl	C$main.c$165$1_1$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:165: uint8_t predictedX = character->x + character->velocityX;
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#11
	ld	(hl-), a
	pop	de
	push	de
	ld	a, (de)
	ld	(hl+), a
	ld	a, (hl-)
	add	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	C$main.c$166$1_1$192	= .
	.globl	C$main.c$166$1_1$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:166: uint8_t predictedY = character->y + character->velocityY;
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#10
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	(hl-), a
	ld	a, (hl+)
	add	a, (hl)
	ld	(hl), a
	ldhl	sp,	#3
	ld	(hl), a
	C$main.c$169$1_1$192	= .
	.globl	C$main.c$169$1_1$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:169: DetectCollisions(character, &predictedX, &predictedY);
	ld	hl, #3
	add	hl, sp
	push	hl
	ld	hl, #4
	add	hl, sp
	ld	c, l
	ld	b, h
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_DetectCollisions
	C$main.c$172$1_1$192	= .
	.globl	C$main.c$172$1_1$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:172: MoveCharacter(character, predictedX, predictedY);
	ldhl	sp,	#3
	ld	a, (hl-)
	push	af
	inc	sp
	ld	a, (hl)
	ldhl	sp,	#14
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_MoveCharacter
	C$main.c$175$1_1$192	= .
	.globl	C$main.c$175$1_1$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:175: lastMovementX = character->movementForceX;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(#_lastMovementX),a
	C$main.c$176$1_1$192	= .
	.globl	C$main.c$176$1_1$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:176: lastMovementY = character->movementForceY;
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(#_lastMovementY),a
	C$main.c$177$1_1$180	= .
	.globl	C$main.c$177$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:177: }
	add	sp, #15
	C$main.c$177$1_1$180	= .
	.globl	C$main.c$177$1_1$180
	XG$MovementPhysics$0$0	= .
	.globl	XG$MovementPhysics$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$179$1_1$194	= .
	.globl	C$main.c$179$1_1$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:179: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$181$1_0$194	= .
	.globl	C$main.c$181$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:181: SetupBackGround();
	call	_SetupBackGround
	C$main.c$183$1_0$194	= .
	.globl	C$main.c$183$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:183: set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);
	ld	de, #_BirdSprite_tileset
	push	de
	ld	hl, #0x2600
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$185$1_0$194	= .
	.globl	C$main.c$185$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:185: SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);
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
	C$main.c$187$1_0$194	= .
	.globl	C$main.c$187$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:187: MoveCharacter(&player, 8, 56);
	ld	a, #0x38
	push	af
	inc	sp
	ld	a, #0x08
	ld	de, #_player
	call	_MoveCharacter
	C$main.c$189$1_0$194	= .
	.globl	C$main.c$189$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:189: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$190$1_0$194	= .
	.globl	C$main.c$190$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:190: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$191$1_0$194	= .
	.globl	C$main.c$191$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:191: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$193$1_0$194	= .
	.globl	C$main.c$193$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:193: while(1)
00102$:
	C$main.c$196$2_0$195	= .
	.globl	C$main.c$196$2_0$195
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:196: player.underfootState = player.y >= 120 ? FOOT_ON_LAND : FOOT_IN_AIR;
	ld	a, (#(_player + 7) + 0)
	sub	a, #0x78
	jr	C, 00106$
	ld	a, #0x01
	jr	00107$
00106$:
	ld	a, #0x02
00107$:
	ld	(#(_player + 14)),a
	C$main.c$197$2_0$195	= .
	.globl	C$main.c$197$2_0$195
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:197: MoveCharacterWithJoypad(&player);
	ld	de, #_player
	call	_MoveCharacterWithJoypad
	C$main.c$198$2_0$195	= .
	.globl	C$main.c$198$2_0$195
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:198: MovementPhysics(&player, 3);
	ld	a, #0x03
	ld	de, #_player
	call	_MovementPhysics
	C$main.c$199$2_0$195	= .
	.globl	C$main.c$199$2_0$195
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:199: LoadNextSpriteFrame(&player);
	ld	de, #_player
	call	_LoadNextSpriteFrame
	C$main.c$200$2_0$195	= .
	.globl	C$main.c$200$2_0$195
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:200: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$202$1_0$194	= .
	.globl	C$main.c$202$1_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:202: }
	C$main.c$202$1_0$194	= .
	.globl	C$main.c$202$1_0$194
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _INITIALIZER
Fmain$__xinit_movementFrameCount$0_0$0 == .
__xinit__movementFrameCount:
	.db #0x00	; 0
Fmain$__xinit_animationFrameCount$0_0$0 == .
__xinit__animationFrameCount:
	.db #0x00	; 0
Fmain$__xinit_jumpFrameCount$0_0$0 == .
__xinit__jumpFrameCount:
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
