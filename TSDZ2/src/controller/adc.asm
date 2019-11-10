;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module adc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_GetCounter
	.globl _GPIO_Init
	.globl _ADC1_GetFlagStatus
	.globl _ADC1_ScanModeCmd
	.globl _ADC1_Cmd
	.globl _ADC1_Init
	.globl _adc_init
	.globl _ui16_adc_read_battery_current_10b
	.globl _ui16_adc_read_torque_sensor_10b
	.globl _ui16_adc_read_throttle_10b
	.globl _ui16_adc_read_battery_voltage_10b
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
	G$adc_init$0$0 ==.
	C$adc.c$24$0_0$382 ==.
;	adc.c: 24: void adc_init(void)
;	-----------------------------------------
;	 function adc_init
;	-----------------------------------------
_adc_init:
	sub	sp, #5
	C$adc.c$32$1_0$382 ==.
;	adc.c: 32: GPIO_Init(GPIOB, 
	push	#0x00
	push	#0xe8
	push	#0x05
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$adc.c$37$1_0$382 ==.
;	adc.c: 37: ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
	push	#0x00
	push	#0x07
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x07
	push	#0x00
	call	_ADC1_Init
	addw	sp, #8
	C$adc.c$46$1_0$382 ==.
;	adc.c: 46: ADC1_ScanModeCmd(ENABLE);
	push	#0x01
	call	_ADC1_ScanModeCmd
	pop	a
	C$adc.c$47$1_0$382 ==.
;	adc.c: 47: ADC1_Cmd(ENABLE);
	push	#0x01
	call	_ADC1_Cmd
	pop	a
	C$adc.c$53$1_0$382 ==.
;	adc.c: 53: for(ui8_i = 0; ui8_i < 64; ++ui8_i)
	clr	(0x05, sp)
00122$:
	C$adc.c$55$3_0$384 ==.
;	adc.c: 55: ui16_counter = TIM3_GetCounter() + 10; // delay ~10ms
	call	_TIM3_GetCounter
	addw	x, #0x000a
	ldw	(0x03, sp), x
	C$adc.c$56$3_0$384 ==.
;	adc.c: 56: while(TIM3_GetCounter() < ui16_counter) ; // delay ~10ms
00101$:
	call	_TIM3_GetCounter
	cpw	x, (0x03, sp)
	jrc	00101$
	C$adc.c$57$3_0$384 ==.
;	adc.c: 57: adc_trigger();
	call	_adc_trigger
	C$adc.c$58$3_0$384 ==.
;	adc.c: 58: while(!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ; // wait for end of conversion
00104$:
	push	#0x80
	call	_ADC1_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00104$
	C$adc.c$53$2_0$383 ==.
;	adc.c: 53: for(ui8_i = 0; ui8_i < 64; ++ui8_i)
	inc	(0x05, sp)
	ld	a, (0x05, sp)
	cp	a, #0x40
	jrc	00122$
	C$adc.c$62$1_0$382 ==.
;	adc.c: 62: ui16_adc_battery_current_offset = 0;
	clrw	x
	ldw	(0x01, sp), x
	C$adc.c$63$1_0$382 ==.
;	adc.c: 63: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
	clr	(0x05, sp)
00124$:
	C$adc.c$65$3_0$386 ==.
;	adc.c: 65: ui16_counter = TIM3_GetCounter() + 10; // delay ~10ms
	call	_TIM3_GetCounter
	addw	x, #0x000a
	ldw	(0x03, sp), x
	C$adc.c$66$3_0$386 ==.
;	adc.c: 66: while(TIM3_GetCounter() < ui16_counter) ; // delay ~10ms
00108$:
	call	_TIM3_GetCounter
	cpw	x, (0x03, sp)
	jrc	00108$
	C$adc.c$67$3_0$386 ==.
;	adc.c: 67: adc_trigger();
	call	_adc_trigger
	C$adc.c$68$3_0$386 ==.
;	adc.c: 68: while(!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ; // wait for end of conversion
00111$:
	push	#0x80
	call	_ADC1_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00111$
	C$adc.c$69$3_0$386 ==.
;	adc.c: 69: ui16_adc_battery_current_offset += UI8_ADC_BATTERY_CURRENT;
	ld	a, 0x53ea
	clrw	x
	ld	xl, a
	addw	x, (0x01, sp)
	ldw	(0x01, sp), x
	C$adc.c$63$2_0$385 ==.
;	adc.c: 63: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
	inc	(0x05, sp)
	ld	a, (0x05, sp)
	cp	a, #0x10
	jrc	00124$
	C$adc.c$71$1_0$382 ==.
;	adc.c: 71: ui16_adc_battery_current_offset >>= 4;
	ldw	x, (0x01, sp)
	ld	a, #0x10
	div	x, a
	C$adc.c$72$1_0$382 ==.
;	adc.c: 72: ui8_adc_battery_current_offset = ui16_adc_battery_current_offset >> 2;
	srlw	x
	srlw	x
	ld	a, xl
	ld	_ui8_adc_battery_current_offset+0, a
	C$adc.c$73$1_0$382 ==.
;	adc.c: 73: ui8_adc_motor_phase_current_offset = ui8_adc_battery_current_offset;
	mov	_ui8_adc_motor_phase_current_offset+0, _ui8_adc_battery_current_offset+0
	C$adc.c$76$1_0$382 ==.
;	adc.c: 76: ui16_adc_torque_sensor_offset = 0;
	clrw	x
	ldw	(0x01, sp), x
	C$adc.c$77$1_0$382 ==.
;	adc.c: 77: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
	clr	(0x05, sp)
00126$:
	C$adc.c$79$3_0$388 ==.
;	adc.c: 79: ui16_counter = TIM3_GetCounter() + 10; // delay ~10ms
	call	_TIM3_GetCounter
	addw	x, #0x000a
	ldw	(0x03, sp), x
	C$adc.c$80$3_0$388 ==.
;	adc.c: 80: while(TIM3_GetCounter() < ui16_counter) ; // delay ~10ms
00115$:
	call	_TIM3_GetCounter
	cpw	x, (0x03, sp)
	jrc	00115$
	C$adc.c$81$3_0$388 ==.
;	adc.c: 81: adc_trigger();
	call	_adc_trigger
	C$adc.c$82$3_0$388 ==.
;	adc.c: 82: while(!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ; // wait for end of conversion
00118$:
	push	#0x80
	call	_ADC1_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00118$
	C$adc.c$83$3_0$388 ==.
;	adc.c: 83: ui16_adc_torque_sensor_offset += UI8_ADC_TORQUE_SENSOR;
	ld	a, 0x53e8
	clrw	x
	ld	xl, a
	addw	x, (0x01, sp)
	ldw	(0x01, sp), x
	C$adc.c$77$2_0$387 ==.
;	adc.c: 77: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
	inc	(0x05, sp)
	ld	a, (0x05, sp)
	cp	a, #0x10
	jrc	00126$
	C$adc.c$85$1_0$382 ==.
;	adc.c: 85: ui16_adc_torque_sensor_offset >>= 4;
	ldw	x, (0x01, sp)
	ld	a, #0x10
	div	x, a
	ld	a, xl
	C$adc.c$87$1_0$382 ==.
;	adc.c: 87: ui8_adc_torque_sensor_min_value = ((uint8_t) ui16_adc_torque_sensor_offset) + ADC_TORQUE_SENSOR_THRESHOLD;
	add	a, #0x06
	ld	_ui8_adc_torque_sensor_min_value+0, a
	C$adc.c$88$1_0$382 ==.
;	adc.c: 88: ui8_adc_torque_sensor_max_value = 255;
	mov	_ui8_adc_torque_sensor_max_value+0, #0xff
	C$adc.c$89$1_0$382 ==.
;	adc.c: 89: }
	addw	sp, #5
	C$adc.c$89$1_0$382 ==.
	XG$adc_init$0$0 ==.
	ret
	Fadc$adc_trigger$0$0 ==.
	C$adc.c$94$1_0$390 ==.
;	adc.c: 94: static void adc_trigger(void)
;	-----------------------------------------
;	 function adc_trigger
;	-----------------------------------------
_adc_trigger:
	C$adc.c$97$1_0$390 ==.
;	adc.c: 97: ADC1->CSR &= 0x07; // clear EOC flag first (selected also channel 7)
	ld	a, 0x5400
	and	a, #0x07
	ld	0x5400, a
	C$adc.c$98$1_0$390 ==.
;	adc.c: 98: ADC1->CR1 |= ADC1_CR1_ADON; // Start ADC1 conversion
	bset	21505, #0
	C$adc.c$99$1_0$390 ==.
;	adc.c: 99: }
	C$adc.c$99$1_0$390 ==.
	XFadc$adc_trigger$0$0 ==.
	ret
	G$ui16_adc_read_battery_current_10b$0$0 ==.
	C$adc.c$104$1_0$392 ==.
;	adc.c: 104: uint16_t ui16_adc_read_battery_current_10b(void)
;	-----------------------------------------
;	 function ui16_adc_read_battery_current_10b
;	-----------------------------------------
_ui16_adc_read_battery_current_10b:
	sub	sp, #2
	C$adc.c$109$1_0$392 ==.
;	adc.c: 109: templ = *(uint8_t*)(0x53EB);
	ld	a, 0x53eb
	ld	yl, a
	C$adc.c$110$1_0$392 ==.
;	adc.c: 110: temph = *(uint8_t*)(0x53EA);
	ld	a, 0x53ea
	clrw	x
	ld	xl, a
	C$adc.c$112$1_0$392 ==.
;	adc.c: 112: temph = ((uint16_t) temph) << 2 | ((uint16_t) templ);
	sllw	x
	sllw	x
	exg	a, yl
	ld	(0x02, sp), a
	exg	a, yl
	clr	(0x01, sp)
	ld	a, xl
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	ldw	(0x01, sp), x
	C$adc.c$119$1_0$392 ==.
;	adc.c: 119: if(temph <= 5)
	ldw	x, (0x01, sp)
	cpw	x, #0x0005
	jrugt	00102$
	C$adc.c$120$1_0$392 ==.
;	adc.c: 120: return 0;
	clrw	x
	jra	00105$
00102$:
	C$adc.c$121$1_0$392 ==.
;	adc.c: 121: if(temph > 15)
	ldw	x, (0x01, sp)
	cpw	x, #0x000f
	jrule	00104$
	C$adc.c$122$1_0$392 ==.
;	adc.c: 122: return temph;
	ldw	x, (0x01, sp)
	jra	00105$
00104$:
	C$adc.c$123$1_0$392 ==.
;	adc.c: 123: temph -= 5;
	ldw	x, (0x01, sp)
	subw	x, #0x0005
	ldw	(0x01, sp), x
	C$adc.c$124$1_0$392 ==.
;	adc.c: 124: return temph + (temph >> 1);
	ldw	x, (0x01, sp)
	srlw	x
	addw	x, (0x01, sp)
00105$:
	C$adc.c$125$1_0$392 ==.
;	adc.c: 125: }
	addw	sp, #2
	C$adc.c$125$1_0$392 ==.
	XG$ui16_adc_read_battery_current_10b$0$0 ==.
	ret
	G$ui16_adc_read_torque_sensor_10b$0$0 ==.
	C$adc.c$130$1_0$394 ==.
;	adc.c: 130: uint16_t ui16_adc_read_torque_sensor_10b(void)
;	-----------------------------------------
;	 function ui16_adc_read_torque_sensor_10b
;	-----------------------------------------
_ui16_adc_read_torque_sensor_10b:
	sub	sp, #2
	C$adc.c$135$1_0$394 ==.
;	adc.c: 135: templ = *(uint8_t*)(0x53E9);
	ld	a, 0x53e9
	ld	yl, a
	C$adc.c$136$1_0$394 ==.
;	adc.c: 136: temph = *(uint8_t*)(0x53E8);
	ld	a, 0x53e8
	clrw	x
	ld	xl, a
	C$adc.c$138$1_0$394 ==.
;	adc.c: 138: return ((uint16_t) temph) << 2 | ((uint16_t) templ);
	sllw	x
	sllw	x
	exg	a, yl
	ld	(0x02, sp), a
	exg	a, yl
	clr	(0x01, sp)
	ld	a, xl
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	C$adc.c$139$1_0$394 ==.
;	adc.c: 139: }
	addw	sp, #2
	C$adc.c$139$1_0$394 ==.
	XG$ui16_adc_read_torque_sensor_10b$0$0 ==.
	ret
	G$ui16_adc_read_throttle_10b$0$0 ==.
	C$adc.c$144$1_0$396 ==.
