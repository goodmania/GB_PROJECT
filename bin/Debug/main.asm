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
	.globl _Hit
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
	.globl _printf
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
	.globl _ShowTitle
	.globl _SetupBackGround
	.globl _SetupBlock
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
	C$Character.h$67$0_0$130	= .
	.globl	C$Character.h$67$0_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:67: void LoadSpriteFrame(Character* character, uint8_t frame)
;	---------------------------------
; Function LoadSpriteFrame
; ---------------------------------
_LoadSpriteFrame::
	add	sp, #-23
	ldhl	sp,	#19
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$Character.h$69$1_0$130	= .
	.globl	C$Character.h$69$1_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:69: character->spriteCurrentFrame = frame;
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
	C$Character.h$71$1_1$131	= .
	.globl	C$Character.h$71$1_1$131
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:71: uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;
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
	C$Character.h$74$2_1$130	= .
	.globl	C$Character.h$74$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:74: for (uint8_t y = 0; y != character->spriteTileHeight; y++)
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
	C$Character.h$71$2_1$130	= .
	.globl	C$Character.h$71$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:71: uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#16
	ld	(hl), a
	C$Character.h$76$4_1$134	= .
	.globl	C$Character.h$76$4_1$134
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
	C$Character.h$83$5_1$135	= .
	.globl	C$Character.h$83$5_1$135
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
	C$Character.h$76$4_1$134	= .
	.globl	C$Character.h$76$4_1$134
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	inc	(hl)
	jp	00106$
00110$:
	C$Character.h$74$2_1$132	= .
	.globl	C$Character.h$74$2_1$132
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:74: for (uint8_t y = 0; y != character->spriteTileHeight; y++)
	ldhl	sp,	#21
	inc	(hl)
	jp	00109$
