;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module utils
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _map
	.globl _map_inverse
	.globl _ui8_min
	.globl _ui8_max
	.globl _ui8_limit_max
	.globl _pi_controller
	.globl _pi_controller_reset
	.globl _crc16
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
	G$map$0$0 ==.
	C$utils.c$17$0_0$365 ==.
;	utils.c: 17: int32_t map(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
;	-----------------------------------------
;	 function map
;	-----------------------------------------
_map:
	sub	sp, #16
	C$utils.c$20$1_0$365 ==.
;	utils.c: 20: if(x < in_min)
	ldw	x, (0x15, sp)
	cpw	x, (0x19, sp)
	ld	a, (0x14, sp)
	sbc	a, (0x18, sp)
	ld	a, (0x13, sp)
	sbc	a, (0x17, sp)
	jrsge	00108$
	C$utils.c$21$1_0$365 ==.
;	utils.c: 21: return out_min;
	ldw	x, (0x21, sp)
	ldw	y, (0x1f, sp)
	jp	00110$
00108$:
	C$utils.c$22$1_0$365 ==.
;	utils.c: 22: else if(x > in_max)
	ldw	x, (0x1d, sp)
	cpw	x, (0x15, sp)
	ld	a, (0x1c, sp)
	sbc	a, (0x14, sp)
	ld	a, (0x1b, sp)
	sbc	a, (0x13, sp)
	jrsge	00105$
	C$utils.c$23$1_0$365 ==.
;	utils.c: 23: return out_max;
	ldw	x, (0x25, sp)
	ldw	y, (0x23, sp)
	jp	00110$
00105$:
	C$utils.c$27$1_0$365 ==.
;	utils.c: 27: else  if((in_max - in_min) > (out_max - out_min))
	ldw	x, (0x1d, sp)
	subw	x, (0x19, sp)
	ldw	(0x03, sp), x
	ld	a, (0x1c, sp)
	sbc	a, (0x18, sp)
	ld	(0x02, sp), a
	ld	a, (0x1b, sp)
	sbc	a, (0x17, sp)
	ld	(0x01, sp), a
	ldw	x, (0x25, sp)
	subw	x, (0x21, sp)
	ldw	(0x07, sp), x
	ld	a, (0x24, sp)
	sbc	a, (0x20, sp)
	ld	(0x06, sp), a
	ld	a, (0x23, sp)
	sbc	a, (0x1f, sp)
	ld	(0x05, sp), a
	ldw	x, (0x07, sp)
	cpw	x, (0x03, sp)
	ld	a, (0x06, sp)
	sbc	a, (0x02, sp)
	ld	a, (0x05, sp)
	sbc	a, (0x01, sp)
	jrsge	00102$
	C$utils.c$28$1_0$365 ==.
;	utils.c: 28: return (x - in_min) * (out_max - out_min + 1) / (in_max - in_min + 1) + out_min;
	ldw	x, (0x15, sp)
	subw	x, (0x19, sp)
	ldw	(0x0b, sp), x
	ld	a, (0x14, sp)
	sbc	a, (0x18, sp)
	ld	(0x0a, sp), a
	ld	a, (0x13, sp)
	sbc	a, (0x17, sp)
	ld	(0x09, sp), a
	ldw	x, (0x07, sp)
	addw	x, #0x0001
	ldw	(0x0f, sp), x
	ldw	x, (0x05, sp)
	jrnc	00127$
	incw	x
00127$:
	ld	a, (0x10, sp)
	push	a
	ld	a, (0x10, sp)
	push	a
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
	ldw	x, (0x03, sp)
	addw	x, #0x0001
	ldw	y, (0x01, sp)
	jrnc	00128$
	incw	y
00128$:
	pushw	x
	pushw	y
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	call	__divslong
	addw	sp, #8
	exgw	x, y
	addw	y, (0x21, sp)
	ld	a, xl
	adc	a, (0x20, sp)
	rlwa	x
	adc	a, (0x1f, sp)
	ld	xh, a
	exgw	x, y
	jra	00110$
00102$:
	C$utils.c$31$1_0$365 ==.
;	utils.c: 31: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	ldw	x, (0x15, sp)
	subw	x, (0x19, sp)
	ldw	(0x0f, sp), x
	ld	a, (0x14, sp)
	sbc	a, (0x18, sp)
	ld	(0x0e, sp), a
	ld	a, (0x13, sp)
	sbc	a, (0x17, sp)
	ld	(0x0d, sp), a
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0f, sp), x
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	pushw	y
	call	__divslong
	addw	sp, #8
	exgw	x, y
	addw	y, (0x21, sp)
	ld	a, xl
	adc	a, (0x20, sp)
	rlwa	x
	adc	a, (0x1f, sp)
	ld	xh, a
	exgw	x, y