;	adc.c: 144: uint16_t ui16_adc_read_throttle_10b(void)
;	-----------------------------------------
;	 function ui16_adc_read_throttle_10b
;	-----------------------------------------
_ui16_adc_read_throttle_10b:
	sub	sp, #2
	C$adc.c$149$1_0$396 ==.
;	adc.c: 149: templ = *(uint8_t*)(0x53EF);
	ld	a, 0x53ef
	ld	yl, a
	C$adc.c$150$1_0$396 ==.
;	adc.c: 150: temph = *(uint8_t*)(0x53EE);
	ld	a, 0x53ee
	clrw	x
	ld	xl, a
	C$adc.c$152$1_0$396 ==.
;	adc.c: 152: return ((uint16_t) temph) << 2 | ((uint16_t) templ);
	sllw	x
	sllw	x
	exg	a, yl
	ld	(0x02, sp), a
	exg	a, yl
	clr	(0x01, sp)
	ld	a, xl
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	C$adc.c$153$1_0$396 ==.
;	adc.c: 153: }
	addw	sp, #2
	C$adc.c$153$1_0$396 ==.
	XG$ui16_adc_read_throttle_10b$0$0 ==.
	ret
	G$ui16_adc_read_battery_voltage_10b$0$0 ==.
	C$adc.c$158$1_0$398 ==.
;	adc.c: 158: uint16_t ui16_adc_read_battery_voltage_10b(void)
;	-----------------------------------------
;	 function ui16_adc_read_battery_voltage_10b
;	-----------------------------------------
_ui16_adc_read_battery_voltage_10b:
	sub	sp, #2
	C$adc.c$163$1_0$398 ==.
;	adc.c: 163: templ = *(uint8_t*)(0x53ED);
	ld	a, 0x53ed
	ld	yl, a
	C$adc.c$164$1_0$398 ==.
;	adc.c: 164: temph = *(uint8_t*)(0x53EC);
	ld	a, 0x53ec
	clrw	x
	ld	xl, a
	C$adc.c$166$1_0$398 ==.
;	adc.c: 166: return ((uint16_t) temph) << 2 | ((uint16_t) templ);
	sllw	x
	sllw	x
	exg	a, yl
	ld	(0x02, sp), a
	exg	a, yl
	clr	(0x01, sp)
	ld	a, xl
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	C$adc.c$167$1_0$398 ==.
;	adc.c: 167: }
	addw	sp, #2
	C$adc.c$167$1_0$398 ==.
	XG$ui16_adc_read_battery_voltage_10b$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
