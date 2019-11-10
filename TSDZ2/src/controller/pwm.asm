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
	.globl _disable_pwm
	.globl _enable_pwm
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
	C$pwm.c$21$0_0$360 ==.
;	pwm.c: 21: void pwm_init_bipolar_4q(void)
;	-----------------------------------------
;	 function pwm_init_bipolar_4q
;	-----------------------------------------
_pwm_init_bipolar_4q:
	C$pwm.c$24$1_0$360 ==.
;	pwm.c: 24: FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
	push	#0x00
	call	_FLASH_SetProgrammingTime
	pop	a
	C$pwm.c$25$1_0$360 ==.
;	pwm.c: 25: if(FLASH_ReadOptionByte(0x4803) != 0x20)
	push	#0x03
	push	#0x48
	call	_FLASH_ReadOptionByte
	addw	sp, #2
	cpw	x, #0x0020
	jreq	00102$
	C$pwm.c$27$2_0$361 ==.
;	pwm.c: 27: FLASH_Unlock(FLASH_MEMTYPE_DATA);
	push	#0xf7
	call	_FLASH_Unlock
	pop	a
	C$pwm.c$28$2_0$361 ==.
;	pwm.c: 28: FLASH_EraseOptionByte(0x4803);
	push	#0x03
	push	#0x48
	call	_FLASH_EraseOptionByte
	addw	sp, #2
	C$pwm.c$29$2_0$361 ==.
;	pwm.c: 29: FLASH_ProgramOptionByte(0x4803, 0x20);
	push	#0x20
	push	#0x03
	push	#0x48
	call	_FLASH_ProgramOptionByte
	addw	sp, #3
	C$pwm.c$30$2_0$361 ==.
;	pwm.c: 30: FLASH_Lock(FLASH_MEMTYPE_DATA);
	push	#0xf7
	call	_FLASH_Lock
	pop	a
00102$:
	C$pwm.c$34$1_0$360 ==.
