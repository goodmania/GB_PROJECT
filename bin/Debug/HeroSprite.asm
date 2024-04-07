;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module HeroSprite
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SwordLeftDownTile
	.globl _SwordRightDownTile
	.globl _SwordDownTile
	.globl _SwordUpTile
	.globl _SwordLeftTile
	.globl _SwordRightTile
	.globl _SwordLeftUpTile
	.globl _SwordRightUpTile
	.globl _HeroBlinkTile
	.globl _HeroUpAttack2Tile
	.globl _HeroUpAttack1Tile
	.globl _HeroUpWalkTile
	.globl _HeroUpTile
	.globl _HeroDownAttack2Tile
	.globl _HeroDownAttack1Tile
	.globl _HeroRightAttack2Tile
	.globl _HeroRightAttack1Tile
	.globl _HeroLeftAttack2Tile
	.globl _HeroLeftAttack1Tile
	.globl _HeroRightWalkTile
	.globl _HeroRightTile
	.globl _HeroLeftWalkTile
	.globl _HeroLeftTile
	.globl _HeroDownWalkTile
	.globl _HeroDownTile
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
	.area _CODE
G$HeroDownTile$0_0$0 == .
_HeroDownTile:
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x64	; 100	'd'
	.db #0x7f	; 127
	.db #0xa4	; 164
	.db #0xff	; 255
	.db #0x52	; 82	'R'
	.db #0x7f	; 127
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xf8	; 248
	.db #0x4f	; 79	'O'
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3a	; 58
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x64	; 100	'd'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x9f	; 159
	.db #0xf9	; 249
	.db #0x9f	; 159
	.db #0x6f	; 111	'o'
	.db #0x6f	; 111	'o'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0x48	; 72	'H'
	.db #0xf8	; 248
	.db #0x4c	; 76	'L'
	.db #0xfc	; 252
	.db #0x72	; 114	'r'
	.db #0xfe	; 254
	.db #0xf4	; 244
	.db #0x9c	; 156
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0x22	; 34
	.db #0xfe	; 254
	.db #0xf7	; 247
	.db #0xfd	; 253
	.db #0x3a	; 58
	.db #0xfa	; 250
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
G$HeroDownWalkTile$0_0$0 == .
_HeroDownWalkTile:
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x64	; 100	'd'
	.db #0x7f	; 127
	.db #0xa4	; 164
	.db #0xff	; 255
	.db #0x52	; 82	'R'
	.db #0x7f	; 127
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xf8	; 248
	.db #0x4f	; 79	'O'
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3a	; 58
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x44	; 68	'D'
	.db #0x7f	; 127
	.db #0xef	; 239
	.db #0xbf	; 191
	.db #0x5c	; 92
	.db #0x5f	; 95
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0x48	; 72	'H'
	.db #0xf8	; 248
	.db #0x4c	; 76	'L'
	.db #0xfc	; 252
	.db #0x72	; 114	'r'
	.db #0xfe	; 254
	.db #0xf4	; 244
	.db #0x9c	; 156
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0x26	; 38
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0x9f	; 159
	.db #0xf9	; 249
	.db #0xf6	; 246
	.db #0xf6	; 246
	.db #0xf8	; 248
	.db #0xf8	; 248
