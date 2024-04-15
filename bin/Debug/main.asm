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
	.globl _ScrollBlock
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
	.globl _delay
	.globl _initarand
	.globl _slowingX
	.globl _lastMovementY
	.globl _lastMovementX
	.globl _jumpFrameCount
	.globl _animationFrameCount
	.globl _movementFrameCount
	.globl _block
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
G$block$0_0$0==.
_block::
	.ds 24
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
	C$Character.h$67$0_0$135	= .
	.globl	C$Character.h$67$0_0$135
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
	C$Character.h$69$1_0$135	= .
	.globl	C$Character.h$69$1_0$135
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
	C$Character.h$71$1_1$136	= .
	.globl	C$Character.h$71$1_1$136
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
	C$Character.h$74$2_1$135	= .
	.globl	C$Character.h$74$2_1$135
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
	C$Character.h$76$2_1$135	= .
	.globl	C$Character.h$76$2_1$135
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	ld	(hl), #0x00
00106$:
	C$Character.h$71$2_1$135	= .
	.globl	C$Character.h$71$2_1$135
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:71: uint8_t spriteCount = character->spriteTileWidth * character->spriteTileHeight;
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#16
	ld	(hl), a
	C$Character.h$76$4_1$139	= .
	.globl	C$Character.h$76$4_1$139
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#16
	sub	a, (hl)
	jp	Z,00110$
	C$Character.h$79$2_1$135	= .
	.globl	C$Character.h$79$2_1$135
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
	C$Character.h$80$2_1$135	= .
	.globl	C$Character.h$80$2_1$135
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
	C$Character.h$83$5_1$140	= .
	.globl	C$Character.h$83$5_1$140
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
	C$Character.h$76$4_1$139	= .
	.globl	C$Character.h$76$4_1$139
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:76: for (uint8_t x = 0; x != character->spriteTileWidth; x++)
	ldhl	sp,	#22
	inc	(hl)
	jp	00106$
00110$:
	C$Character.h$74$2_1$137	= .
	.globl	C$Character.h$74$2_1$137
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:74: for (uint8_t y = 0; y != character->spriteTileHeight; y++)
	ldhl	sp,	#21
	inc	(hl)
	jp	00109$
00111$:
	C$Character.h$93$2_1$135	= .
	.globl	C$Character.h$93$2_1$135
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:93: }
	add	sp, #23
	C$Character.h$93$2_1$135	= .
	.globl	C$Character.h$93$2_1$135
	XG$LoadSpriteFrame$0$0	= .
	.globl	XG$LoadSpriteFrame$0$0
	ret
	G$RefreshSprite$0$0	= .
	.globl	G$RefreshSprite$0$0
	C$Character.h$95$2_1$148	= .
	.globl	C$Character.h$95$2_1$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:95: void RefreshSprite(Character *character)
;	---------------------------------
; Function RefreshSprite
; ---------------------------------
_RefreshSprite::
	C$Character.h$97$1_0$148	= .
	.globl	C$Character.h$97$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:97: LoadSpriteFrame(character, character->spriteCurrentFrame);
	ld	hl, #0x0004
	add	hl, de
	ld	c, (hl)
	ld	a, c
	C$Character.h$98$1_0$148	= .
	.globl	C$Character.h$98$1_0$148
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:98: }
	C$Character.h$98$1_0$148	= .
	.globl	C$Character.h$98$1_0$148
	XG$RefreshSprite$0$0	= .
	.globl	XG$RefreshSprite$0$0
	jp	_LoadSpriteFrame
	G$LoadNextSpriteFrame$0$0	= .
	.globl	G$LoadNextSpriteFrame$0$0
	C$Character.h$100$1_0$150	= .
	.globl	C$Character.h$100$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:100: void LoadNextSpriteFrame(Character *character)
;	---------------------------------
; Function LoadNextSpriteFrame
; ---------------------------------
_LoadNextSpriteFrame::
	add	sp, #-4
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
	C$Character.h$103$1_0$150	= .
	.globl	C$Character.h$103$1_0$150
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
	C$Character.h$105$1_0$150	= .
	.globl	C$Character.h$105$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:105: RefreshSprite(character);
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_RefreshSprite
	C$Character.h$106$1_0$150	= .
	.globl	C$Character.h$106$1_0$150
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:106: }
	add	sp, #4
	C$Character.h$106$1_0$150	= .
	.globl	C$Character.h$106$1_0$150
	XG$LoadNextSpriteFrame$0$0	= .
	.globl	XG$LoadNextSpriteFrame$0$0
	ret
	G$SetSpriteFlip$0$0	= .
	.globl	G$SetSpriteFlip$0$0
	C$Character.h$108$1_0$152	= .
	.globl	C$Character.h$108$1_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:108: void SetSpriteFlip(Character *character, uint8_t flipX, uint8_t flipY)