00111$:
	C$Character.h$93$2_1$130	= .
	.globl	C$Character.h$93$2_1$130
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:93: }
	add	sp, #23
	C$Character.h$93$2_1$130	= .
	.globl	C$Character.h$93$2_1$130
	XG$LoadSpriteFrame$0$0	= .
	.globl	XG$LoadSpriteFrame$0$0
	ret
	G$RefreshSprite$0$0	= .
	.globl	G$RefreshSprite$0$0
	C$Character.h$95$2_1$143	= .
	.globl	C$Character.h$95$2_1$143
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:95: void RefreshSprite(Character *character)
;	---------------------------------
; Function RefreshSprite
; ---------------------------------
_RefreshSprite::
	C$Character.h$97$1_0$143	= .
	.globl	C$Character.h$97$1_0$143
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:97: LoadSpriteFrame(character, character->spriteCurrentFrame);
	ld	hl, #0x0004
	add	hl, de
	ld	c, (hl)
	ld	a, c
	C$Character.h$98$1_0$143	= .
	.globl	C$Character.h$98$1_0$143
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:98: }
	C$Character.h$98$1_0$143	= .
	.globl	C$Character.h$98$1_0$143
	XG$RefreshSprite$0$0	= .
	.globl	XG$RefreshSprite$0$0
	jp	_LoadSpriteFrame
	G$LoadNextSpriteFrame$0$0	= .
	.globl	G$LoadNextSpriteFrame$0$0
	C$Character.h$100$1_0$145	= .
	.globl	C$Character.h$100$1_0$145
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:100: void LoadNextSpriteFrame(Character *character)
;	---------------------------------
; Function LoadNextSpriteFrame
; ---------------------------------
_LoadNextSpriteFrame::
	add	sp, #-4
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
	C$Character.h$103$1_0$145	= .
	.globl	C$Character.h$103$1_0$145
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:103: character->spriteCurrentFrame = (character->spriteCurrentFrame + 1) % character->spriteFrames;
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
	C$Character.h$105$1_0$145	= .
	.globl	C$Character.h$105$1_0$145
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:105: RefreshSprite(character);
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_RefreshSprite
	C$Character.h$106$1_0$145	= .
	.globl	C$Character.h$106$1_0$145
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:106: }
	add	sp, #4
	C$Character.h$106$1_0$145	= .
	.globl	C$Character.h$106$1_0$145
	XG$LoadNextSpriteFrame$0$0	= .
	.globl	XG$LoadNextSpriteFrame$0$0
	ret
	G$SetSpriteFlip$0$0	= .
	.globl	G$SetSpriteFlip$0$0
	C$Character.h$108$1_0$147	= .
	.globl	C$Character.h$108$1_0$147
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:108: void SetSpriteFlip(Character *character, uint8_t flipX, uint8_t flipY)
;	---------------------------------
; Function SetSpriteFlip
; ---------------------------------
_SetSpriteFlip::
	ld	c, a
	C$Character.h$110$1_0$147	= .
	.globl	C$Character.h$110$1_0$147
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:110: character->spriteFlippedX = flipX;
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), c
	C$Character.h$111$1_0$147	= .
	.globl	C$Character.h$111$1_0$147
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:111: character->spriteFlippedY = flipY;
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$113$1_0$147	= .
	.globl	C$Character.h$113$1_0$147
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:113: RefreshSprite(character);
	call	_RefreshSprite
	C$Character.h$114$1_0$147	= .
	.globl	C$Character.h$114$1_0$147
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:114: }
	pop	hl
	inc	sp
	jp	(hl)
	G$MoveCharacter$0$0	= .
	.globl	G$MoveCharacter$0$0
	C$Character.h$116$1_0$149	= .
	.globl	C$Character.h$116$1_0$149
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:116: void MoveCharacter(Character *character, uint8_t x, uint8_t y)
;	---------------------------------
; Function MoveCharacter
; ---------------------------------
_MoveCharacter::
	add	sp, #-8
	ld	c, e
	ld	b, d
	ldhl	sp,	#5
	ld	(hl), a
	C$Character.h$119$1_0$149	= .
	.globl	C$Character.h$119$1_0$149
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:119: character->x = x;
	ld	hl, #0x0006
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(de), a
	C$Character.h$120$1_0$149	= .
	.globl	C$Character.h$120$1_0$149
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:120: character->y = y;
	ld	hl, #0x0007
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	C$Character.h$122$4_0$152	= .
	.globl	C$Character.h$122$4_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:122: for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
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
	C$Character.h$124$2_0$149	= .
	.globl	C$Character.h$124$2_0$149
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:124: for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
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
	C$Character.h$127$5_0$153	= .
	.globl	C$Character.h$127$5_0$153
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:127: uint8_t index = character->spriteId + ix + (iy * character->spriteTileWidth);
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
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:130: move_sprite(index, x + (ix * 8), y + (iy * 8));       
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
	C$Character.h$124$4_0$152	= .
	.globl	C$Character.h$124$4_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:124: for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
	ldhl	sp,	#7
	inc	(hl)
	jr	00105$
00109$:
	C$Character.h$122$2_0$150	= .
	.globl	C$Character.h$122$2_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:122: for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
	ldhl	sp,	#6
	inc	(hl)
	jr	00108$
00110$:
	C$Character.h$133$2_0$149	= .
	.globl	C$Character.h$133$2_0$149
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:133: }
	add	sp, #8
	pop	hl
	inc	sp
	jp	(hl)
	G$ScrollCharacter$0$0	= .
	.globl	G$ScrollCharacter$0$0
	C$Character.h$135$2_0$158	= .
	.globl	C$Character.h$135$2_0$158
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:135: void ScrollCharacter(Character *character, int8_t x, int8_t y)
;	---------------------------------
; Function ScrollCharacter
; ---------------------------------
_ScrollCharacter::
	push	de
	ld	c, a
	C$Character.h$137$1_0$158	= .
	.globl	C$Character.h$137$1_0$158
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:137: character->x += x;
	pop	de
	push	de
	ld	hl, #0x0006
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	add	a, c
	ld	(de), a
	C$Character.h$138$1_0$158	= .
	.globl	C$Character.h$138$1_0$158
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:138: character->y += y;
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
	C$Character.h$140$1_0$158	= .
	.globl	C$Character.h$140$1_0$158
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:140: MoveCharacter(character, character->x, character->y);
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
	C$Character.h$141$1_0$158	= .
	.globl	C$Character.h$141$1_0$158
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:141: }
	call	_MoveCharacter
	pop	hl
	pop	hl
	inc	sp
	jp	(hl)
	G$MoveCharacterWithJoypad$0$0	= .
	.globl	G$MoveCharacterWithJoypad$0$0
	C$Character.h$143$1_0$160	= .
	.globl	C$Character.h$143$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:143: void MoveCharacterWithJoypad(Character *character)