G$HeroLeftTile$0_0$0 == .
_HeroLeftTile:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xfc	; 252
	.db #0x46	; 70	'F'
	.db #0xfe	; 254
	.db #0x8c	; 140
	.db #0xfc	; 252
	.db #0xd3	; 211
	.db #0xff	; 255
	.db #0xe6	; 230
	.db #0x7e	; 126
	.db #0xe4	; 228
	.db #0xbc	; 188
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0x7c	; 124
	.db #0xec	; 236
	.db #0xfc	; 252
	.db #0x8c	; 140
	.db #0xf4	; 244
	.db #0x9c	; 156
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
G$HeroLeftWalkTile$0_0$0 == .
_HeroLeftWalkTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x1c	; 28
	.db #0x17	; 23
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x19	; 25
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xfc	; 252
	.db #0x46	; 70	'F'
	.db #0xfe	; 254
	.db #0x8c	; 140
	.db #0xfc	; 252
	.db #0x93	; 147
	.db #0xff	; 255
	.db #0xee	; 238
	.db #0x7e	; 126
	.db #0xe4	; 228
	.db #0xbc	; 188
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0x7c	; 124
	.db #0xcc	; 204
	.db #0xfe	; 254
	.db #0xe6	; 230
	.db #0x9e	; 158
	.db #0xf2	; 242
	.db #0xee	; 238
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
G$HeroRightTile$0_0$0 == .
_HeroRightTile:
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x62	; 98	'b'
	.db #0x7f	; 127
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0xcb	; 203
	.db #0xff	; 255
	.db #0x67	; 103	'g'
	.db #0x7e	; 126
	.db #0x27	; 39
	.db #0x3d	; 61
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x49	; 73	'I'
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x37	; 55	'7'
	.db #0x3f	; 63
	.db #0x31	; 49	'1'
	.db #0x2f	; 47
	.db #0x39	; 57	'9'
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xb0	; 176
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
G$HeroRightWalkTile$0_0$0 == .
_HeroRightWalkTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x62	; 98	'b'
	.db #0x7f	; 127
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0xc9	; 201
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0x7e	; 126
	.db #0x27	; 39
	.db #0x3d	; 61
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x49	; 73	'I'
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x33	; 51	'3'
	.db #0x7f	; 127
	.db #0x67	; 103	'g'
	.db #0x79	; 121	'y'
	.db #0x4f	; 79	'O'
	.db #0x77	; 119	'w'
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xb0	; 176
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x98	; 152
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xf0	; 240
G$HeroLeftAttack1Tile$0_0$0 == .
_HeroLeftAttack1Tile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x17	; 23
	.db #0x1c	; 28
	.db #0x17	; 23
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x19	; 25
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xfc	; 252
	.db #0x46	; 70	'F'
	.db #0xfe	; 254
	.db #0x8c	; 140
	.db #0xfc	; 252
	.db #0x93	; 147
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x66	; 102	'f'
	.db #0xdc	; 220
	.db #0xe4	; 228
	.db #0xee	; 238
	.db #0x5e	; 94
	.db #0xfd	; 253
	.db #0x47	; 71	'G'
	.db #0xfe	; 254
	.db #0xc6	; 198
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xc4	; 196
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
G$HeroLeftAttack2Tile$0_0$0 == .
_HeroLeftAttack2Tile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x04	; 4
	.db #0x1b	; 27
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0xfc	; 252
	.db #0x46	; 70	'F'
	.db #0xfe	; 254
	.db #0x8c	; 140
	.db #0xfc	; 252
	.db #0x93	; 147
	.db #0xff	; 255
	.db #0xe2	; 226
	.db #0x7e	; 126
	.db #0xe4	; 228
	.db #0xbc	; 188
	.db #0xfe	; 254
	.db #0x7e	; 126
	.db #0xf9	; 249
	.db #0x8f	; 143
	.db #0xfa	; 250
	.db #0x0e	; 14
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0xc4	; 196
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
G$HeroRightAttack1Tile$0_0$0 == .
_HeroRightAttack1Tile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x62	; 98	'b'
	.db #0x7f	; 127
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0xc9	; 201
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x66	; 102	'f'
	.db #0x3b	; 59
	.db #0x27	; 39
	.db #0x77	; 119	'w'
	.db #0x7a	; 122	'z'
	.db #0xbf	; 191
	.db #0xe2	; 226
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x23	; 35
	.db #0x3f	; 63
	.db #0x5f	; 95
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xb0	; 176
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xf8	; 248
	.db #0x38	; 56	'8'
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0xe8	; 232
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0x98	; 152
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xf0	; 240
G$HeroRightAttack2Tile$0_0$0 == .
_HeroRightAttack2Tile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x62	; 98	'b'
	.db #0x7f	; 127
	.db #0x31	; 49	'1'
	.db #0x3f	; 63
	.db #0xc9	; 201
	.db #0xff	; 255
	.db #0x47	; 71	'G'
	.db #0x7e	; 126
	.db #0x27	; 39
	.db #0x3d	; 61
	.db #0x7f	; 127
	.db #0x7e	; 126
	.db #0x9f	; 159
	.db #0xf1	; 241
	.db #0x5f	; 95
	.db #0x70	; 112	'p'
	.db #0x3f	; 63
	.db #0x3c	; 60
	.db #0x23	; 35
	.db #0x3f	; 63
	.db #0x5f	; 95
	.db #0x7f	; 127
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xb0	; 176
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xd8	; 216
	.db #0x20	; 32
	.db #0xd8	; 216
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
G$HeroDownAttack1Tile$0_0$0 == .
_HeroDownAttack1Tile:
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x64	; 100	'd'
	.db #0x7f	; 127
	.db #0xa4	; 164
	.db #0xff	; 255
	.db #0x52	; 82	'R'
	.db #0x7f	; 127
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xf8	; 248
	.db #0x4f	; 79	'O'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7a	; 122	'z'
	.db #0xe7	; 231
	.db #0xa4	; 164
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xf1	; 241
	.db #0x9f	; 159
	.db #0x64	; 100	'd'
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x19	; 25
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0x48	; 72	'H'
	.db #0xf8	; 248
	.db #0x4c	; 76	'L'
	.db #0xfc	; 252
	.db #0x72	; 114	'r'
	.db #0xfe	; 254
	.db #0xf4	; 244
	.db #0x9c	; 156
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0x22	; 34
	.db #0xfe	; 254
	.db #0xf7	; 247
	.db #0xfd	; 253
	.db #0x3a	; 58
	.db #0xfa	; 250
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
G$HeroDownAttack2Tile$0_0$0 == .
_HeroDownAttack2Tile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x64	; 100	'd'
	.db #0x7f	; 127
	.db #0xa4	; 164
	.db #0xff	; 255
	.db #0x52	; 82	'R'
	.db #0x7f	; 127
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xf8	; 248
	.db #0x4f	; 79	'O'
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3a	; 58
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x54	; 84	'T'
	.db #0x6f	; 111	'o'
	.db #0x3b	; 59
	.db #0x27	; 39
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0x48	; 72	'H'
	.db #0xf8	; 248
	.db #0x4c	; 76	'L'
	.db #0xfc	; 252
	.db #0x72	; 114	'r'
	.db #0xfe	; 254
	.db #0xf4	; 244
	.db #0x9c	; 156
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0xe2	; 226
	.db #0xfe	; 254
	.db #0x97	; 151
	.db #0xfd	; 253
	.db #0x3a	; 58
	.db #0xfa	; 250
	.db #0xf0	; 240
	.db #0xf0	; 240