;	---------------------------------
; Function SetSpriteFlip
; ---------------------------------
_SetSpriteFlip::
	ld	c, a
	C$Character.h$110$1_0$152	= .
	.globl	C$Character.h$110$1_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:110: character->spriteFlippedX = flipX;
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), c
	C$Character.h$111$1_0$152	= .
	.globl	C$Character.h$111$1_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:111: character->spriteFlippedY = flipY;
	ld	hl, #0x000b
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$113$1_0$152	= .
	.globl	C$Character.h$113$1_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:113: RefreshSprite(character);
	call	_RefreshSprite
	C$Character.h$114$1_0$152	= .
	.globl	C$Character.h$114$1_0$152
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:114: }
	pop	hl
	inc	sp
	jp	(hl)
	G$MoveCharacter$0$0	= .
	.globl	G$MoveCharacter$0$0
	C$Character.h$116$1_0$154	= .
	.globl	C$Character.h$116$1_0$154
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
	C$Character.h$119$1_0$154	= .
	.globl	C$Character.h$119$1_0$154
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:119: character->x = x;
	ld	hl, #0x0006
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#5
	ld	a, (hl)
	ld	(de), a
	C$Character.h$120$1_0$154	= .
	.globl	C$Character.h$120$1_0$154
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:120: character->y = y;
	ld	hl, #0x0007
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	C$Character.h$122$4_0$157	= .
	.globl	C$Character.h$122$4_0$157
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
	C$Character.h$124$2_0$154	= .
	.globl	C$Character.h$124$2_0$154
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
	C$Character.h$127$5_0$158	= .
	.globl	C$Character.h$127$5_0$158
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
	C$Character.h$124$4_0$157	= .
	.globl	C$Character.h$124$4_0$157
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:124: for (uint8_t ix = 0; ix != character->spriteTileWidth; ix++)
	ldhl	sp,	#7
	inc	(hl)
	jr	00105$
00109$:
	C$Character.h$122$2_0$155	= .
	.globl	C$Character.h$122$2_0$155
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:122: for (uint8_t iy = 0; iy != character->spriteTileHeight; iy++)
	ldhl	sp,	#6
	inc	(hl)
	jr	00108$
00110$:
	C$Character.h$133$2_0$154	= .
	.globl	C$Character.h$133$2_0$154
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:133: }
	add	sp, #8
	pop	hl
	inc	sp
	jp	(hl)
	G$ScrollCharacter$0$0	= .
	.globl	G$ScrollCharacter$0$0
	C$Character.h$135$2_0$163	= .
	.globl	C$Character.h$135$2_0$163
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:135: void ScrollCharacter(Character *character, int8_t x, int8_t y)
;	---------------------------------
; Function ScrollCharacter
; ---------------------------------
_ScrollCharacter::
	push	de
	ld	c, a
	C$Character.h$137$1_0$163	= .
	.globl	C$Character.h$137$1_0$163
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
	C$Character.h$138$1_0$163	= .
	.globl	C$Character.h$138$1_0$163
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
	C$Character.h$140$1_0$163	= .
	.globl	C$Character.h$140$1_0$163
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
	C$Character.h$141$1_0$163	= .
	.globl	C$Character.h$141$1_0$163
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:141: }
	call	_MoveCharacter
	pop	hl
	pop	hl
	inc	sp
	jp	(hl)
	G$MoveCharacterWithJoypad$0$0	= .
	.globl	G$MoveCharacterWithJoypad$0$0
	C$Character.h$143$1_0$165	= .
	.globl	C$Character.h$143$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:143: void MoveCharacterWithJoypad(Character *character)
;	---------------------------------
; Function MoveCharacterWithJoypad
; ---------------------------------
_MoveCharacterWithJoypad::
	add	sp, #-8
	ld	c, e
	ld	b, d
	C$Character.h$146$1_0$165	= .
	.globl	C$Character.h$146$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:146: uint8_t buttons = joypad();
	call	_joypad
	C$Character.h$148$1_0$165	= .
	.globl	C$Character.h$148$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:148: int8_t moveX = 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
	C$Character.h$149$1_0$165	= .
	.globl	C$Character.h$149$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:149: int8_t moveY = 0;
	inc	hl
	ld	(hl), #0x00
	C$Character.h$151$1_0$165	= .
	.globl	C$Character.h$151$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:151: if (buttons & J_LEFT)
	bit	1, a
	jr	Z, 00104$
	C$Character.h$153$2_0$166	= .
	.globl	C$Character.h$153$2_0$166
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:153: moveX = -1;
	ldhl	sp,	#0
	ld	(hl), #0xff
	jr	00108$
00104$:
	C$Character.h$155$1_0$165	= .
	.globl	C$Character.h$155$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:155: else if (buttons & J_RIGHT)
	bit	0, a
	jr	Z, 00108$
	C$Character.h$157$2_0$167	= .
	.globl	C$Character.h$157$2_0$167
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:157: moveX = 1;
	ldhl	sp,	#0
	ld	(hl), #0x01
	C$Character.h$163$1_0$165	= .
	.globl	C$Character.h$163$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:163: else if (buttons & J_DOWN)