;	---------------------------------
; Function MoveCharacterWithJoypad
; ---------------------------------
_MoveCharacterWithJoypad::
	add	sp, #-8
	ld	c, e
	ld	b, d
	C$Character.h$146$1_0$160	= .
	.globl	C$Character.h$146$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:146: uint8_t buttons = joypad();
	call	_joypad
	C$Character.h$148$1_0$160	= .
	.globl	C$Character.h$148$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:148: int8_t moveX = 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
	C$Character.h$149$1_0$160	= .
	.globl	C$Character.h$149$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:149: int8_t moveY = 0;
	inc	hl
	ld	(hl), #0x00
	C$Character.h$151$1_0$160	= .
	.globl	C$Character.h$151$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:151: if (buttons & J_LEFT)
	bit	1, a
	jr	Z, 00104$
	C$Character.h$153$2_0$161	= .
	.globl	C$Character.h$153$2_0$161
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:153: moveX = -1;
	ldhl	sp,	#0
	ld	(hl), #0xff
	jr	00108$
00104$:
	C$Character.h$155$1_0$160	= .
	.globl	C$Character.h$155$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:155: else if (buttons & J_RIGHT)
	bit	0, a
	jr	Z, 00108$
	C$Character.h$157$2_0$162	= .
	.globl	C$Character.h$157$2_0$162
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:157: moveX = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	C$Character.h$163$1_0$160	= .
	.globl	C$Character.h$163$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:163: else if (buttons & J_DOWN)
00108$:
	C$Character.h$168$1_0$160	= .
	.globl	C$Character.h$168$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:168: if ((buttons & J_A))
	and	a, #0x10
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), #0x00
	C$Character.h$171$1_0$160	= .
	.globl	C$Character.h$171$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:171: character->hasJumped = 1;
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
	C$Character.h$172$1_0$160	= .
	.globl	C$Character.h$172$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:172: character->jumpedFrames = 0;
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
	C$Character.h$168$1_0$160	= .
	.globl	C$Character.h$168$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:168: if ((buttons & J_A))
	xor	a, a
	ldhl	sp,	#2
	or	a, (hl)
	jr	Z, 00110$
	C$Character.h$171$2_0$165	= .
	.globl	C$Character.h$171$2_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:171: character->hasJumped = 1;
	inc	hl
	inc	hl
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	C$Character.h$172$2_0$165	= .
	.globl	C$Character.h$172$2_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:172: character->jumpedFrames = 0;
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
00110$:
	C$Character.h$176$1_0$160	= .
	.globl	C$Character.h$176$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:176: if (character->hasJumped && (buttons & J_A))
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
	C$Character.h$179$2_0$166	= .
	.globl	C$Character.h$179$2_0$166
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:179: moveY = -1;
	dec	hl
	ld	(hl), #0xff
	C$Character.h$182$2_0$166	= .
	.globl	C$Character.h$182$2_0$166
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:182: character->jumpedFrames++;
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
	C$Character.h$186$1_0$160	= .
	.globl	C$Character.h$186$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:186: character->movementForceX = moveX;
	ld	hl, #0x000c
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$187$1_0$160	= .
	.globl	C$Character.h$187$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:187: character->movementForceY = moveY;
	ld	hl, #0x000d
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$188$1_0$160	= .
	.globl	C$Character.h$188$1_0$160
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:188: }
	add	sp, #8
	C$Character.h$188$1_0$160	= .
	.globl	C$Character.h$188$1_0$160
	XG$MoveCharacterWithJoypad$0$0	= .
	.globl	XG$MoveCharacterWithJoypad$0$0
	ret
	G$SetupCharacter$0$0	= .
	.globl	G$SetupCharacter$0$0
	C$Character.h$191$1_0$168	= .
	.globl	C$Character.h$191$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:191: void SetupCharacter(Character* character, uint8_t spriteId, uint8_t tileWidth, uint8_t tileHeight, uint8_t tilesetStart, uint8_t totalFrames, const unsigned char* tilemap)
