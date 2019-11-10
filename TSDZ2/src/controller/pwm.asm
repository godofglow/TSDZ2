;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module pwm
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_ITConfig
	.globl _TIM1_CtrlPWMOutputs
	.globl _TIM1_Cmd
	.globl _TIM1_BDTRConfig
	.globl _TIM1_OC4Init
	.globl _TIM1_OC3Init
	.globl _TIM1_OC2Init
	.globl _TIM1_OC1Init
	.globl _TIM1_TimeBaseInit
	.globl _FLASH_SetProgrammingTime
	.globl _FLASH_EraseOptionByte
	.globl _FLASH_ProgramOptionByte
	.globl _FLASH_ReadOptionByte
	.globl _FLASH_Lock
	.globl _FLASH_Unlock
	.globl _pwm_init_bipolar_4q
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
	G$pwm_init_bipolar_4q$0$0 ==.
	C$pwm.c$21$0_0$358 ==.
;	pwm.c: 21: void pwm_init_bipolar_4q(void)
;	-----------------------------------------
;	 function pwm_init_bipolar_4q
;	-----------------------------------------
_pwm_init_bipolar_4q:
	C$pwm.c$24$1_0$358 ==.
;	pwm.c: 24: FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
	push	#0x00
	call	_FLASH_SetProgrammingTime
	pop	a
	C$pwm.c$25$1_0$358 ==.
;	pwm.c: 25: if(FLASH_ReadOptionByte(0x4803) != 0x20)
	push	#0x03
	push	#0x48
	call	_FLASH_ReadOptionByte
	addw	sp, #2
	cpw	x, #0x0020
	jreq	00102$
	C$pwm.c$27$2_0$359 ==.
;	pwm.c: 27: FLASH_Unlock(FLASH_MEMTYPE_DATA);
	push	#0xf7
	call	_FLASH_Unlock
	pop	a
	C$pwm.c$28$2_0$359 ==.
;	pwm.c: 28: FLASH_EraseOptionByte(0x4803);
	push	#0x03
	push	#0x48
	call	_FLASH_EraseOptionByte
	addw	sp, #2
	C$pwm.c$29$2_0$359 ==.
;	pwm.c: 29: FLASH_ProgramOptionByte(0x4803, 0x20);
	push	#0x20
	push	#0x03
	push	#0x48
	call	_FLASH_ProgramOptionByte
	addw	sp, #3
	C$pwm.c$30$2_0$359 ==.
;	pwm.c: 30: FLASH_Lock(FLASH_MEMTYPE_DATA);
	push	#0xf7
	call	_FLASH_Lock
	pop	a
00102$:
	C$pwm.c$88$1_0$358 ==.
;	pwm.c: 88: TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
	push	#0x01
	push	#0xff
	push	#0x01
	push	#0x20
	clrw	x
	pushw	x
	call	_TIM1_TimeBaseInit
	addw	sp, #6
	C$pwm.c$96$1_0$358 ==.
;	pwm.c: 96: TIM1_OC1Init(TIM1_OCMODE_PWM1,
	push	#0x2a
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x44
	push	#0x11
	push	#0x60
	call	_TIM1_OC1Init
	addw	sp, #9
	C$pwm.c$110$1_0$358 ==.
;	pwm.c: 110: TIM1_OC2Init(TIM1_OCMODE_PWM1,
	push	#0x55
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x44
	push	#0x11
	push	#0x60
	call	_TIM1_OC2Init
	addw	sp, #9
	C$pwm.c$119$1_0$358 ==.
;	pwm.c: 119: TIM1_OC3Init(TIM1_OCMODE_PWM1,
	push	#0x2a
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x44
	push	#0x11
	push	#0x60
	call	_TIM1_OC3Init
	addw	sp, #9
	C$pwm.c$135$1_0$358 ==.
;	pwm.c: 135: TIM1_OC4Init(TIM1_OCMODE_PWM1,
	push	#0x00
	push	#0x00
	push	#0x1d
	push	#0x01
	push	#0x00
	push	#0x60
	call	_TIM1_OC4Init
	addw	sp, #6
	C$pwm.c$142$1_0$358 ==.
;	pwm.c: 142: TIM1_BDTRConfig(TIM1_OSSISTATE_ENABLE,
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x10
	push	#0x00
	push	#0x04
	call	_TIM1_BDTRConfig
	addw	sp, #6
	C$pwm.c$150$1_0$358 ==.
;	pwm.c: 150: TIM1_ITConfig(TIM1_IT_CC4, ENABLE);
	push	#0x01
	push	#0x10
	call	_TIM1_ITConfig
	addw	sp, #2
	C$pwm.c$151$1_0$358 ==.
;	pwm.c: 151: TIM1_Cmd(ENABLE); // TIM1 counter enable
	push	#0x01
	call	_TIM1_Cmd
	pop	a
	C$pwm.c$152$1_0$358 ==.
;	pwm.c: 152: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
	C$pwm.c$154$1_0$358 ==.
;	pwm.c: 154: }
	C$pwm.c$154$1_0$358 ==.
	XG$pwm_init_bipolar_4q$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