00108$:
	C$Character.h$168$1_0$165	= .
	.globl	C$Character.h$168$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:168: if ((buttons & J_A))
	and	a, #0x10
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), #0x00
	C$Character.h$178$1_0$165	= .
	.globl	C$Character.h$178$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:178: character->hasJumped = 1;
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
	C$Character.h$179$1_0$165	= .
	.globl	C$Character.h$179$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:179: character->jumpedFrames = 0;
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
	C$Character.h$168$1_0$165	= .
	.globl	C$Character.h$168$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:168: if ((buttons & J_A))
	xor	a, a
	ldhl	sp,	#2
	or	a, (hl)
	jr	Z, 00110$
	C$Character.h$171$2_0$170	= .
	.globl	C$Character.h$171$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:171: NR10_REG = 0x00;
	C$Character.h$172$2_0$170	= .
	.globl	C$Character.h$172$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:172: NR11_REG = 0x81;
	C$Character.h$173$2_0$170	= .
	.globl	C$Character.h$173$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:173: NR12_REG = 0x43;
	C$Character.h$174$2_0$170	= .
	.globl	C$Character.h$174$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:174: NR13_REG = 0x73;
	C$Character.h$175$2_0$170	= .
	.globl	C$Character.h$175$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:175: NR14_REG = 0x86;
	C$Character.h$178$2_0$170	= .
	.globl	C$Character.h$178$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:178: character->hasJumped = 1;
	inc	hl
	inc	hl
	xor	a, a
	ldh	(_NR10_REG + 0), a
	ld	a, #0x81
	ldh	(_NR11_REG + 0), a
	ld	a, #0x43
	ldh	(_NR12_REG + 0), a
	ld	a, #0x73
	ldh	(_NR13_REG + 0), a
	ld	a, #0x86
	ldh	(_NR14_REG + 0), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	C$Character.h$179$2_0$170	= .
	.globl	C$Character.h$179$2_0$170
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:179: character->jumpedFrames = 0;
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
00110$:
	C$Character.h$183$1_0$165	= .
	.globl	C$Character.h$183$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:183: if (character->hasJumped && (buttons & J_A))
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
	C$Character.h$186$2_0$171	= .
	.globl	C$Character.h$186$2_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:186: moveY = -1;
	dec	hl
	ld	(hl), #0xff
	C$Character.h$189$2_0$171	= .
	.globl	C$Character.h$189$2_0$171
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:189: character->jumpedFrames++;
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
	C$Character.h$193$1_0$165	= .
	.globl	C$Character.h$193$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:193: character->movementForceX = moveX;
	ld	hl, #0x000c
	add	hl, bc
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$194$1_0$165	= .
	.globl	C$Character.h$194$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:194: character->movementForceY = moveY;
	ld	hl, #0x000d
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#1
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$195$1_0$165	= .
	.globl	C$Character.h$195$1_0$165
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:195: }
	add	sp, #8
	C$Character.h$195$1_0$165	= .
	.globl	C$Character.h$195$1_0$165
	XG$MoveCharacterWithJoypad$0$0	= .
	.globl	XG$MoveCharacterWithJoypad$0$0
	ret
	G$SetupCharacter$0$0	= .
	.globl	G$SetupCharacter$0$0
	C$Character.h$198$1_0$173	= .
	.globl	C$Character.h$198$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:198: void SetupCharacter(Character* character, uint8_t spriteId, uint8_t tileWidth, uint8_t tileHeight, uint8_t tilesetStart, uint8_t totalFrames, const unsigned char* tilemap)
;	---------------------------------
; Function SetupCharacter
; ---------------------------------
_SetupCharacter::
	dec	sp
	ldhl	sp,	#0
	ld	(hl), a
	C$Character.h$200$1_0$173	= .
	.globl	C$Character.h$200$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:200: character->tilemap = tilemap;
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
	C$Character.h$201$1_0$173	= .
	.globl	C$Character.h$201$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:201: character->spriteId = spriteId;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(de), a
	C$Character.h$202$1_0$173	= .
	.globl	C$Character.h$202$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:202: character->spriteTileWidth = tileWidth;
	ld	c, e
	ld	b, d
	inc	bc
	ldhl	sp,	#3
	C$Character.h$203$1_0$173	= .
	.globl	C$Character.h$203$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:203: character->spriteTileHeight = tileHeight;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$204$1_0$173	= .
	.globl	C$Character.h$204$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:204: character->tilesetStart = tilesetStart;
	ld	hl, #0x0005
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,	#5
	C$Character.h$205$1_0$173	= .
	.globl	C$Character.h$205$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:205: character->spriteFrames = totalFrames;
	ld	a, (hl+)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$Character.h$206$1_0$173	= .
	.globl	C$Character.h$206$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:206: character->underfootState = 0;
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$207$1_0$173	= .
	.globl	C$Character.h$207$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:207: character->jumpedFrames = 0;
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$208$1_0$173	= .
	.globl	C$Character.h$208$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:208: character->hasJumped = 0;
	ld	hl, #0x000f
	add	hl, de
	ld	(hl), #0x00
	C$Character.h$210$1_0$173	= .
	.globl	C$Character.h$210$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:210: LoadSpriteFrame(character, 0);
	xor	a, a
	call	_LoadSpriteFrame
	C$Character.h$211$1_0$173	= .
	.globl	C$Character.h$211$1_0$173
;C:\gbdk_dev\Project\GB_PROJECT\source\Character.h:211: }
	inc	sp
	pop	hl
	add	sp, #6
	jp	(hl)
	G$ShowTitle$0$0	= .
	.globl	G$ShowTitle$0$0
	C$main.c$38$1_0$178	= .
	.globl	C$main.c$38$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:38: void ShowTitle(void)
;	---------------------------------
; Function ShowTitle
; ---------------------------------
_ShowTitle::
	C$main.c$41$1_0$178	= .
	.globl	C$main.c$41$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:41: set_bkg_data(0, SplashScreenSprite_tileset_size, SplashScreenSprite_tileset);
	ld	de, #_SplashScreenSprite_tileset
	push	de
	ld	hl, #0xc800
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$44$1_0$178	= .
	.globl	C$main.c$44$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:44: set_bkg_tiles(0, 0, 20, 18, SplashScreenSprite_tilemap);
	ld	de, #_SplashScreenSprite_tilemap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$46$1_0$178	= .
	.globl	C$main.c$46$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:46: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$47$1_0$178	= .
	.globl	C$main.c$47$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:47: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$48$1_0$178	= .
	.globl	C$main.c$48$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:48: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$49$1_0$178	= .
	.globl	C$main.c$49$1_0$178
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:49: }
	C$main.c$49$1_0$178	= .
	.globl	C$main.c$49$1_0$178
	XG$ShowTitle$0$0	= .
	.globl	XG$ShowTitle$0$0
	ret
	G$SetupBackGround$0$0	= .
	.globl	G$SetupBackGround$0$0
	C$main.c$51$1_0$179	= .
	.globl	C$main.c$51$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:51: void SetupBackGround()
