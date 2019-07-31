;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_itc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
	.globl _ITC_DeInit
	.globl _ITC_GetSoftIntStatus
	.globl _ITC_GetSoftwarePriority
	.globl _ITC_SetSoftwarePriority
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
	G$ITC_GetCPUCC$0$0 ==.
	C$stm8s_itc.c$54$0_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 54: uint8_t ITC_GetCPUCC(void)
;	-----------------------------------------
;	 function ITC_GetCPUCC
;	-----------------------------------------
_ITC_GetCPUCC:
	C$stm8s_itc.c$63$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 63: __asm__("push cc");
	push	cc
	C$stm8s_itc.c$64$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 64: __asm__("pop a"); /* Ignore compiler warning, the returned value is in A register */
	pop	a
	C$stm8s_itc.c$69$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 69: }
	C$stm8s_itc.c$69$1_0$346 ==.
	XG$ITC_GetCPUCC$0$0 ==.
	ret
	G$ITC_DeInit$0$0 ==.
	C$stm8s_itc.c$90$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 90: void ITC_DeInit(void)
;	-----------------------------------------
;	 function ITC_DeInit
;	-----------------------------------------
_ITC_DeInit:
	C$stm8s_itc.c$92$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 92: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
	mov	0x7f70+0, #0xff
	C$stm8s_itc.c$93$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 93: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
	mov	0x7f71+0, #0xff
	C$stm8s_itc.c$94$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 94: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
	mov	0x7f72+0, #0xff
	C$stm8s_itc.c$95$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 95: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
	mov	0x7f73+0, #0xff
	C$stm8s_itc.c$96$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 96: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
	mov	0x7f74+0, #0xff
	C$stm8s_itc.c$97$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 97: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
	mov	0x7f75+0, #0xff
	C$stm8s_itc.c$98$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 98: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
	mov	0x7f76+0, #0xff
	C$stm8s_itc.c$99$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 99: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
	mov	0x7f77+0, #0xff
	C$stm8s_itc.c$100$1_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 100: }
	C$stm8s_itc.c$100$1_0$348 ==.
	XG$ITC_DeInit$0$0 ==.
	ret
	G$ITC_GetSoftIntStatus$0$0 ==.
	C$stm8s_itc.c$107$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 107: uint8_t ITC_GetSoftIntStatus(void)
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
_ITC_GetSoftIntStatus:
	C$stm8s_itc.c$109$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 109: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
	call	_ITC_GetCPUCC
	and	a, #0x28
	C$stm8s_itc.c$110$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 110: }
	C$stm8s_itc.c$110$1_0$350 ==.
	XG$ITC_GetSoftIntStatus$0$0 ==.
	ret
	G$ITC_GetSoftwarePriority$0$0 ==.
	C$stm8s_itc.c$117$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 117: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
;	-----------------------------------------
;	 function ITC_GetSoftwarePriority
;	-----------------------------------------
_ITC_GetSoftwarePriority:
	sub	sp, #3
	C$stm8s_itc.c$119$2_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 119: uint8_t Value = 0;
	clr	(0x01, sp)
	C$stm8s_itc.c$126$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 126: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
	ld	a, (0x06, sp)
	clrw	y
	and	a, #0x03
	sll	a
	ld	(0x02, sp), a
	ld	a, #0x03
	ld	(0x03, sp), a
	ld	a, (0x02, sp)
	jreq	00132$
00131$:
	sll	(0x03, sp)
	dec	a
	jrne	00131$
00132$:
	C$stm8s_itc.c$128$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 128: switch (IrqNum)
	ld	a, (0x06, sp)
	cp	a, #0x18
	jrule	00133$
	jp	00123$
00133$:
	clrw	x
	ld	a, (0x06, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00134$, x)
	jp	(x)
00134$:
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00123$
	.dw	#00123$
	.dw	#00110$
	.dw	#00110$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00116$
	.dw	#00123$
	.dw	#00123$
	.dw	#00116$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00121$
	C$stm8s_itc.c$133$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 133: case ITC_IRQ_PORTA:
00104$:
	C$stm8s_itc.c$134$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
	ld	a, 0x7f70
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_itc.c$135$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 135: break;
	jp	00123$
	C$stm8s_itc.c$140$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 140: case ITC_IRQ_PORTE:
00108$:
	C$stm8s_itc.c$141$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 141: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
	ld	a, 0x7f71
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_itc.c$142$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 142: break;
	jra	00123$
	C$stm8s_itc.c$152$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 152: case ITC_IRQ_TIM1_OVF:
00110$:
	C$stm8s_itc.c$153$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 153: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
	ld	a, 0x7f72
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_itc.c$154$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 154: break;
	jra	00123$
	C$stm8s_itc.c$164$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 164: case ITC_IRQ_TIM3_OVF:
00114$:
	C$stm8s_itc.c$165$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 165: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
	ld	a, 0x7f73
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_itc.c$166$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 166: break;
	jra	00123$
	C$stm8s_itc.c$178$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 178: case ITC_IRQ_I2C:
00116$:
	C$stm8s_itc.c$179$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 179: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
	ld	a, 0x7f74
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_itc.c$180$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 180: break;
	jra	00123$
	C$stm8s_itc.c$199$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 199: case ITC_IRQ_TIM4_OVF:
00120$:
	C$stm8s_itc.c$201$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 201: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
	ld	a, 0x7f75
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_itc.c$202$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 202: break;
	jra	00123$
	C$stm8s_itc.c$204$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 204: case ITC_IRQ_EEPROM_EEC:
00121$:
	C$stm8s_itc.c$205$2_0$353 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 205: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
	ld	a, 0x7f76
	and	a, (0x03, sp)
	ld	(0x01, sp), a
	C$stm8s_itc.c$210$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 210: }
00123$:
	C$stm8s_itc.c$212$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 212: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
	ld	a, (0x01, sp)
	push	a
	ld	a, (0x03, sp)
	jreq	00136$
00135$:
	srl	(1, sp)
	dec	a
	jrne	00135$
00136$:
	pop	a
	C$stm8s_itc.c$214$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 214: return((ITC_PriorityLevel_TypeDef)Value);
	C$stm8s_itc.c$215$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 215: }
	addw	sp, #3
	C$stm8s_itc.c$215$1_0$352 ==.
	XG$ITC_GetSoftwarePriority$0$0 ==.
	ret
	G$ITC_SetSoftwarePriority$0$0 ==.
	C$stm8s_itc.c$230$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 230: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
;	-----------------------------------------
;	 function ITC_SetSoftwarePriority
;	-----------------------------------------
_ITC_SetSoftwarePriority:
	sub	sp, #2
	C$stm8s_itc.c$244$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 244: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
	ld	a, (0x05, sp)
	clrw	y
	and	a, #0x03
	ld	xl, a
	sllw	x
	ld	a, #0x03
	push	a
	ld	a, xl
	tnz	a
	jreq	00131$
00130$:
	sll	(1, sp)
	dec	a
	jrne	00130$
00131$:
	pop	a
	cpl	a
	ld	(0x01, sp), a
	C$stm8s_itc.c$247$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 247: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
	ld	a, (0x06, sp)
	push	a
	ld	a, xl
	tnz	a
	jreq	00133$
00132$:
	sll	(1, sp)
	dec	a
	jrne	00132$
00133$:
	pop	a
	ld	(0x02, sp), a
	C$stm8s_itc.c$249$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 249: switch (IrqNum)
	ld	a, (0x05, sp)
	cp	a, #0x18
	jrule	00134$
	jp	00124$
00134$:
	clrw	x
	ld	a, (0x05, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00135$, x)
	jp	(x)
00135$:
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00104$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00108$
	.dw	#00124$
	.dw	#00124$
	.dw	#00110$
	.dw	#00110$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00114$
	.dw	#00116$
	.dw	#00124$
	.dw	#00124$
	.dw	#00116$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00120$
	.dw	#00121$
	C$stm8s_itc.c$254$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 254: case ITC_IRQ_PORTA:
00104$:
	C$stm8s_itc.c$255$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 255: ITC->ISPR1 &= Mask;
	ld	a, 0x7f70
	and	a, (0x01, sp)
	ld	0x7f70, a
	C$stm8s_itc.c$256$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 256: ITC->ISPR1 |= NewPriority;
	ld	a, 0x7f70
	or	a, (0x02, sp)
	ld	0x7f70, a
	C$stm8s_itc.c$257$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 257: break;
	jp	00124$
	C$stm8s_itc.c$262$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 262: case ITC_IRQ_PORTE:
00108$:
	C$stm8s_itc.c$263$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 263: ITC->ISPR2 &= Mask;
	ld	a, 0x7f71
	and	a, (0x01, sp)
	ld	0x7f71, a
	C$stm8s_itc.c$264$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 264: ITC->ISPR2 |= NewPriority;
	ld	a, 0x7f71
	or	a, (0x02, sp)
	ld	0x7f71, a
	C$stm8s_itc.c$265$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 265: break;
	jp	00124$
	C$stm8s_itc.c$275$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 275: case ITC_IRQ_TIM1_OVF:
00110$:
	C$stm8s_itc.c$276$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 276: ITC->ISPR3 &= Mask;
	ld	a, 0x7f72
	and	a, (0x01, sp)
	ld	0x7f72, a
	C$stm8s_itc.c$277$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 277: ITC->ISPR3 |= NewPriority;
	ld	a, 0x7f72
	or	a, (0x02, sp)
	ld	0x7f72, a
	C$stm8s_itc.c$278$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 278: break;
	jp	00124$
	C$stm8s_itc.c$288$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 288: case ITC_IRQ_TIM3_OVF:
00114$:
	C$stm8s_itc.c$289$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 289: ITC->ISPR4 &= Mask;
	ld	a, 0x7f73
	and	a, (0x01, sp)
	ld	0x7f73, a
	C$stm8s_itc.c$290$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 290: ITC->ISPR4 |= NewPriority;
	ld	a, 0x7f73
	or	a, (0x02, sp)
	ld	0x7f73, a
	C$stm8s_itc.c$291$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 291: break;
	jra	00124$
	C$stm8s_itc.c$303$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 303: case ITC_IRQ_I2C:
00116$:
	C$stm8s_itc.c$304$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 304: ITC->ISPR5 &= Mask;
	ld	a, 0x7f74
	and	a, (0x01, sp)
	ld	0x7f74, a
	C$stm8s_itc.c$305$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 305: ITC->ISPR5 |= NewPriority;
	ld	a, 0x7f74
	or	a, (0x02, sp)
	ld	0x7f74, a
	C$stm8s_itc.c$306$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 306: break;
	jra	00124$
	C$stm8s_itc.c$328$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 328: case ITC_IRQ_TIM4_OVF:
00120$:
	C$stm8s_itc.c$330$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 330: ITC->ISPR6 &= Mask;
	ld	a, 0x7f75
	and	a, (0x01, sp)
	ld	0x7f75, a
	C$stm8s_itc.c$331$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 331: ITC->ISPR6 |= NewPriority;
	ld	a, 0x7f75
	or	a, (0x02, sp)
	ld	0x7f75, a
	C$stm8s_itc.c$332$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 332: break;
	jra	00124$
	C$stm8s_itc.c$334$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 334: case ITC_IRQ_EEPROM_EEC:
00121$:
	C$stm8s_itc.c$335$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 335: ITC->ISPR7 &= Mask;
	ld	a, 0x7f76
	and	a, (0x01, sp)
	ld	0x7f76, a
	C$stm8s_itc.c$336$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 336: ITC->ISPR7 |= NewPriority;
	ld	a, 0x7f76
	or	a, (0x02, sp)
	ld	0x7f76, a
	C$stm8s_itc.c$341$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 341: }
00124$:
	C$stm8s_itc.c$342$1_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 342: }
	addw	sp, #2
	C$stm8s_itc.c$342$1_0$355 ==.
	XG$ITC_SetSoftwarePriority$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
