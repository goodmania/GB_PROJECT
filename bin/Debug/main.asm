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
	C$Character.h$146$1_0$159	= .
	.globl	C$Character.h$146$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:146: int8_t moveX = 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
	C$Character.h$147$1_0$159	= .
	.globl	C$Character.h$147$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:147: int8_t moveY = 0;
	inc	hl
	ld	(hl), #0x00
	C$Character.h$149$1_0$159	= .
	.globl	C$Character.h$149$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:149: if (buttons & J_LEFT)
	bit	1, a
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
	bit	0, a
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
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:166: if ((buttons & J_A))
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
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:166: if ((buttons & J_A))
	xor	a, a
	ldhl	sp,	#2
	or	a, (hl)
	jr	Z, 00110$
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
00110$:
	C$Character.h$174$1_0$159	= .
	.globl	C$Character.h$174$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:174: if (character->hasJumped && (buttons & J_A))
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	or	a, a
	jr	Z, 00112$
	xor	a, a
	ldhl	sp,	#2
	or	a, (hl)
	jr	Z, 00112$
	C$Character.h$177$2_0$165	= .
	.globl	C$Character.h$177$2_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:177: moveY = -1;
	dec	hl
	ld	(hl), #0xff
	C$Character.h$180$2_0$165	= .
	.globl	C$Character.h$180$2_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:180: character->jumpedFrames++;
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
00112$:
	C$Character.h$184$1_0$159	= .
	.globl	C$Character.h$184$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:184: character->movementForceX = moveX;
	ld	hl, #0x000c
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$185$1_0$159	= .
	.globl	C$Character.h$185$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:185: character->movementForceY = moveY;
	ld	hl, #0x000d
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$186$1_0$159	= .
	.globl	C$Character.h$186$1_0$159
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:186: }
	add	sp, #8
	C$Character.h$186$1_0$159	= .
	.globl	C$Character.h$186$1_0$159
	XG$MoveCharacterWithJoypad$0$0	= .
	.globl	XG$MoveCharacterWithJoypad$0$0
	ret
	G$SetupCharacter$0$0	= .
	.globl	G$SetupCharacter$0$0
	C$Character.h$189$1_0$167	= .
	.globl	C$Character.h$189$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:189: void SetupCharacter(Character* character, uint8_t spriteId, uint8_t tileWidth, uint8_t tileHeight, uint8_t tilesetStart, uint8_t totalFrames, const unsigned char* tilemap)
;	---------------------------------
; Function SetupCharacter
; ---------------------------------
_SetupCharacter::
	dec	sp
	ldhl	sp,	#0
	ld	(hl), a
	C$Character.h$191$1_0$167	= .
	.globl	C$Character.h$191$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:191: character->tilemap = tilemap;
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
	C$Character.h$192$1_0$167	= .
	.globl	C$Character.h$192$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:192: character->spriteId = spriteId;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$193$1_0$167	= .
	.globl	C$Character.h$193$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:193: character->spriteTileWidth = tileWidth;
	ld	c, e
	ld	b, d
	inc	bc
	ldhl	sp,	#3
	C$Character.h$194$1_0$167	= .
	.globl	C$Character.h$194$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:194: character->spriteTileHeight = tileHeight;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$195$1_0$167	= .
	.globl	C$Character.h$195$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:195: character->tilesetStart = tilesetStart;
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#5
	C$Character.h$196$1_0$167	= .
	.globl	C$Character.h$196$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:196: character->spriteFrames = totalFrames;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$197$1_0$167	= .
	.globl	C$Character.h$197$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:197: character->underfootState = 0;
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$198$1_0$167	= .
	.globl	C$Character.h$198$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:198: character->jumpedFrames = 0;
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$199$1_0$167	= .
	.globl	C$Character.h$199$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:199: character->hasJumped = 0;
	ld	hl, #0x000f
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$201$1_0$167	= .
	.globl	C$Character.h$201$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:201: LoadSpriteFrame(character, 0);
	xor	a, a
	call	_LoadSpriteFrame
	C$Character.h$202$1_0$167	= .
	.globl	C$Character.h$202$1_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:202: }
	inc	sp
	pop	hl
	add	sp, #6
	jp	(hl)
	G$showTitle$0$0	= .
	.globl	G$showTitle$0$0
	C$main.c$22$1_0$171	= .
	.globl	C$main.c$22$1_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:22: void showTitle(void)