;	---------------------------------
; Function SetupBackGround
; ---------------------------------
_SetupBackGround::
	C$main.c$54$1_0$179	= .
	.globl	C$main.c$54$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:54: set_bkg_data(0, BackGroundSprite_tileset_size, BackGroundSprite_tileset);
	ld	de, #_BackGroundSprite_tileset
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$57$1_0$179	= .
	.globl	C$main.c$57$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:57: set_bkg_tiles(0, 0, 40, 18, BackGroundSprite_tilemap);
	ld	de, #_BackGroundSprite_tilemap
	push	de
	ld	hl, #0x1228
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$58$1_0$179	= .
	.globl	C$main.c$58$1_0$179
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:58: }
	C$main.c$58$1_0$179	= .
	.globl	C$main.c$58$1_0$179
	XG$SetupBackGround$0$0	= .
	.globl	XG$SetupBackGround$0$0
	ret
	G$DetectCollisions$0$0	= .
	.globl	G$DetectCollisions$0$0
	C$main.c$60$1_0$181	= .
	.globl	C$main.c$60$1_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:60: void DetectCollisions(Character *character, uint8_t *predictedX, uint8_t *predictedY)
;	---------------------------------
; Function DetectCollisions
; ---------------------------------
_DetectCollisions::
	C$main.c$63$1_0$181	= .
	.globl	C$main.c$63$1_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:63: if (*predictedY >= GLOUND_LEVEL)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	C$main.c$69$1_0$181	= .
	.globl	C$main.c$69$1_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:69: character->velocityY = 0;
	ld	a, e
	add	a, #0x09
	ld	e, a
	jr	NC, 00122$
	inc	d
00122$:
	C$main.c$63$1_0$181	= .
	.globl	C$main.c$63$1_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:63: if (*predictedY >= GLOUND_LEVEL)
	ld	a, l
	sub	a, #0x82
	jr	C, 00104$
	C$main.c$66$2_0$182	= .
	.globl	C$main.c$66$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:66: *predictedY = GLOUND_LEVEL; 
	ld	a, #0x82
	ld	(bc), a
	C$main.c$69$2_0$182	= .
	.globl	C$main.c$69$2_0$182
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:69: character->velocityY = 0;
	xor	a, a
	ld	(de), a
	jr	00106$
00104$:
	C$main.c$70$1_0$181	= .
	.globl	C$main.c$70$1_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:70: }else if(*predictedY < MAX_HEIGHT_LEVEL)
	ld	a, l
	sub	a, #0x14
	jr	NC, 00106$
	C$main.c$73$2_0$183	= .
	.globl	C$main.c$73$2_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:73: *predictedY = MAX_HEIGHT_LEVEL; 
	ld	a, #0x14
	ld	(bc), a
	C$main.c$76$2_0$183	= .
	.globl	C$main.c$76$2_0$183
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:76: character->velocityY = 0;
	xor	a, a
	ld	(de), a
00106$:
	C$main.c$78$1_0$181	= .
	.globl	C$main.c$78$1_0$181
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:78: }
	pop	hl
	pop	af
	jp	(hl)
	G$MovementPhysics$0$0	= .
	.globl	G$MovementPhysics$0$0
	C$main.c$80$1_0$185	= .
	.globl	C$main.c$80$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:80: void MovementPhysics(Character *character, uint8_t slowDownFrames)
;	---------------------------------
; Function MovementPhysics
; ---------------------------------
_MovementPhysics::
	add	sp, #-9
	ldhl	sp,	#7
	ld	a, e
	ld	(hl+), a
	C$main.c$83$1_1$185	= .
	.globl	C$main.c$83$1_1$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:83: if (character->movementForceY != 0)
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
	C$main.c$85$1_1$185	= .
	.globl	C$main.c$85$1_1$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:85: character->velocityY += character->movementForceY;
	ld	(hl+), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0009
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	C$main.c$83$1_0$185	= .
	.globl	C$main.c$83$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:83: if (character->movementForceY != 0)
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
	jr	Z, 00116$
	C$main.c$85$2_0$186	= .
	.globl	C$main.c$85$2_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:85: character->velocityY += character->movementForceY;
	pop	de
	push	de
	ld	a, (de)
	add	a, (hl)
	ld	c, a
	pop	hl
	push	hl
	ld	(hl), c
	C$main.c$86$2_0$186	= .
	.globl	C$main.c$86$2_0$186
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:86: jumpFrameCount = 0;
	ld	hl, #_jumpFrameCount
	ld	(hl), #0x00
	jr	00117$
00116$:
	C$main.c$90$1_0$185	= .
	.globl	C$main.c$90$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:90: else if (character->underfootState & FOOT_IN_AIR)
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
	C$main.c$93$2_0$187	= .
	.globl	C$main.c$93$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:93: jumpFrameCount = (jumpFrameCount + 1) % 120;
	ld	hl, #_jumpFrameCount
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	bc, #0x0078
	call	__modsint
	ld	hl, #_jumpFrameCount
	ld	(hl), c
	C$main.c$96$2_0$187	= .
	.globl	C$main.c$96$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:96: if (jumpFrameCount < 3)
	ld	a, (hl)
	sub	a, #0x03
	jr	NC, 00111$
	C$main.c$97$2_0$187	= .
	.globl	C$main.c$97$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:97: character->velocityY = -2;
	pop	hl
	ld	(hl), #0xfe
	push	hl
	jr	00117$
