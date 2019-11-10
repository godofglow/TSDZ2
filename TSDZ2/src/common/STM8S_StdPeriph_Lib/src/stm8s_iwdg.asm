;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_iwdg
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_WriteAccessCmd
	.globl _IWDG_SetPrescaler
	.globl _IWDG_SetReload
	.globl _IWDG_ReloadCounter
	.globl _IWDG_Enable
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
	G$IWDG_WriteAccessCmd$0$0 ==.
	C$stm8s_iwdg.c$48$0_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
;	-----------------------------------------
;	 function IWDG_WriteAccessCmd
;	-----------------------------------------
_IWDG_WriteAccessCmd:
	C$stm8s_iwdg.c$53$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
	ldw	x, #0x50e0
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_iwdg.c$54$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 54: }
	C$stm8s_iwdg.c$54$1_0$346 ==.
	XG$IWDG_WriteAccessCmd$0$0 ==.
	ret
	G$IWDG_SetPrescaler$0$0 ==.
	C$stm8s_iwdg.c$63$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 63: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
;	-----------------------------------------
;	 function IWDG_SetPrescaler
;	-----------------------------------------
_IWDG_SetPrescaler:
	C$stm8s_iwdg.c$68$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 68: IWDG->PR = (uint8_t)IWDG_Prescaler;
	ldw	x, #0x50e1
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_iwdg.c$69$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 69: }
	C$stm8s_iwdg.c$69$1_0$348 ==.
	XG$IWDG_SetPrescaler$0$0 ==.
	ret
	G$IWDG_SetReload$0$0 ==.
	C$stm8s_iwdg.c$78$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 78: void IWDG_SetReload(uint8_t IWDG_Reload)
;	-----------------------------------------
;	 function IWDG_SetReload
;	-----------------------------------------
_IWDG_SetReload:
	C$stm8s_iwdg.c$80$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 80: IWDG->RLR = IWDG_Reload;
	ldw	x, #0x50e2
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_iwdg.c$81$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 81: }
	C$stm8s_iwdg.c$81$1_0$350 ==.
	XG$IWDG_SetReload$0$0 ==.
	ret
	G$IWDG_ReloadCounter$0$0 ==.
	C$stm8s_iwdg.c$89$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 89: void IWDG_ReloadCounter(void)
;	-----------------------------------------
;	 function IWDG_ReloadCounter
;	-----------------------------------------
_IWDG_ReloadCounter:
	C$stm8s_iwdg.c$91$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 91: IWDG->KR = IWDG_KEY_REFRESH;
	mov	0x50e0+0, #0xaa
	C$stm8s_iwdg.c$92$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 92: }
	C$stm8s_iwdg.c$92$1_0$352 ==.
	XG$IWDG_ReloadCounter$0$0 ==.
	ret
	G$IWDG_Enable$0$0 ==.
	C$stm8s_iwdg.c$99$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 99: void IWDG_Enable(void)
;	-----------------------------------------
;	 function IWDG_Enable
;	-----------------------------------------
_IWDG_Enable:
	C$stm8s_iwdg.c$101$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 101: IWDG->KR = IWDG_KEY_ENABLE;
	mov	0x50e0+0, #0xcc
	C$stm8s_iwdg.c$102$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_iwdg.c: 102: }
	C$stm8s_iwdg.c$102$1_0$354 ==.
	XG$IWDG_Enable$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