;	---------------------------------
; Function showTitle
; ---------------------------------
_showTitle::
	C$main.c$25$1_0$171	= .
	.globl	C$main.c$25$1_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:25: set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);
	ld	de, #_SplashScreenSprite_tileset
	push	de
	ld	hl, #0xc800
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$28$1_0$171	= .
	.globl	C$main.c$28$1_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:28: set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);
	ld	de, #_SplashScreenSprite_tilemap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$29$1_0$171	= .
	.globl	C$main.c$29$1_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:29: }
	C$main.c$29$1_0$171	= .
	.globl	C$main.c$29$1_0$171
	XG$showTitle$0$0	= .
	.globl	XG$showTitle$0$0
	ret
	G$SetupBackGround$0$0	= .
	.globl	G$SetupBackGround$0$0
	C$main.c$31$1_0$172	= .
	.globl	C$main.c$31$1_0$172
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:31: void SetupBackGround()
;	---------------------------------
; Function SetupBackGround
; ---------------------------------
_SetupBackGround::
	C$main.c$34$1_0$172	= .
	.globl	C$main.c$34$1_0$172
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:34: set_bkg_data(0, BackGroundSprite_tileset_size, BackGroundSprite_tileset);
	ld	de, #_BackGroundSprite_tileset
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$37$1_0$172	= .
	.globl	C$main.c$37$1_0$172
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:37: set_bkg_tiles(0, 0, 40, 18, BackGroundSprite_tilemap);
	ld	de, #_BackGroundSprite_tilemap
	push	de
	ld	hl, #0x1228
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$38$1_0$172	= .
	.globl	C$main.c$38$1_0$172
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:38: }
	C$main.c$38$1_0$172	= .
	.globl	C$main.c$38$1_0$172
	XG$SetupBackGround$0$0	= .
	.globl	XG$SetupBackGround$0$0
	ret
	G$DetectCollisions$0$0	= .
	.globl	G$DetectCollisions$0$0
	C$main.c$40$1_0$174	= .
	.globl	C$main.c$40$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:40: void DetectCollisions(Character *character, uint8_t *predictedX, uint8_t *predictedY)
;	---------------------------------
; Function DetectCollisions
; ---------------------------------
_DetectCollisions::
	C$main.c$43$1_0$174	= .
	.globl	C$main.c$43$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:43: if (*predictedY >= GLOUND_LEVEL)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	C$main.c$49$1_0$174	= .
	.globl	C$main.c$49$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:49: character->velocityY = 0;
	ld	a, e
	add	a, #0x09
	ld	e, a
	jr	NC, 00122$
	inc	d
00122$:
	C$main.c$43$1_0$174	= .
	.globl	C$main.c$43$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:43: if (*predictedY >= GLOUND_LEVEL)
	ld	a, l
	sub	a, #0x82
	jr	C, 00104$
	C$main.c$46$2_0$175	= .
	.globl	C$main.c$46$2_0$175
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:46: *predictedY = GLOUND_LEVEL; 
	ld	a, #0x82
	ld	(bc), a
	C$main.c$49$2_0$175	= .
	.globl	C$main.c$49$2_0$175
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:49: character->velocityY = 0;
	xor	a, a
	ld	(de), a
	jr	00106$
00104$:
	C$main.c$50$1_0$174	= .
	.globl	C$main.c$50$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:50: }else if(*predictedY < 8)
	ld	a, l
	sub	a, #0x08
	jr	NC, 00106$
	C$main.c$53$2_0$176	= .
	.globl	C$main.c$53$2_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:53: *predictedY = 8; 
	ld	a, #0x08
	ld	(bc), a
	C$main.c$56$2_0$176	= .
	.globl	C$main.c$56$2_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:56: character->velocityY = 0;
	xor	a, a
	ld	(de), a
00106$:
	C$main.c$58$1_0$174	= .
	.globl	C$main.c$58$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:58: }
	pop	hl
	pop	af
	jp	(hl)
	G$MovementPhysics$0$0	= .
	.globl	G$MovementPhysics$0$0
	C$main.c$60$1_0$178	= .
	.globl	C$main.c$60$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:60: void MovementPhysics(Character *character, uint8_t slowDownFrames)