00111$:
	C$main.c$98$2_0$187	= .
	.globl	C$main.c$98$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:98: else if (jumpFrameCount < 10)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0a
	jr	NC, 00108$
	C$main.c$99$2_0$187	= .
	.globl	C$main.c$99$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:99: character->velocityY = -1;
	pop	hl
	ld	(hl), #0xff
	push	hl
	jr	00117$
00108$:
	C$main.c$100$2_0$187	= .
	.globl	C$main.c$100$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:100: else if (jumpFrameCount < 14)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x0e
	jr	NC, 00105$
	C$main.c$101$2_0$187	= .
	.globl	C$main.c$101$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:101: character->velocityY = 0;
	pop	hl
	ld	(hl), #0x00
	push	hl
	jr	00117$
00105$:
	C$main.c$102$2_0$187	= .
	.globl	C$main.c$102$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:102: else if (jumpFrameCount < 20)
	ld	a, (#_jumpFrameCount)
	sub	a, #0x14
	jr	NC, 00102$
	C$main.c$103$2_0$187	= .
	.globl	C$main.c$103$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:103: character->velocityY = 1;
	pop	hl
	ld	(hl), #0x01
	push	hl
	jr	00117$
00102$:
	C$main.c$105$2_0$187	= .
	.globl	C$main.c$105$2_0$187
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:105: character->velocityY = 2;
	pop	hl
	ld	(hl), #0x02
	push	hl
00117$:
	C$main.c$109$1_0$185	= .
	.globl	C$main.c$109$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:109: if (character->velocityY != 0 && character->velocityY < -3)
	pop	de
	push	de
	ld	a, (de)
	or	a,a
	jr	Z, 00119$
	xor	a, #0x80
	sub	a, #0x7d
	jr	NC, 00119$
	C$main.c$110$1_0$185	= .
	.globl	C$main.c$110$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:110: character->velocityY = -3;
	pop	hl
	ld	(hl), #0xfd
	push	hl
00119$:
	C$main.c$109$1_1$185	= .
	.globl	C$main.c$109$1_1$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:109: if (character->velocityY != 0 && character->velocityY < -3)
	pop	de
	push	de
	ld	a, (de)
	C$main.c$111$1_0$185	= .
	.globl	C$main.c$111$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:111: if (character->velocityY != 0 && character->velocityY > 3)
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
	C$main.c$112$1_0$185	= .
	.globl	C$main.c$112$1_0$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:112: character->velocityY = 3;
	pop	hl
	ld	(hl), #0x03
	push	hl
00122$:
	C$main.c$115$1_1$188	= .
	.globl	C$main.c$115$1_1$188
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:115: uint8_t predictedY = character->y + character->velocityY;
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
	C$main.c$118$1_1$188	= .
	.globl	C$main.c$118$1_1$188
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:118: DetectCollisions(character, &character->x, &predictedY);
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
	C$main.c$121$1_1$188	= .
	.globl	C$main.c$121$1_1$188
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:121: MoveCharacter(character, character->x, predictedY);
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
	C$main.c$124$1_1$188	= .
	.globl	C$main.c$124$1_1$188
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:124: lastMovementY = character->movementForceY;
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	(#_lastMovementY),a
	C$main.c$125$1_1$185	= .
	.globl	C$main.c$125$1_1$185
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:125: }
	add	sp, #9
	C$main.c$125$1_1$185	= .
	.globl	C$main.c$125$1_1$185
	XG$MovementPhysics$0$0	= .
	.globl	XG$MovementPhysics$0$0
	ret
	G$Hit$0$0	= .
	.globl	G$Hit$0$0
	C$main.c$127$1_1$190	= .
	.globl	C$main.c$127$1_1$190
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:127: BOOLEAN Hit(uint8_t playerX, uint8_t playerY, uint8_t objX, uint8_t objY)
;	---------------------------------
; Function Hit
; ---------------------------------
_Hit::
	add	sp, #-5
	ld	c, a
	ldhl	sp,	#4
	ld	(hl), e
	C$main.c$129$1_0$190	= .
	.globl	C$main.c$129$1_0$190
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:129: return (playerX < objX + 8 && objX < playerX + 8) && (playerY < objY + 8 && objY < playerY + 8);
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
	C$main.c$130$1_0$190	= .
	.globl	C$main.c$130$1_0$190
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:130: }
	add	sp, #5
	pop	hl
	pop	bc
	jp	(hl)
	G$SetupBlock$0$0	= .
	.globl	G$SetupBlock$0$0
	C$main.c$132$1_0$192	= .
	.globl	C$main.c$132$1_0$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:132: void SetupBlock(Block* block)
;	---------------------------------
; Function SetupBlock
; ---------------------------------
_SetupBlock::
	add	sp, #-14
	ldhl	sp,	#9
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$main.c$135$1_0$192	= .
	.globl	C$main.c$135$1_0$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:135: set_sprite_data(BirdSprite_tileset_size + 1, 4, blocksprite_tileset);
	ld	de, #_blocksprite_tileset
	push	de
	ld	hl, #0x427
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$137$6_0$197	= .
	.globl	C$main.c$137$6_0$197
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:137: for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	inc	sp
	inc	sp
	push	hl
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0003
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#11
	ld	(hl), #0x00