;	---------------------------------
; Function SetupCharacter
; ---------------------------------
_SetupCharacter::
	dec	sp
	ldhl	sp,	#0
	ld	(hl), a
	C$Character.h$193$1_0$168	= .
	.globl	C$Character.h$193$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:193: character->tilemap = tilemap;
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
	C$Character.h$194$1_0$168	= .
	.globl	C$Character.h$194$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:194: character->spriteId = spriteId;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$195$1_0$168	= .
	.globl	C$Character.h$195$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:195: character->spriteTileWidth = tileWidth;
	ld	c, e
	ld	b, d
	inc	bc
	ldhl	sp,	#3
	C$Character.h$196$1_0$168	= .
	.globl	C$Character.h$196$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:196: character->spriteTileHeight = tileHeight;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$197$1_0$168	= .
	.globl	C$Character.h$197$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:197: character->tilesetStart = tilesetStart;
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#5
	C$Character.h$198$1_0$168	= .
	.globl	C$Character.h$198$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:198: character->spriteFrames = totalFrames;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$199$1_0$168	= .
	.globl	C$Character.h$199$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:199: character->underfootState = 0;
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$200$1_0$168	= .
	.globl	C$Character.h$200$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:200: character->jumpedFrames = 0;
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$201$1_0$168	= .
	.globl	C$Character.h$201$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:201: character->hasJumped = 0;
	ld	hl, #0x000f
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$203$1_0$168	= .
	.globl	C$Character.h$203$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:203: LoadSpriteFrame(character, 0);
	xor	a, a
	call	_LoadSpriteFrame
	C$Character.h$204$1_0$168	= .
	.globl	C$Character.h$204$1_0$168
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:204: }
	inc	sp
	pop	hl
	add	sp, #6
	jp	(hl)
	G$ShowTitle$0$0	= .
	.globl	G$ShowTitle$0$0
	C$main.c$26$1_0$173	= .
	.globl	C$main.c$26$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:26: void ShowTitle(void)
;	---------------------------------
; Function ShowTitle
; ---------------------------------
_ShowTitle::
	C$main.c$29$1_0$173	= .
	.globl	C$main.c$29$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:29: set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);
	ld	de, #_SplashScreenSprite_tileset
	push	de
	ld	hl, #0xc800
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$32$1_0$173	= .
	.globl	C$main.c$32$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:32: set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);
	ld	de, #_SplashScreenSprite_tilemap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$33$1_0$173	= .
	.globl	C$main.c$33$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:33: }
	C$main.c$33$1_0$173	= .
	.globl	C$main.c$33$1_0$173
	XG$ShowTitle$0$0	= .
	.globl	XG$ShowTitle$0$0
	ret
	G$SetupBackGround$0$0	= .
	.globl	G$SetupBackGround$0$0
	C$main.c$35$1_0$174	= .
	.globl	C$main.c$35$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:35: void SetupBackGround()
;	---------------------------------
; Function SetupBackGround
; ---------------------------------
_SetupBackGround::
	C$main.c$38$1_0$174	= .
	.globl	C$main.c$38$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:38: set_bkg_data(0, BackGroundSprite_tileset_size, BackGroundSprite_tileset);
	ld	de, #_BackGroundSprite_tileset
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$41$1_0$174	= .
	.globl	C$main.c$41$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:41: set_bkg_tiles(0, 0, 40, 18, BackGroundSprite_tilemap);
	ld	de, #_BackGroundSprite_tilemap
	push	de
	ld	hl, #0x1228
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$42$1_0$174	= .
	.globl	C$main.c$42$1_0$174
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:42: }
	C$main.c$42$1_0$174	= .
	.globl	C$main.c$42$1_0$174
	XG$SetupBackGround$0$0	= .
	.globl	XG$SetupBackGround$0$0
	ret
	G$DetectCollisions$0$0	= .
	.globl	G$DetectCollisions$0$0
	C$main.c$44$1_0$176	= .
	.globl	C$main.c$44$1_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:44: void DetectCollisions(Character *character, uint8_t *predictedX, uint8_t *predictedY)