G$HeroUpTile$0_0$0 == .
_HeroUpTile:
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x32	; 50	'2'
	.db #0x3f	; 63
	.db #0x49	; 73	'I'
	.db #0x7f	; 127
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x44	; 68	'D'
	.db #0x7f	; 127
	.db #0xef	; 239
	.db #0xbf	; 191
	.db #0x5c	; 92
	.db #0x5f	; 95
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x96	; 150
	.db #0xfe	; 254
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x4a	; 74	'J'
	.db #0xfe	; 254
	.db #0x65	; 101	'e'
	.db #0xff	; 255
	.db #0x25	; 37
	.db #0xff	; 255
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xdc	; 220
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x97	; 151
	.db #0xff	; 255
	.db #0x2f	; 47
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0x96	; 150
	.db #0xf6	; 246
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x80	; 128
G$HeroUpWalkTile$0_0$0 == .
_HeroUpWalkTile:
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x32	; 50	'2'
	.db #0x3f	; 63
	.db #0x49	; 73	'I'
	.db #0x7f	; 127
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xe9	; 233
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0x9f	; 159
	.db #0xff	; 255
	.db #0x9f	; 159
	.db #0x6c	; 108	'l'
	.db #0x6f	; 111	'o'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x96	; 150
	.db #0xfe	; 254
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x4a	; 74	'J'
	.db #0xfe	; 254
	.db #0x65	; 101	'e'
	.db #0xff	; 255
	.db #0x25	; 37
	.db #0xff	; 255
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xdc	; 220
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0x22	; 34
	.db #0xfe	; 254
	.db #0xf7	; 247
	.db #0xfd	; 253
	.db #0x9a	; 154
	.db #0xfa	; 250
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
G$HeroUpAttack1Tile$0_0$0 == .
_HeroUpAttack1Tile:
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x32	; 50	'2'
	.db #0x3f	; 63
	.db #0x49	; 73	'I'
	.db #0x7f	; 127
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x44	; 68	'D'
	.db #0x7f	; 127
	.db #0xef	; 239
	.db #0xbf	; 191
	.db #0x5c	; 92
	.db #0x5f	; 95
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x96	; 150
	.db #0xfe	; 254
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x4a	; 74	'J'
	.db #0xfe	; 254
	.db #0x65	; 101	'e'
	.db #0xff	; 255
	.db #0x25	; 37
	.db #0xff	; 255
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xdc	; 220
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x97	; 151
	.db #0xff	; 255
	.db #0x2f	; 47
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0x96	; 150
	.db #0xf6	; 246
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x80	; 128
G$HeroUpAttack2Tile$0_0$0 == .
_HeroUpAttack2Tile:
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x32	; 50	'2'
	.db #0x3f	; 63
	.db #0x49	; 73	'I'
	.db #0x7f	; 127
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x14	; 20
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x44	; 68	'D'
	.db #0x7f	; 127
	.db #0xef	; 239
	.db #0xbf	; 191
	.db #0x5c	; 92
	.db #0x5f	; 95
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x96	; 150
	.db #0xfe	; 254
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0x4a	; 74	'J'
	.db #0xfe	; 254
	.db #0x65	; 101	'e'
	.db #0xff	; 255
	.db #0x25	; 37
	.db #0xff	; 255
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xdc	; 220
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0x2c	; 44
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x80	; 128
G$HeroBlinkTile$0_0$0 == .
_HeroBlinkTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$SwordRightUpTile$0_0$0 == .
_SwordRightUpTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x5d	; 93
	.db #0x53	; 83	'S'
	.db #0xba	; 186
	.db #0xe6	; 230
	.db #0xb4	; 180
	.db #0xec	; 236
	.db #0x58	; 88	'X'
	.db #0x78	; 120	'x'
	.db #0xa4	; 164
	.db #0xfc	; 252
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x74	; 116	't'
	.db #0x4c	; 76	'L'
	.db #0xe8	; 232
	.db #0x98	; 152
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$SwordLeftUpTile$0_0$0 == .
_SwordLeftUpTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x2e	; 46
	.db #0x32	; 50	'2'
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x90	; 144
	.db #0xba	; 186
	.db #0xca	; 202
	.db #0x5d	; 93
	.db #0x67	; 103	'g'
	.db #0x2d	; 45
	.db #0x37	; 55	'7'
	.db #0x1a	; 26
	.db #0x1e	; 30
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x1b	; 27
	.db #0x1b	; 27