;	---------------------------------
; Function MovementPhysics
; ---------------------------------
_MovementPhysics::
	add	sp, #-9
	ldhl	sp,	#7
	ld	a, e
	ld	(hl+), a
	C$main.c$63$1_1$178	= .
	.globl	C$main.c$63$1_1$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:63: if (character->movementForceY != 0)
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000d
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
	ldhl	sp,	#6
	C$main.c$65$1_1$178	= .
	.globl	C$main.c$65$1_1$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:65: character->velocityY += character->movementForceY;
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	C$main.c$63$1_0$178	= .
	.globl	C$main.c$63$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:63: if (character->movementForceY != 0)
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
	jr	Z, 00116$
	C$main.c$65$2_0$179	= .
	.globl	C$main.c$65$2_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:65: character->velocityY += character->movementForceY;
	pop	de
	push	de
	ld	a, (de)
	add	a, (hl)
	ld	c, a
	pop	hl
	push	hl
	ld	(hl), c
	C$main.c$66$2_0$179	= .
	.globl	C$main.c$66$2_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:66: jumpFrameCount = 0;
	ld	hl, #_jumpFrameCount
	ld	(hl), #0x00
	jr	00117$
00116$:
	C$main.c$70$1_0$178	= .
	.globl	C$main.c$70$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:70: else if (character->underfootState & FOOT_IN_AIR)
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x000e
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	bit	1, a
	jr	Z, 00117$
	C$main.c$73$2_0$180	= .
	.globl	C$main.c$73$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:73: jumpFrameCount = (jumpFrameCount + 1) % 120;
	ld	hl, #_jumpFrameCount
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	bc, #0x0078
	call	__modsint
	ld	hl, #_jumpFrameCount
	ld	(hl), c
	C$main.c$76$2_0$180	= .
	.globl	C$main.c$76$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:76: if (jumpFrameCount < 3)
	ld	a, (hl)
	sub	a, #0x03
	jr	NC, 00111$
	C$main.c$77$2_0$180	= .
	.globl	C$main.c$77$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:77: character->velocityY = -2;
	pop	hl
	ld	(hl), #0xfe
	push	hl
	jr	00117$
00111$:
	C$main.c$78$2_0$180	= .
	.globl	C$main.c$78$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:78: else if (jumpFrameCount < 10)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0a
	jr	NC, 00108$
	C$main.c$79$2_0$180	= .
	.globl	C$main.c$79$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:79: character->velocityY = -1;
	pop	hl
	ld	(hl), #0xff
	push	hl
	jr	00117$
00108$:
	C$main.c$80$2_0$180	= .
	.globl	C$main.c$80$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:80: else if (jumpFrameCount < 14)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0e
	jr	NC, 00105$
	C$main.c$81$2_0$180	= .
	.globl	C$main.c$81$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:81: character->velocityY = 0;
	pop	hl
	ld	(hl), #0x00
	push	hl
	jr	00117$
00105$:
	C$main.c$82$2_0$180	= .
	.globl	C$main.c$82$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:82: else if (jumpFrameCount < 20)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x14
	jr	NC, 00102$
	C$main.c$83$2_0$180	= .
	.globl	C$main.c$83$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:83: character->velocityY = 1;
	pop	hl
	ld	(hl), #0x01
	push	hl
	jr	00117$
00102$:
	C$main.c$85$2_0$180	= .
	.globl	C$main.c$85$2_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:85: character->velocityY = 2;
	pop	hl
	ld	(hl), #0x02
	push	hl
00117$:
	C$main.c$89$1_0$178	= .
	.globl	C$main.c$89$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:89: if (character->velocityY != 0 && character->velocityY < -3)
	pop	de
	push	de
	ld	a, (de)
	or	a,a
	jr	Z, 00119$
	xor	a, #0x80
	sub	a, #0x7d
	jr	NC, 00119$
	C$main.c$90$1_0$178	= .
	.globl	C$main.c$90$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:90: character->velocityY = -3;
	pop	hl
	ld	(hl), #0xfd
	push	hl
00119$:
	C$main.c$89$1_1$178	= .
	.globl	C$main.c$89$1_1$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:89: if (character->velocityY != 0 && character->velocityY < -3)
	pop	de
	push	de
	ld	a, (de)
	C$main.c$91$1_0$178	= .
	.globl	C$main.c$91$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:91: if (character->velocityY != 0 && character->velocityY > 3)
	ld	c, a
	or	a, a
	jr	Z, 00122$
	ld	e, c
	ld	a,#0x03
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00197$
	bit	7, d
	jr	NZ, 00198$
	cp	a, a
	jr	00198$
00197$:
	bit	7, d
	jr	Z, 00198$
	scf