;	---------------------------------
; Function DetectCollisions
; ---------------------------------
_DetectCollisions::
	C$main.c$47$1_0$176	= .
	.globl	C$main.c$47$1_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:47: if (*predictedY >= GLOUND_LEVEL)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	C$main.c$53$1_0$176	= .
	.globl	C$main.c$53$1_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:53: character->velocityY = 0;
	ld	a, e
	add	a, #0x09
	ld	e, a
	jr	NC, 00122$
	inc	d
00122$:
	C$main.c$47$1_0$176	= .
	.globl	C$main.c$47$1_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:47: if (*predictedY >= GLOUND_LEVEL)
	ld	a, l
	sub	a, #0x82
	jr	C, 00104$
	C$main.c$50$2_0$177	= .
	.globl	C$main.c$50$2_0$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:50: *predictedY = GLOUND_LEVEL; 
	ld	a, #0x82
	ld	(bc), a
	C$main.c$53$2_0$177	= .
	.globl	C$main.c$53$2_0$177
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:53: character->velocityY = 0;
	xor	a, a
	ld	(de), a
	jr	00106$
00104$:
	C$main.c$54$1_0$176	= .
	.globl	C$main.c$54$1_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:54: }else if(*predictedY < MAX_HEIGHT_LEVEL)
	ld	a, l
	sub	a, #0x14
	jr	NC, 00106$
	C$main.c$57$2_0$178	= .
	.globl	C$main.c$57$2_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:57: *predictedY = MAX_HEIGHT_LEVEL; 
	ld	a, #0x14
	ld	(bc), a
	C$main.c$60$2_0$178	= .
	.globl	C$main.c$60$2_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:60: character->velocityY = 0;
	xor	a, a
	ld	(de), a
00106$:
	C$main.c$62$1_0$176	= .
	.globl	C$main.c$62$1_0$176
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:62: }
	pop	hl
	pop	af
	jp	(hl)
	G$MovementPhysics$0$0	= .
	.globl	G$MovementPhysics$0$0
	C$main.c$64$1_0$180	= .
	.globl	C$main.c$64$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:64: void MovementPhysics(Character *character, uint8_t slowDownFrames)
;	---------------------------------
; Function MovementPhysics
; ---------------------------------
_MovementPhysics::
	add	sp, #-9
	ldhl	sp,	#7
	ld	a, e
	ld	(hl+), a
	C$main.c$67$1_1$180	= .
	.globl	C$main.c$67$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:67: if (character->movementForceY != 0)
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
	C$main.c$69$1_1$180	= .
	.globl	C$main.c$69$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:69: character->velocityY += character->movementForceY;
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	C$main.c$67$1_0$180	= .
	.globl	C$main.c$67$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:67: if (character->movementForceY != 0)
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
	jr	Z, 00116$
	C$main.c$69$2_0$181	= .
	.globl	C$main.c$69$2_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:69: character->velocityY += character->movementForceY;
	pop	de
	push	de
	ld	a, (de)
	add	a, (hl)
	ld	c, a
	pop	hl
	push	hl
	ld	(hl), c
	C$main.c$70$2_0$181	= .
	.globl	C$main.c$70$2_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:70: jumpFrameCount = 0;
	ld	hl, #_jumpFrameCount
	ld	(hl), #0x00
	jr	00117$
00116$:
	C$main.c$74$1_0$180	= .
	.globl	C$main.c$74$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:74: else if (character->underfootState & FOOT_IN_AIR)
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
	C$main.c$77$2_0$182	= .
	.globl	C$main.c$77$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:77: jumpFrameCount = (jumpFrameCount + 1) % 120;
	ld	hl, #_jumpFrameCount
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	bc, #0x0078
	call	__modsint
	ld	hl, #_jumpFrameCount
	ld	(hl), c
	C$main.c$80$2_0$182	= .
	.globl	C$main.c$80$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:80: if (jumpFrameCount < 3)
	ld	a, (hl)
	sub	a, #0x03
	jr	NC, 00111$
	C$main.c$81$2_0$182	= .
	.globl	C$main.c$81$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:81: character->velocityY = -2;
	pop	hl
	ld	(hl), #0xfe
	push	hl
	jr	00117$