;	pwm.c: 34: TIM1_TimeBaseInit(0, // TIM1_Prescaler = 0
	push	#0x01
	push	#0xff
	push	#0x01
	push	#0x20
	clrw	x
	pushw	x
	call	_TIM1_TimeBaseInit
	addw	sp, #6
	C$pwm.c$40$1_0$360 ==.
;	pwm.c: 40: TIM1_OC1Init(TIM1_OCMODE_PWM1,
	push	#0x2a
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x60
	call	_TIM1_OC1Init
	addw	sp, #9
	C$pwm.c$49$1_0$360 ==.
;	pwm.c: 49: TIM1_OC2Init(TIM1_OCMODE_PWM1,
	push	#0x55
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x60
	call	_TIM1_OC2Init
	addw	sp, #9
	C$pwm.c$58$1_0$360 ==.
;	pwm.c: 58: TIM1_OC3Init(TIM1_OCMODE_PWM1,
	push	#0x2a
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x60
	call	_TIM1_OC3Init
	addw	sp, #9
	C$pwm.c$69$1_0$360 ==.
;	pwm.c: 69: TIM1_OC4Init(TIM1_OCMODE_PWM1,
	push	#0x00
	push	#0x00
	push	#0x1d
	push	#0x01
	push	#0x00
	push	#0x60
	call	_TIM1_OC4Init
	addw	sp, #6
	C$pwm.c$76$1_0$360 ==.
;	pwm.c: 76: TIM1_BDTRConfig(TIM1_OSSISTATE_ENABLE,
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x10
	push	#0x00
	push	#0x04
	call	_TIM1_BDTRConfig
	addw	sp, #6
	C$pwm.c$84$1_0$360 ==.
;	pwm.c: 84: TIM1_ITConfig(TIM1_IT_CC4, ENABLE);
	push	#0x01
	push	#0x10
	call	_TIM1_ITConfig
	addw	sp, #2
	C$pwm.c$85$1_0$360 ==.
;	pwm.c: 85: TIM1_Cmd(ENABLE); // TIM1 counter enable
	push	#0x01
	call	_TIM1_Cmd
	pop	a
	C$pwm.c$86$1_0$360 ==.
;	pwm.c: 86: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
	C$pwm.c$154$1_0$360 ==.
;	pwm.c: 154: }
	C$pwm.c$154$1_0$360 ==.
	XG$pwm_init_bipolar_4q$0$0 ==.
	ret
	G$disable_pwm$0$0 ==.
	C$pwm.c$160$1_0$363 ==.
;	pwm.c: 160: void disable_pwm(void)
;	-----------------------------------------
;	 function disable_pwm
;	-----------------------------------------
_disable_pwm:
	C$pwm.c$162$1_0$363 ==.
;	pwm.c: 162: TIM1_CtrlPWMOutputs(DISABLE);
	push	#0x00
	call	_TIM1_CtrlPWMOutputs
	pop	a
	C$pwm.c$164$1_0$363 ==.
;	pwm.c: 164: TIM1_OC1Init(TIM1_OCMODE_PWM1,
	push	#0x2a
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x60
	call	_TIM1_OC1Init
	addw	sp, #9
	C$pwm.c$173$1_0$363 ==.
;	pwm.c: 173: TIM1_OC2Init(TIM1_OCMODE_PWM1,
	push	#0x55
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x60
	call	_TIM1_OC2Init
	addw	sp, #9
	C$pwm.c$182$1_0$363 ==.
;	pwm.c: 182: TIM1_OC3Init(TIM1_OCMODE_PWM1,
	push	#0x2a
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xff
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x60
	call	_TIM1_OC3Init
	addw	sp, #9
	C$pwm.c$200$1_0$363 ==.
;	pwm.c: 200: }
	C$pwm.c$200$1_0$363 ==.
	XG$disable_pwm$0$0 ==.
	ret
	G$enable_pwm$0$0 ==.
	C$pwm.c$207$1_0$365 ==.
;	pwm.c: 207: void enable_pwm(void)
;	-----------------------------------------
;	 function enable_pwm
;	-----------------------------------------
_enable_pwm:
	C$pwm.c$209$1_0$365 ==.
;	pwm.c: 209: TIM1_OC1Init(TIM1_OCMODE_PWM1,
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
	C$pwm.c$218$1_0$365 ==.
;	pwm.c: 218: TIM1_OC2Init(TIM1_OCMODE_PWM1,
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
	C$pwm.c$227$1_0$365 ==.
;	pwm.c: 227: TIM1_OC3Init(TIM1_OCMODE_PWM1,
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
	C$pwm.c$239$1_0$365 ==.
;	pwm.c: 239: TIM1_OC4Init(TIM1_OCMODE_PWM1,
	push	#0x00
	push	#0x00
	push	#0x1d
	push	#0x01
	push	#0x00
	push	#0x60
	call	_TIM1_OC4Init
	addw	sp, #6
	C$pwm.c$246$1_0$365 ==.
;	pwm.c: 246: TIM1_BDTRConfig(TIM1_OSSISTATE_ENABLE,
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x10
	push	#0x00
	push	#0x04
	call	_TIM1_BDTRConfig
	addw	sp, #6
	C$pwm.c$254$1_0$365 ==.
;	pwm.c: 254: TIM1_ITConfig(TIM1_IT_CC4, ENABLE);
	push	#0x01
	push	#0x10
	call	_TIM1_ITConfig
	addw	sp, #2
	C$pwm.c$255$1_0$365 ==.
;	pwm.c: 255: TIM1_Cmd(ENABLE); // TIM1 counter enable
	push	#0x01
	call	_TIM1_Cmd
	pop	a
	C$pwm.c$256$1_0$365 ==.
;	pwm.c: 256: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
	C$pwm.c$258$1_0$365 ==.
;	pwm.c: 258: }
	C$pwm.c$258$1_0$365 ==.
	XG$enable_pwm$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