00116$:
	ldhl	sp,	#11
	ld	a, (hl)
	sub	a, #0x06
	jp	NC, 00118$
	C$main.c$139$3_0$194	= .
	.globl	C$main.c$139$3_0$194
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:139: uint8_t baseSpriteId = i * blockOffset;
	ld	a, (hl)
	add	a, a
	add	a, a
	ldhl	sp,	#4
	ld	(hl), a
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:140: set_sprite_tile(baseSpriteId + 4, 39); 
	ld	a, (hl+)
	inc	hl
	ld	(hl), a
	ld	a, (hl)
	add	a, #0x04
	ldhl	sp,	#13
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00165$:
	ldhl	sp,	#12
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00165$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x27
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:141: set_sprite_tile(baseSpriteId + 5, 40); 
	ldhl	sp,	#6
	ld	a, (hl)
	add	a, #0x05
	ldhl	sp,	#13
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00166$:
	ldhl	sp,	#12
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00166$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x28
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:142: set_sprite_tile(baseSpriteId + 6, 41); 
	ldhl	sp,	#6
	ld	a, (hl)
	add	a, #0x06
	ldhl	sp,	#13
	ld	(hl), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	a, (hl-)
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00167$:
	ldhl	sp,	#12
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00167$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x29
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:143: set_sprite_tile(baseSpriteId + 7, 42);
	ldhl	sp,	#6
	ld	a, (hl)
	add	a, #0x07
	ld	c, a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#12
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00168$:
	ldhl	sp,	#12
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00168$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
	ld	(hl-), a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x2a
	C$main.c$145$2_0$192	= .
	.globl	C$main.c$145$2_0$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:145: for (uint8_t iy = 0; iy != block->blockHeight; iy++)
	ldhl	sp,	#12
	ld	(hl), #0x00
00113$:
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
	ldhl	sp,	#12
	ld	a, (hl)
	sub	a, b
	jr	Z, 00117$
	C$main.c$147$7_0$198	= .
	.globl	C$main.c$147$7_0$198
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:147: for (uint8_t ix = 0; ix != block->blockWidth; ix++)
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#12
	add	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
	ldhl	sp,	#13
	ld	(hl), #0x00
00110$:
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#8
	sub	a, (hl)
	jr	Z, 00114$
	C$main.c$149$2_0$192	= .
	.globl	C$main.c$149$2_0$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:149: uint8_t index = baseSpriteId + iy + (ix * block->blockWidth);
	ldhl	sp,	#8
	ld	e, (hl)
	ldhl	sp,	#13
	ld	a, (hl)
	call	__muluchar
	ldhl	sp,#8
	ld	(hl), c
	ld	a, (hl)
	ldhl	sp,	#5
	add	a, (hl)
	inc	hl
	ld	(hl), a
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:150: move_sprite(index, block[i].x + (ix * 8), block[i].y + (iy * 8));       
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	d, (hl)
	inc	hl
	add	a, a
	rl	d
	add	a, a
	rl	d
	ld	e, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	spillPairReg hl
;	spillPairReg hl
	ld	e,l
	ld	d,h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	c, (hl)
	ldhl	sp,	#12
	ld	a, (hl+)
	add	a, a
	add	a, a
	add	a, a
	add	a, c
	ld	b, a
	ld	a, (de)
	ld	c, a
	ld	a, (hl)
	add	a, a
	add	a, a
	add	a, a
	add	a, c
	ld	c, a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ldhl	sp,	#6
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$main.c$147$6_0$197	= .
	.globl	C$main.c$147$6_0$197
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:147: for (uint8_t ix = 0; ix != block->blockWidth; ix++)
	ldhl	sp,	#13
	inc	(hl)
	jr	00110$
00114$:
	C$main.c$145$4_0$195	= .
	.globl	C$main.c$145$4_0$195
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:145: for (uint8_t iy = 0; iy != block->blockHeight; iy++)
	ldhl	sp,	#12
	inc	(hl)
	jr	00113$
00117$:
	C$main.c$137$2_0$193	= .
	.globl	C$main.c$137$2_0$193
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:137: for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ldhl	sp,	#11
	inc	(hl)
	jp	00116$
00118$:
	C$main.c$154$2_0$192	= .
	.globl	C$main.c$154$2_0$192
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:154: }
	add	sp, #14
	C$main.c$154$2_0$192	= .
	.globl	C$main.c$154$2_0$192
	XG$SetupBlock$0$0	= .
	.globl	XG$SetupBlock$0$0
	ret
	G$ScrollBlock$0$0	= .
	.globl	G$ScrollBlock$0$0
	C$main.c$156$2_0$215	= .
	.globl	C$main.c$156$2_0$215
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:156: void ScrollBlock()
;	---------------------------------
; Function ScrollBlock
; ---------------------------------
_ScrollBlock::
	add	sp, #-7
	C$main.c$158$3_0$216	= .
	.globl	C$main.c$158$3_0$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:158: for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ldhl	sp,	#4
	ld	(hl), #0x00
00114$:
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x06
	jp	NC, 00116$
	C$main.c$160$3_0$216	= .
	.globl	C$main.c$160$3_0$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:160: uint8_t baseSpriteId = i * BLOCK_SPRITE_OFFSET;
	ld	a, (hl)
	add	a, a
	add	a, a
	ldhl	sp,	#0
	ld	(hl), a
	C$main.c$161$3_0$216	= .
	.globl	C$main.c$161$3_0$216
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:161: block[i].x -= 1;
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00170$:
	ldhl	sp,	#2
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00170$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_block
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	dec	c
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	(hl), c
	C$main.c$162$2_0$215	= .
	.globl	C$main.c$162$2_0$215
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:162: for (uint8_t iy = 0; iy != block->blockHeight; iy++)
	ldhl	sp,	#5
	ld	(hl), #0x00