00111$:
	C$main.c$82$2_0$182	= .
	.globl	C$main.c$82$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:82: else if (jumpFrameCount < 10)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0a
	jr	NC, 00108$
	C$main.c$83$2_0$182	= .
	.globl	C$main.c$83$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:83: character->velocityY = -1;
	pop	hl
	ld	(hl), #0xff
	push	hl
	jr	00117$
00108$:
	C$main.c$84$2_0$182	= .
	.globl	C$main.c$84$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:84: else if (jumpFrameCount < 14)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0e
	jr	NC, 00105$
	C$main.c$85$2_0$182	= .
	.globl	C$main.c$85$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:85: character->velocityY = 0;
	pop	hl
	ld	(hl), #0x00
	push	hl
	jr	00117$
00105$:
	C$main.c$86$2_0$182	= .
	.globl	C$main.c$86$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:86: else if (jumpFrameCount < 20)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x14
	jr	NC, 00102$
	C$main.c$87$2_0$182	= .
	.globl	C$main.c$87$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:87: character->velocityY = 1;
	pop	hl
	ld	(hl), #0x01
	push	hl
	jr	00117$
00102$:
	C$main.c$89$2_0$182	= .
	.globl	C$main.c$89$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:89: character->velocityY = 2;
	pop	hl
	ld	(hl), #0x02
	push	hl
00117$:
	C$main.c$93$1_0$180	= .
	.globl	C$main.c$93$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:93: if (character->velocityY != 0 && character->velocityY < -3)
	pop	de
	push	de
	ld	a, (de)
	or	a,a
	jr	Z, 00119$
	xor	a, #0x80
	sub	a, #0x7d
	jr	NC, 00119$
	C$main.c$94$1_0$180	= .
	.globl	C$main.c$94$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:94: character->velocityY = -3;
	pop	hl
	ld	(hl), #0xfd
	push	hl
00119$:
	C$main.c$93$1_1$180	= .
	.globl	C$main.c$93$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:93: if (character->velocityY != 0 && character->velocityY < -3)
	pop	de
	push	de
	ld	a, (de)
	C$main.c$95$1_0$180	= .
	.globl	C$main.c$95$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:95: if (character->velocityY != 0 && character->velocityY > 3)
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
	C$main.c$96$1_0$180	= .
	.globl	C$main.c$96$1_0$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:96: character->velocityY = 3;
	pop	hl
	ld	(hl), #0x03
	push	hl
00122$:
	C$main.c$99$1_1$183	= .
	.globl	C$main.c$99$1_1$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:99: uint8_t predictedY = character->y + character->velocityY;
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
	C$main.c$102$1_1$183	= .
	.globl	C$main.c$102$1_1$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:102: DetectCollisions(character, &character->x, &predictedY);
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
	C$main.c$105$1_1$183	= .
	.globl	C$main.c$105$1_1$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:105: MoveCharacter(character, character->x, predictedY);
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
	C$main.c$108$1_1$183	= .
	.globl	C$main.c$108$1_1$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:108: lastMovementY = character->movementForceY;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(#_lastMovementY),a
	C$main.c$109$1_1$180	= .
	.globl	C$main.c$109$1_1$180
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:109: }
	add	sp, #9
	C$main.c$109$1_1$180	= .
	.globl	C$main.c$109$1_1$180
	XG$MovementPhysics$0$0	= .
	.globl	XG$MovementPhysics$0$0
	ret
	G$Hit$0$0	= .
	.globl	G$Hit$0$0
	C$main.c$111$1_1$185	= .
	.globl	C$main.c$111$1_1$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:111: BOOLEAN Hit(uint8_t playerX, uint8_t playerY, uint8_t objX, uint8_t objY)
;	---------------------------------
; Function Hit
; ---------------------------------
_Hit::
	add	sp, #-5
	ld	c, a
	ldhl	sp,	#4
	ld	(hl), e
	C$main.c$113$1_0$185	= .
	.globl	C$main.c$113$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:113: return (playerX < objX + 8 && objX < playerX + 8) && (playerY < objY + 8 && objY < playerY + 8) ;
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl-), a
	ld	b, #0x00
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00132$
	bit	7, d
	jr	NZ, 00133$
	cp	a, a
	jr	00133$