00110$:
	C$utils.c$32$1_0$365 ==.
;	utils.c: 32: }
	addw	sp, #16
	C$utils.c$32$1_0$365 ==.
	XG$map$0$0 ==.
	ret
	G$map_inverse$0$0 ==.
	C$utils.c$37$1_0$367 ==.
;	utils.c: 37: int32_t map_inverse(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
;	-----------------------------------------
;	 function map_inverse
;	-----------------------------------------
_map_inverse:
	sub	sp, #8
	C$utils.c$40$1_0$367 ==.
;	utils.c: 40: if(x < in_min)
	ldw	x, (0x0d, sp)
	cpw	x, (0x11, sp)
	ld	a, (0x0c, sp)
	sbc	a, (0x10, sp)
	ld	a, (0x0b, sp)
	sbc	a, (0x0f, sp)
	jrsge	00104$
	C$utils.c$41$1_0$367 ==.
;	utils.c: 41: return out_min;
	ldw	x, (0x19, sp)
	ldw	y, (0x17, sp)
	jp	00106$
00104$:
	C$utils.c$42$1_0$367 ==.
;	utils.c: 42: else if(x > in_max)
	ldw	x, (0x15, sp)
	cpw	x, (0x0d, sp)
	ld	a, (0x14, sp)
	sbc	a, (0x0c, sp)
	ld	a, (0x13, sp)
	sbc	a, (0x0b, sp)
	jrsge	00105$
	C$utils.c$43$1_0$367 ==.
;	utils.c: 43: return out_max;
	ldw	x, (0x1d, sp)
	ldw	y, (0x1b, sp)
	jra	00106$
00105$:
	C$utils.c$45$1_0$367 ==.
;	utils.c: 45: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	ldw	x, (0x0d, sp)
	subw	x, (0x11, sp)
	ldw	(0x03, sp), x
	ld	a, (0x0c, sp)
	sbc	a, (0x10, sp)
	ld	(0x02, sp), a
	ld	a, (0x0b, sp)
	sbc	a, (0x0f, sp)
	ld	(0x01, sp), a
	ldw	x, (0x1d, sp)
	subw	x, (0x19, sp)
	ldw	(0x07, sp), x
	ld	a, (0x1c, sp)
	sbc	a, (0x18, sp)
	ld	(0x06, sp), a
	ld	a, (0x1b, sp)
	sbc	a, (0x17, sp)
	ld	(0x05, sp), a
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	x, (0x15, sp)
	subw	x, (0x11, sp)
	ldw	(0x07, sp), x
	ld	a, (0x14, sp)
	sbc	a, (0x10, sp)
	ld	(0x06, sp), a
	ld	a, (0x13, sp)
	sbc	a, (0x0f, sp)
	ld	(0x05, sp), a
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	pushw	y
	call	__divslong
	addw	sp, #8
	exgw	x, y
	addw	y, (0x19, sp)
	ld	a, xl
	adc	a, (0x18, sp)
	rlwa	x
	adc	a, (0x17, sp)
	ld	xh, a
	exgw	x, y
00106$:
	C$utils.c$46$1_0$367 ==.
;	utils.c: 46: }
	addw	sp, #8
	C$utils.c$46$1_0$367 ==.
	XG$map_inverse$0$0 ==.
	ret
	G$ui8_min$0$0 ==.
	C$utils.c$51$1_0$369 ==.
;	utils.c: 51: uint8_t ui8_min(uint8_t value_a, uint8_t value_b)
;	-----------------------------------------
;	 function ui8_min
;	-----------------------------------------
_ui8_min:
	C$utils.c$53$1_0$369 ==.
;	utils.c: 53: if(value_a < value_b) return value_a;
	ld	a, (0x03, sp)
	cp	a, (0x04, sp)
	jrnc	00102$
	ld	a, (0x03, sp)
	jra	00104$
00102$:
	C$utils.c$54$1_0$369 ==.
;	utils.c: 54: else return value_b;
	ld	a, (0x04, sp)
00104$:
	C$utils.c$55$1_0$369 ==.
;	utils.c: 55: }
	C$utils.c$55$1_0$369 ==.
	XG$ui8_min$0$0 ==.
	ret
	G$ui8_max$0$0 ==.
	C$utils.c$60$1_0$371 ==.