00111$:
	ld	hl, #(_block + 3)
	ld	b, (hl)
	ldhl	sp,	#5
	ld	a, (hl)
	sub	a, b
	jp	Z,00115$
	C$main.c$164$7_0$220	= .
	.globl	C$main.c$164$7_0$220
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:164: for (uint8_t ix = 0; ix != block->blockWidth; ix++)
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#5
	add	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,	#6
	ld	(hl), #0x00
00108$:
	ld	a, (#(_block + 2) + 0)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#3
	sub	a, (hl)
	jr	Z, 00112$
	C$main.c$166$2_0$215	= .
	.globl	C$main.c$166$2_0$215
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:166: uint8_t index = baseSpriteId + iy + (ix * block->blockWidth);
	ldhl	sp,	#3
	ld	e, (hl)
	ldhl	sp,	#6
	ld	a, (hl)
	call	__muluchar
	ld	a, c
	ldhl	sp,	#1
	add	a, (hl)
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1893: OAM_item_t * itm = &shadow_OAM[nb];
	ld	l, a
	ld	bc, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1894: itm->y+=y, itm->x+=x;
	ld	a, (hl)
	ld	(hl+), a
	dec	(hl)
	ld	a, (hl)
	C$main.c$168$7_0$220	= .
	.globl	C$main.c$168$7_0$220
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:168: if(block[i].x <= -128)
	ldhl	sp,	#4
	ld	a, (hl)
	ld	d, #0x00
	add	a, a
	rl	d
	add	a, a
	rl	d
	ld	e, a
	ld	hl, #_block
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
	ld	c, a
	ld	e, c
	ld	a,#0x80
	ld	d,a
	sub	a, c
	bit	7, e
	jr	Z, 00174$
	bit	7, d
	jr	NZ, 00175$
	cp	a, a
	jr	00175$
00174$:
	bit	7, d
	jr	Z, 00175$
	scf
00175$:
	jr	C, 00109$
	C$main.c$170$8_0$221	= .
	.globl	C$main.c$170$8_0$221
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:170: block[i].x = 127;
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x7f
00109$:
	C$main.c$164$6_0$219	= .
	.globl	C$main.c$164$6_0$219
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:164: for (uint8_t ix = 0; ix != block->blockWidth; ix++)
	ldhl	sp,	#6
	inc	(hl)
	jr	00108$
00112$:
	C$main.c$162$4_0$217	= .
	.globl	C$main.c$162$4_0$217
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:162: for (uint8_t iy = 0; iy != block->blockHeight; iy++)
	ldhl	sp,	#5
	inc	(hl)
	jp	00111$
00115$:
	C$main.c$158$2_0$215	= .
	.globl	C$main.c$158$2_0$215
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:158: for(uint8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ldhl	sp,	#4
	inc	(hl)
	jp	00114$
00116$:
	C$main.c$175$2_0$215	= .
	.globl	C$main.c$175$2_0$215
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:175: }
	add	sp, #7
	C$main.c$175$2_0$215	= .
	.globl	C$main.c$175$2_0$215
	XG$ScrollBlock$0$0	= .
	.globl	XG$ScrollBlock$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$177$2_0$226	= .
	.globl	C$main.c$177$2_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:177: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-4
	C$main.c$180$1_0$226	= .
	.globl	C$main.c$180$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:180: NR52_REG = 0x80; // 1000 0000 turns on sound
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
	C$main.c$181$1_0$226	= .
	.globl	C$main.c$181$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:181: NR50_REG = 0x77; // sets the volume for both left and right channel to max
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
	C$main.c$182$1_0$226	= .
	.globl	C$main.c$182$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:182: NR51_REG = 0xFF; // select which chanels using
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
	C$main.c$184$1_0$226	= .
	.globl	C$main.c$184$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:184: ShowTitle();
	call	_ShowTitle
	C$main.c$185$1_0$226	= .
	.globl	C$main.c$185$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:185: delay(2000);
	ld	de, #0x07d0
	call	_delay
	C$main.c$188$1_0$226	= .
	.globl	C$main.c$188$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:188: initarand(__rand_seed);
	ld	hl, #___rand_seed
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_initarand
	pop	hl
	C$main.c$190$1_0$226	= .
	.globl	C$main.c$190$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:190: SetupBackGround();
	call	_SetupBackGround
	C$main.c$192$1_0$226	= .
	.globl	C$main.c$192$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:192: set_sprite_data(0, BirdSprite_tileset_size, BirdSprite_tileset);
	ld	de, #_BirdSprite_tileset
	push	de
	ld	hl, #0x2600
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$194$1_0$226	= .
	.globl	C$main.c$194$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:194: SetupCharacter(&player, 0, 2, 2, 0, 8, BirdSprite_tilemap);
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
	C$main.c$196$1_0$226	= .
	.globl	C$main.c$196$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:196: MoveCharacter(&player, 16, 56);
	ld	a, #0x38
	push	af
	inc	sp
	ld	a, #0x10
	ld	de, #_player
	call	_MoveCharacter
	C$main.c$199$3_0$227	= .
	.globl	C$main.c$199$3_0$227
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:199: for(int8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ld	c, #0x00
00111$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x86
	jr	NC, 00101$
	C$main.c$201$3_0$228	= .
	.globl	C$main.c$201$3_0$228
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:201: block[i].x = 60 * (i + 1);
	ld	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	ld	e, l
	ld	d, h
	ld	hl, #_block
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
	ld	(hl+), a
	ld	a, c
	inc	a
	ld	(hl), a
	ld	a, (hl-)
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	add	a, a
	add	a, a
	ld	c, a
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	(hl), c
	C$main.c$202$3_0$228	= .
	.globl	C$main.c$202$3_0$228
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:202: block[i].y = 20 * (i + 1);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	ld	b, a
	inc	bc
	C$main.c$203$3_0$228	= .
	.globl	C$main.c$203$3_0$228
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:203: block[i].blockWidth = 2;
	ld	a, (hl-)
	dec	hl
	ld	e, a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, a
	ld	(bc), a
	ld	a, (hl+)
	ld	c, a
	C$main.c$204$3_0$228	= .
	.globl	C$main.c$204$3_0$228
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:204: block[i].blockHeight = 2;
	ld	a, (hl-)
	ld	b, a
	inc	bc
	inc	bc
	ld	a, #0x02
	ld	(bc), a
	ld	a, (hl+)
	ld	c, a
	C$main.c$199$2_0$227	= .
	.globl	C$main.c$199$2_0$227
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:199: for(int8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ld	a, (hl+)
	ld	b, a
	inc	bc
	inc	bc
	inc	bc
	ld	a, #0x02
	ld	(bc), a
	ld	c, (hl)
	jr	00111$
00101$:
	C$main.c$207$1_0$226	= .
	.globl	C$main.c$207$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:207: SetupBlock(block);
	ld	de, #_block
	call	_SetupBlock
	C$main.c$209$1_0$226	= .
	.globl	C$main.c$209$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:209: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$210$1_0$226	= .
	.globl	C$main.c$210$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:210: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$211$1_0$226	= .
	.globl	C$main.c$211$1_0$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:211: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$213$2_0$229	= .
	.globl	C$main.c$213$2_0$229
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:213: BOOLEAN gameLoop = 1;
	ldhl	sp,	#2
	ld	(hl), #0x01
	C$main.c$215$2_1$230	= .
	.globl	C$main.c$215$2_1$230
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:215: while(gameLoop)
00105$:
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jp	Z, 00107$
	C$main.c$217$2_1$230	= .
	.globl	C$main.c$217$2_1$230
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:217: player.underfootState = player.y >= GLOUND_LEVEL ? FOOT_ON_LAND : FOOT_IN_AIR;
	ld	a, (#(_player + 7) + 0)
	sub	a, #0x82
	jr	C, 00118$
	dec	hl
	dec	hl
	ld	a, #0x01
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	jr	00119$
00118$:
	ldhl	sp,	#0
	ld	a, #0x02
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
00119$:
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(#(_player + 14)),a
	C$main.c$218$2_1$230	= .
	.globl	C$main.c$218$2_1$230
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:218: MoveCharacterWithJoypad(&player);
	ld	de, #_player
	call	_MoveCharacterWithJoypad
	C$main.c$219$2_1$230	= .
	.globl	C$main.c$219$2_1$230
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:219: MovementPhysics(&player, 3);
	ld	a, #0x03
	ld	de, #_player
	call	_MovementPhysics
	C$main.c$220$2_1$230	= .
	.globl	C$main.c$220$2_1$230
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:220: LoadNextSpriteFrame(&player);
	ld	de, #_player
	call	_LoadNextSpriteFrame
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1392: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG + 0)
	inc	a
	ldh	(_SCX_REG + 0), a
	C$main.c$223$2_1$230	= .
	.globl	C$main.c$223$2_1$230
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:223: ScrollBlock();
	call	_ScrollBlock
	C$main.c$225$1_1$226	= .
	.globl	C$main.c$225$1_1$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:225: for(int8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	ld	c, #0x00
00114$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x86
	jr	NC, 00104$
	C$main.c$227$4_1$232	= .
	.globl	C$main.c$227$4_1$232
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:227: if(Hit(player.x, player.y, block[i].x, block[i].y))
	ld	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	de, #_block
	add	hl, de
	ld	e, l
	ld	d, h
	inc	de
	ld	a, (de)
	ld	b, (hl)
	ld	hl, #(_player + 7)
	push	af
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
	pop	af
	ld	hl, #(_player + 6)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	af
	inc	sp
	push	bc
	inc	sp
	push	hl
	ldhl	sp,	#9
	ld	e, (hl)
	pop	hl
	ld	a, l
	call	_Hit
	pop	bc
	or	a, a
	jr	Z, 00115$
	C$main.c$229$5_1$233	= .
	.globl	C$main.c$229$5_1$233
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:229: gameLoop= 0;
	ldhl	sp,	#2
	ld	(hl), #0x00
	C$main.c$230$5_1$233	= .
	.globl	C$main.c$230$5_1$233
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:230: break;
	jr	00104$
00115$:
	C$main.c$225$3_1$231	= .
	.globl	C$main.c$225$3_1$231
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:225: for(int8_t i = 0; i < MAX_BLOCK_COUNT; i++)
	inc	c
	jr	00114$
00104$:
	C$main.c$233$2_1$230	= .
	.globl	C$main.c$233$2_1$230
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:233: wait_vbl_done();
	call	_wait_vbl_done
	jp	00105$
00107$:
	C$main.c$235$1_1$229	= .
	.globl	C$main.c$235$1_1$229
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:235: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;c:\gbdk_dev\resources\gbdk\include\gb\gb.h:1378: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	C$main.c$237$1_1$229	= .
	.globl	C$main.c$237$1_1$229
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:237: printf("GameOver");
	ld	de, #___str_0
	push	de
	call	_printf
	pop	hl
	C$main.c$238$1_1$226	= .
	.globl	C$main.c$238$1_1$226
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:238: }
	add	sp, #4
	C$main.c$238$1_1$226	= .
	.globl	C$main.c$238$1_1$226
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