00198$:
	jr	NC, 00122$
	C$main.c$92$1_0$178	= .
	.globl	C$main.c$92$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:92: character->velocityY = 3;
	pop	hl
	ld	(hl), #0x03
	push	hl
00122$:
	C$main.c$95$1_1$181	= .
	.globl	C$main.c$95$1_1$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:95: uint8_t predictedY = character->y + character->velocityY;
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ldhl	sp,	#6
	ld	(hl-), a
	dec	hl
	pop	de
	push	de
	ld	a, (de)
	ld	(hl+), a
	inc	hl
	ld	a, (hl-)
	dec	hl
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ld	a, (hl-)
	ld	(hl), a
	C$main.c$98$1_1$181	= .
	.globl	C$main.c$98$1_1$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:98: DetectCollisions(character, &character->x, &predictedY);
	ldhl	sp,	#5
	ld	c, l
	ld	b, h
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0006
	add	hl, de
	ld	e, l
	ld	d, h
	push	de
	push	bc
	ld	c, e
	ld	b, d
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_DetectCollisions
	pop	de
	C$main.c$101$1_1$181	= .
	.globl	C$main.c$101$1_1$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:101: MoveCharacter(character, character->x, predictedY);
	ld	a, (de)
	ld	c, a
	ldhl	sp,	#5
	ld	a, (hl+)
	inc	hl
	push	af
	inc	sp
	ld	a, c
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	call	_MoveCharacter
	C$main.c$104$1_1$181	= .
	.globl	C$main.c$104$1_1$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:104: lastMovementY = character->movementForceY;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(#_lastMovementY),a
	C$main.c$105$1_1$178	= .
	.globl	C$main.c$105$1_1$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:105: }
	add	sp, #9
	C$main.c$105$1_1$178	= .
	.globl	C$main.c$105$1_1$178
	XG$MovementPhysics$0$0	= .
	.globl	XG$MovementPhysics$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$107$1_1$183	= .
	.globl	C$main.c$107$1_1$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:107: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$109$1_0$183	= .
	.globl	C$main.c$109$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:109: SetupBackGround();
	call	_SetupBackGround
	C$main.c$111$1_0$183	= .
	.globl	C$main.c$111$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:111: set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);
	ld	de, #_BirdSprite_tileset
	push	de
	ld	hl, #0x2600
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$113$1_0$183	= .
	.globl	C$main.c$113$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:113: SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);
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
	C$main.c$115$1_0$183	= .
	.globl	C$main.c$115$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:115: MoveCharacter(&player, 16, 56);
	ld	a, #0x38
	push	af
	inc	sp
	ld	a, #0x10
	ld	de, #_player
	call	_MoveCharacter
	C$main.c$117$1_0$183	= .
	.globl	C$main.c$117$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:117: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$118$1_0$183	= .
	.globl	C$main.c$118$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:118: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$119$1_0$183	= .
	.globl	C$main.c$119$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:119: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$121$1_0$183	= .
	.globl	C$main.c$121$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:121: while(1)
00102$:
	C$main.c$123$2_0$184	= .
	.globl	C$main.c$123$2_0$184
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:123: player.underfootState = player.y >= GLOUND_LEVEL ? FOOT_ON_LAND : FOOT_IN_AIR;
	ld	a, (#(_player + 7) + 0)
	sub	a, #0x82
	jr	C, 00107$
	ld	a, #0x01
	jr	00108$
00107$:
	ld	a, #0x02
00108$:
	ld	(#(_player + 14)),a
	C$main.c$124$2_0$184	= .
	.globl	C$main.c$124$2_0$184
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:124: MoveCharacterWithJoypad(&player);
	ld	de, #_player
	call	_MoveCharacterWithJoypad
	C$main.c$125$2_0$184	= .
	.globl	C$main.c$125$2_0$184
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:125: MovementPhysics(&player, 3);
	ld	a, #0x03
	ld	de, #_player
	call	_MovementPhysics
	C$main.c$126$2_0$184	= .
	.globl	C$main.c$126$2_0$184
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:126: LoadNextSpriteFrame(&player);
	ld	de, #_player
	call	_LoadNextSpriteFrame
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1392: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG + 0)
	inc	a
	ldh	(_SCX_REG + 0), a
	C$main.c$129$2_0$184	= .
	.globl	C$main.c$129$2_0$184
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:129: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$131$1_0$183	= .
	.globl	C$main.c$131$1_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:131: }
	C$main.c$131$1_0$183	= .
	.globl	C$main.c$131$1_0$183
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