;	utils.c: 60: uint8_t ui8_max(uint8_t value_a, uint8_t value_b)
;	-----------------------------------------
;	 function ui8_max
;	-----------------------------------------
_ui8_max:
	C$utils.c$62$1_0$371 ==.
;	utils.c: 62: if(value_a > value_b) return value_a;
	ld	a, (0x03, sp)
	cp	a, (0x04, sp)
	jrugt	00104$
	C$utils.c$63$1_0$371 ==.
;	utils.c: 63: else return value_b;
	ld	a, (0x04, sp)
00104$:
	C$utils.c$64$1_0$371 ==.
;	utils.c: 64: }
	C$utils.c$64$1_0$371 ==.
	XG$ui8_max$0$0 ==.
	ret
	G$ui8_limit_max$0$0 ==.
	C$utils.c$69$1_0$373 ==.
;	utils.c: 69: void ui8_limit_max(uint8_t *ui8_p_value, uint8_t ui8_max_value)
;	-----------------------------------------
;	 function ui8_limit_max
;	-----------------------------------------
_ui8_limit_max:
	C$utils.c$71$1_0$373 ==.
;	utils.c: 71: if(*ui8_p_value > ui8_max_value) { *ui8_p_value = ui8_max_value; }
	ldw	x, (0x03, sp)
	ld	a, (x)
	cp	a, (0x05, sp)
	jrule	00103$
	ld	a, (0x05, sp)
	ld	(x), a
00103$:
	C$utils.c$72$1_0$373 ==.
;	utils.c: 72: }
	C$utils.c$72$1_0$373 ==.
	XG$ui8_limit_max$0$0 ==.
	ret
	G$pi_controller$0$0 ==.
	C$utils.c$77$1_0$376 ==.
;	utils.c: 77: void pi_controller(struct_pi_controller_state *pi_controller)
;	-----------------------------------------
;	 function pi_controller
;	-----------------------------------------
_pi_controller:
	sub	sp, #8
	C$utils.c$83$1_0$376 ==.
;	utils.c: 83: i16_error = pi_controller->ui8_target_value - pi_controller->ui8_current_value; // 255-0 or 0-255 --> [-255 ; 255]
	ldw	y, (0x0b, sp)
	ldw	(0x01, sp), y
	ldw	x, y
	ld	a, (0x1, x)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x08, sp), a
	ld	(0x06, sp), a
	clr	(0x05, sp)
	ldw	x, (0x03, sp)
	subw	x, (0x05, sp)
	ldw	(0x07, sp), x
	C$utils.c$84$1_0$376 ==.
;	utils.c: 84: i16_p_term = (i16_error * pi_controller->ui8_kp_dividend) >> pi_controller->ui8_kp_divisor;
	ldw	x, (0x01, sp)
	ld	a, (0x3, x)
	clrw	x
	ld	xl, a
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	__mulint
	addw	sp, #4
	ldw	y, (0x01, sp)
	ld	a, (0x4, y)
	jreq	00128$
00127$:
	sraw	x
	dec	a
	jrne	00127$
00128$:
	ldw	(0x03, sp), x
	C$utils.c$86$1_0$376 ==.
;	utils.c: 86: pi_controller->i16_i_term += (i16_error * pi_controller->ui8_ki_dividend) >> pi_controller->ui8_ki_divisor;
	ldw	y, (0x01, sp)
	addw	y, #0x0007
	ldw	x, y
	ldw	x, (x)
	ldw	(0x05, sp), x
	ldw	x, (0x01, sp)
	ld	a, (0x5, x)
	clrw	x
	ld	xl, a
	pushw	y
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	__mulint
	addw	sp, #4
	ldw	(0x09, sp), x
	popw	y
	ldw	x, (0x01, sp)
	ld	a, (0x6, x)
	ldw	x, (0x07, sp)
	tnz	a
	jreq	00130$
00129$:
	sraw	x
	dec	a
	jrne	00129$
00130$:
	addw	x, (0x05, sp)
	ldw	(y), x
	C$utils.c$87$1_0$376 ==.
;	utils.c: 87: if(pi_controller->i16_i_term > 255) { pi_controller->i16_i_term = 255; }
	cpw	x, #0x00ff
	jrsle	00102$
	ldw	x, y
	ld	a, #0xff
	ld	(0x1, x), a
	clr	(x)
00102$:
	C$utils.c$88$1_0$376 ==.
