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
	.globl _printf
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
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$4$0_0$130	= .
	.globl	C$main.c$4$0_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:4: void main(void){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$5$1_0$130	= .
	.globl	C$main.c$5$1_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:5: printf("Hello GB Kensyu W1");
	ld	de, #___str_0
	push	de
	call	_printf
	pop	hl
	C$main.c$6$1_0$130	= .
	.globl	C$main.c$6$1_0$130
;C:\gbdk_dev\Project\GB_PROJECT\source\main.c:6: }
	C$main.c$6$1_0$130	= .
	.globl	C$main.c$6$1_0$130
	XG$main$0$0	= .
	.globl	XG$main$0$0
	ret
Fmain$__str_0$0_0$0 == .
___str_0:
	.ascii "Hello GB Kensyu W1"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