00132$:
	bit	7, d
	jr	Z, 00133$
	scf
00133$:
	jr	NC, 00103$
	ld	hl, #0x0008
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	ld	e, a
	bit	7, e
	jr	Z, 00134$
	bit	7, d
	jr	NZ, 00135$
	cp	a, a
	jr	00135$
00134$:
	bit	7, d
	jr	Z, 00135$
	scf
00135$:
	jr	NC, 00103$
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	(hl), #0x00
	pop	de
	push	de
	ld	hl, #0x0008
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl+), a
	ld	a, (hl-)
	dec	hl
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z, 00136$
	bit	7, d
	jr	NZ, 00137$
	cp	a, a
	jr	00137$
00136$:
	bit	7, d
	jr	Z, 00137$
	scf
00137$:
	jr	NC, 00103$
	ld	hl, #0x0008
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	ld	e, a
	bit	7, e
	jr	Z, 00138$
	bit	7, d
	jr	NZ, 00139$
	cp	a, a
	jr	00139$
00138$:
	bit	7, d
	jr	Z, 00139$
	scf
00139$:
	jr	C, 00104$
00103$:
	xor	a, a
	jr	00105$
00104$:
	ld	a, #0x01
00105$:
	C$main.c$114$1_0$185	= .
	.globl	C$main.c$114$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:114: }
	add	sp, #5
	pop	hl
	pop	bc
	jp	(hl)
	G$SetupBlock$0$0	= .
	.globl	G$SetupBlock$0$0
	C$main.c$116$1_0$186	= .
	.globl	C$main.c$116$1_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:116: void SetupBlock()
;	---------------------------------
; Function SetupBlock
; ---------------------------------
_SetupBlock::
	dec	sp
	dec	sp
	C$main.c$119$1_0$186	= .
	.globl	C$main.c$119$1_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:119: set_sprite_data(BirdSprite_tileset_size + 1, 4, blocksprite_tileset);
	ld	de, #_blocksprite_tileset
	push	de
	ld	hl, #0x427
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$121$2_0$186	= .
	.globl	C$main.c$121$2_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:121: for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ld	b, #0x00
00111$:
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:123: set_sprite_tile(i * blockOffset + 4, 39); 
	ld	a,b
	cp	a,#0x04
	jp	NC,00113$
	add	a, a
	add	a, a
	ld	c, a
	ld	e, c
	inc	e
	inc	e
	inc	e
	inc	e
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, #<(_shadow_OAM)
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_shadow_OAM)
	adc	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	(hl), #0x27
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:124: set_sprite_tile(i * blockOffset + 5, 40); 
	ld	a, c
	add	a, #0x05
	ldhl	sp,	#0
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	a, #<(_shadow_OAM)
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_shadow_OAM)
	adc	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	(hl), #0x28
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:125: set_sprite_tile(i * blockOffset + 6, 41); 
	ld	a, c
	add	a, #0x06
	ldhl	sp,	#1
	ld	(hl), a
	ld	d, (hl)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), #0x29
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:126: set_sprite_tile(i * blockOffset + 7, 42); 
	ld	a, c
	add	a, #0x07
	ld	c, a
	ld	d, c
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_shadow_OAM
	add	hl, de
	inc	hl
	inc	hl
	pop	de
	ld	(hl), #0x2a
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:128: move_sprite(i * blockOffset +4, 30, 30);
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x1e
	ld	(hl+), a
	ld	(hl), #0x1e
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:129: move_sprite(i * blockOffset +5, 30, 38);
	ldhl	sp,	#0
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x26
	ld	(hl+), a
	ld	(hl), #0x1e
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:130: move_sprite(i * blockOffset +6, 38, 30);
	ldhl	sp,	#1
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x1e
	ld	(hl+), a
	ld	(hl), #0x26
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:131: move_sprite(i * blockOffset +7, 38, 38);
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x26
	ld	(hl+), a
	ld	(hl), #0x26
	C$main.c$121$2_0$187	= .
	.globl	C$main.c$121$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:121: for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	inc	b
	jp	00111$