;	utils.c: 88: if(pi_controller->i16_i_term < 0) { pi_controller->i16_i_term = 0; }
	ldw	x, y
	ldw	x, (x)
	jrpl	00104$
	ldw	x, y
	clr	(0x1, x)
	clr	(x)
00104$:
	C$utils.c$90$1_0$376 ==.
;	utils.c: 90: i16_temp = i16_p_term + pi_controller->i16_i_term;
	ldw	x, y
	ldw	x, (x)
	addw	x, (0x03, sp)
	C$utils.c$92$1_0$376 ==.
;	utils.c: 92: if(i16_temp > 255) { i16_temp = 255; }
	cpw	x, #0x00ff
	jrsle	00106$
	ldw	x, #0x00ff
00106$:
	C$utils.c$93$1_0$376 ==.
;	utils.c: 93: if(i16_temp < 0) { i16_temp = 0; }
	tnzw	x
	jrpl	00108$
	clrw	x
00108$:
	C$utils.c$94$1_0$376 ==.
;	utils.c: 94: pi_controller->ui8_controller_output_value = (uint8_t) i16_temp;
	ldw	y, (0x01, sp)
	ld	a, xl
	ld	(0x0002, y), a
	C$utils.c$95$1_0$376 ==.
;	utils.c: 95: }
	addw	sp, #8
	C$utils.c$95$1_0$376 ==.
	XG$pi_controller$0$0 ==.
	ret
	G$pi_controller_reset$0$0 ==.
	C$utils.c$100$1_0$382 ==.
;	utils.c: 100: void pi_controller_reset(struct_pi_controller_state *pi_controller)
;	-----------------------------------------
;	 function pi_controller_reset
;	-----------------------------------------
_pi_controller_reset:
	C$utils.c$102$1_0$382 ==.
;	utils.c: 102: pi_controller->i16_i_term = 0;
	ldw	x, (0x03, sp)
	addw	x, #0x0007
	clr	(0x1, x)
	clr	(x)
	C$utils.c$103$1_0$382 ==.
;	utils.c: 103: }
	C$utils.c$103$1_0$382 ==.
	XG$pi_controller_reset$0$0 ==.
	ret
	G$crc16$0$0 ==.
	C$utils.c$115$1_0$384 ==.
;	utils.c: 115: void crc16(uint8_t ui8_data, uint16_t* ui16_crc)
;	-----------------------------------------
;	 function crc16
;	-----------------------------------------
_crc16:
	sub	sp, #4
	C$utils.c$119$1_0$384 ==.
;	utils.c: 119: *ui16_crc = *ui16_crc ^(uint16_t) ui8_data;
	ldw	y, (0x08, sp)
	ldw	x, y
	ldw	x, (x)
	ld	a, (0x07, sp)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	ld	a, xl
	xor	a, (0x04, sp)
	rlwa	x
	xor	a, (0x03, sp)
	ld	xh, a
	ldw	(y), x
	C$utils.c$120$2_0$385 ==.
;	utils.c: 120: for(i = 8; i > 0; i--)
	ldw	x, #0x0008
	ldw	(0x01, sp), x
00105$:
	C$utils.c$122$3_0$386 ==.
;	utils.c: 122: if(*ui16_crc & 0x0001)
	ldw	x, y
	ldw	x, (x)
	srlw	x
	jrnc	00102$
	C$utils.c$123$3_0$386 ==.
;	utils.c: 123: *ui16_crc = (*ui16_crc >> 1) ^ 0xA001;
	ldw	x, y
	ldw	x, (x)
	srlw	x
	ld	a, xl
	xor	a, #0x01
	rlwa	x
	xor	a, #0xa0
	ld	xh, a
	ldw	(y), x
	jra	00106$
00102$:
	C$utils.c$125$3_0$386 ==.
;	utils.c: 125: *ui16_crc >>= 1;
	ldw	x, y
	ldw	x, (x)
	srlw	x
	ldw	(0x03, sp), x
	ldw	x, y
	ld	a, (0x04, sp)
	ld	(0x1, x), a
	ld	a, (0x03, sp)
	ld	(x), a
00106$:
	C$utils.c$120$2_0$385 ==.
;	utils.c: 120: for(i = 8; i > 0; i--)
	ldw	x, (0x01, sp)
	decw	x
	ldw	(0x01, sp), x
	tnzw	x
	jrne	00105$
	C$utils.c$127$2_0$384 ==.
;	utils.c: 127: }
	addw	sp, #4
	C$utils.c$127$2_0$384 ==.
	XG$crc16$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