G$SwordRightTile$0_0$0 == .
_SwordRightTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xe0	; 224
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$SwordLeftTile$0_0$0 == .
_SwordLeftTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0x04	; 4
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0x07	; 7
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$SwordUpTile$0_0$0 == .
_SwordUpTile:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0xc0	; 192
G$SwordDownTile$0_0$0 == .
_SwordDownTile:
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
G$SwordRightDownTile$0_0$0 == .
_SwordRightDownTile:
	.db #0xd8	; 216
	.db #0xd8	; 216
	.db #0xa4	; 164
	.db #0xfc	; 252
	.db #0x58	; 88	'X'
	.db #0x78	; 120	'x'
	.db #0xb4	; 180
	.db #0xec	; 236
	.db #0xba	; 186
	.db #0xe6	; 230
	.db #0x5d	; 93
	.db #0x53	; 83	'S'
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xe8	; 232
	.db #0x98	; 152
	.db #0x74	; 116	't'
	.db #0x4c	; 76	'L'
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$SwordLeftDownTile$0_0$0 == .
_SwordLeftDownTile:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x2e	; 46
	.db #0x32	; 50	'2'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x1b	; 27
	.db #0x25	; 37
	.db #0x3f	; 63
	.db #0x1a	; 26
	.db #0x1e	; 30
	.db #0x2d	; 45
	.db #0x37	; 55	'7'
	.db #0x5d	; 93
	.db #0x67	; 103	'g'
	.db #0xba	; 186
	.db #0xca	; 202
	.db #0x70	; 112	'p'
	.db #0x90	; 144
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