00113$:
	C$main.c$133$2_0$186	= .
	.globl	C$main.c$133$2_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:133: }
	inc	sp
	inc	sp
	C$main.c$133$2_0$186	= .
	.globl	C$main.c$133$2_0$186
	XG$SetupBlock$0$0	= .
	.globl	XG$SetupBlock$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$135$2_0$214	= .
	.globl	C$main.c$135$2_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:135: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
	C$main.c$137$1_0$214	= .
	.globl	C$main.c$137$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:137: SetupBackGround();
	call	_SetupBackGround
	C$main.c$139$1_0$214	= .
	.globl	C$main.c$139$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:139: set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);
	ld	de, #_BirdSprite_tileset
	push	de
	ld	hl, #0x2600
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$141$1_0$214	= .
	.globl	C$main.c$141$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:141: SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);
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
	C$main.c$143$1_0$214	= .
	.globl	C$main.c$143$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:143: MoveCharacter(&player, 16, 56);
	ld	a, #0x38
	push	af
	inc	sp
	ld	a, #0x10
	ld	de, #_player
	call	_MoveCharacter
	C$main.c$145$1_0$214	= .
	.globl	C$main.c$145$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:145: SetupBlock();
	call	_SetupBlock
	C$main.c$147$1_0$214	= .
	.globl	C$main.c$147$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:147: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$148$1_0$214	= .
	.globl	C$main.c$148$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:148: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$149$1_0$214	= .
	.globl	C$main.c$149$1_0$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:149: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$151$2_0$215	= .
	.globl	C$main.c$151$2_0$215
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:151: BOOLEAN gameLoop = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	C$main.c$153$2_1$216	= .
	.globl	C$main.c$153$2_1$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:153: while(gameLoop)
00103$:
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00105$
	C$main.c$155$2_1$216	= .
	.globl	C$main.c$155$2_1$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:155: player.underfootState = player.y >= GLOUND_LEVEL ? FOOT_ON_LAND : FOOT_IN_AIR;
	ld	a, (#(_player + 7) + 0)
	sub	a, #0x82
	jr	C, 00109$
	ld	a, #0x01
	jr	00110$
00109$:
	ld	a, #0x02
00110$:
	ld	(#(_player + 14)),a
	C$main.c$156$2_1$216	= .
	.globl	C$main.c$156$2_1$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:156: MoveCharacterWithJoypad(&player);
	ld	de, #_player
	call	_MoveCharacterWithJoypad
	C$main.c$157$2_1$216	= .
	.globl	C$main.c$157$2_1$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:157: MovementPhysics(&player, 3);
	ld	a, #0x03
	ld	de, #_player
	call	_MovementPhysics
	C$main.c$158$2_1$216	= .
	.globl	C$main.c$158$2_1$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:158: LoadNextSpriteFrame(&player);
	ld	de, #_player
	call	_LoadNextSpriteFrame
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1392: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG + 0)
	inc	a
	ldh	(_SCX_REG + 0), a
	C$main.c$162$2_1$216	= .
	.globl	C$main.c$162$2_1$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:162: if(Hit(player.x, player.y, 0, 0))
	ld	hl, #(_player + 7)
	ld	c, (hl)
	ld	hl, #(_player + 6)
	ld	b, (hl)
	xor	a, a
	rrca
	push	af
	ld	e, c
	ld	a, b
	call	_Hit
	or	a, a
	jr	Z, 00102$
	C$main.c$164$3_1$217	= .
	.globl	C$main.c$164$3_1$217
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:164: gameLoop= 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
00102$:
	C$main.c$166$2_1$216	= .
	.globl	C$main.c$166$2_1$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:166: wait_vbl_done();
	call	_wait_vbl_done
	jr	00103$
00105$:
	C$main.c$168$1_1$215	= .
	.globl	C$main.c$168$1_1$215
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:168: printf("GameOver");
	ld	de, #___str_0
	push	de
	call	_printf
	pop	hl
	C$main.c$169$1_1$214	= .
	.globl	C$main.c$169$1_1$214
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:169: }
	inc	sp
	C$main.c$169$1_1$214	= .
	.globl	C$main.c$169$1_1$214
	XG$main$0$0	= .
	.globl	XG$main$0$0
	ret
Fmain$__str_0$0_0$0 == .
___str_0:
	.ascii "GameOver"
	.db 0x00
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
