;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module watchdog
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _watchdog_init
	.globl _IWDG_Enable
	.globl _IWDG_ReloadCounter
	.globl _IWDG_SetReload
	.globl _IWDG_SetPrescaler
	.globl _IWDG_WriteAccessCmd
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$watchdog_init$0$0 ==.
	C$watchdog.c$17$0_0$346 ==.
;	watchdog.c: 17: void watchdog_init(void)
;	-----------------------------------------
;	 function watchdog_init
;	-----------------------------------------
_watchdog_init:
	C$watchdog.c$19$1_0$346 ==.
;	watchdog.c: 19: IWDG_Enable();
	call	_IWDG_Enable
	C$watchdog.c$20$1_0$346 ==.
;	watchdog.c: 20: IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
	push	#0x55
	call	_IWDG_WriteAccessCmd
	pop	a
	C$watchdog.c$21$1_0$346 ==.
;	watchdog.c: 21: IWDG_SetPrescaler(IWDG_Prescaler_4);
	push	#0x00
	call	_IWDG_SetPrescaler
	pop	a
	C$watchdog.c$35$1_0$346 ==.
;	watchdog.c: 35: IWDG_SetReload(255); // ~16ms
	push	#0xff
	call	_IWDG_SetReload
	pop	a
	C$watchdog.c$36$1_0$346 ==.
;	watchdog.c: 36: IWDG_ReloadCounter();
	call	_IWDG_ReloadCounter
	C$watchdog.c$37$1_0$346 ==.
;	watchdog.c: 37: }
	C$watchdog.c$37$1_0$346 ==.
	XG$watchdog_init$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
