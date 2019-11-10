                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lights_init
                                     12 	.globl _eeprom_init_variables
                                     13 	.globl _eeprom_init
                                     14 	.globl _torque_sensor_init
                                     15 	.globl _ebike_app_controller
                                     16 	.globl _ebike_app_init
                                     17 	.globl _timer3_init
                                     18 	.globl _timer2_init
                                     19 	.globl _adc_init
                                     20 	.globl _pas_init
                                     21 	.globl _brake_init
                                     22 	.globl _wheel_speed_sensor_init
                                     23 	.globl _motor_controller
                                     24 	.globl _motor_init
                                     25 	.globl _hall_sensor_init
                                     26 	.globl _pwm_init_bipolar_4q
                                     27 	.globl _uart2_init
                                     28 	.globl _TIM3_GetCounter
                                     29 	.globl _CLK_HSIPrescalerConfig
                                     30 	.globl _main
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; Stack segment in internal ram 
                                     41 ;--------------------------------------------------------
                                     42 	.area	SSEG
      FFFFFF                         43 __start__stack:
      FFFFFF                         44 	.ds	1
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 
                                     51 ; default segment ordering for linker
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area CONST
                                     56 	.area INITIALIZER
                                     57 	.area CODE
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; interrupt vector 
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
      008000                         63 __interrupt_vect:
      008000 82 00 80 63             64 	int s_GSINIT ; reset
      008004 82 00 00 00             65 	int 0x000000 ; trap
      008008 82 00 00 00             66 	int 0x000000 ; int0
      00800C 82 00 00 00             67 	int 0x000000 ; int1
      008010 82 00 00 00             68 	int 0x000000 ; int2
      008014 82 00 00 00             69 	int 0x000000 ; int3
      008018 82 00 00 00             70 	int 0x000000 ; int4
      00801C 82 00 B2 05             71 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 00 00             72 	int 0x000000 ; int6
      008024 82 00 00 00             73 	int 0x000000 ; int7
      008028 82 00 00 00             74 	int 0x000000 ; int8
      00802C 82 00 00 00             75 	int 0x000000 ; int9
      008030 82 00 00 00             76 	int 0x000000 ; int10
      008034 82 00 00 00             77 	int 0x000000 ; int11
      008038 82 00 AA 3E             78 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 00 00             79 	int 0x000000 ; int13
      008040 82 00 00 00             80 	int 0x000000 ; int14
      008044 82 00 00 00             81 	int 0x000000 ; int15
      008048 82 00 00 00             82 	int 0x000000 ; int16
      00804C 82 00 00 00             83 	int 0x000000 ; int17
      008050 82 00 00 00             84 	int 0x000000 ; int18
      008054 82 00 00 00             85 	int 0x000000 ; int19
      008058 82 00 00 00             86 	int 0x000000 ; int20
      00805C 82 00 C5 B9             87 	int _UART2_IRQHandler ; int21
                                     88 ;--------------------------------------------------------
                                     89 ; global & static initialisations
                                     90 ;--------------------------------------------------------
                                     91 	.area HOME
                                     92 	.area GSINIT
                                     93 	.area GSFINAL
                                     94 	.area GSINIT
      008063                         95 __sdcc_gs_init_startup:
      008063                         96 __sdcc_init_data:
                                     97 ; stm8_genXINIT() start
      008063 AE 00 5E         [ 2]   98 	ldw x, #l_DATA
      008066 27 07            [ 1]   99 	jreq	00002$
      008068                        100 00001$:
      008068 72 4F 00 00      [ 1]  101 	clr (s_DATA - 1, x)
      00806C 5A               [ 2]  102 	decw x
      00806D 26 F9            [ 1]  103 	jrne	00001$
      00806F                        104 00002$:
      00806F AE 02 24         [ 2]  105 	ldw	x, #l_INITIALIZER
      008072 27 09            [ 1]  106 	jreq	00004$
      008074                        107 00003$:
      008074 D6 80 8F         [ 1]  108 	ld	a, (s_INITIALIZER - 1, x)
      008077 D7 00 5E         [ 1]  109 	ld	(s_INITIALIZED - 1, x), a
      00807A 5A               [ 2]  110 	decw	x
      00807B 26 F7            [ 1]  111 	jrne	00003$
      00807D                        112 00004$:
                                    113 ; stm8_genXINIT() end
                                    114 	.area GSFINAL
      008081 CC 80 60         [ 2]  115 	jp	__sdcc_program_startup
                                    116 ;--------------------------------------------------------
                                    117 ; Home
                                    118 ;--------------------------------------------------------
                                    119 	.area HOME
                                    120 	.area HOME
      008060                        121 __sdcc_program_startup:
      008060 CC 82 B4         [ 2]  122 	jp	_main
                                    123 ;	return from main will return to caller
                                    124 ;--------------------------------------------------------
                                    125 ; code
                                    126 ;--------------------------------------------------------
                                    127 	.area CODE
                           000000   128 	G$main$0$0 ==.
                           000000   129 	C$main.c$66$0_0$403 ==.
                                    130 ;	main.c: 66: int main(void)
                                    131 ;	-----------------------------------------
                                    132 ;	 function main
                                    133 ;	-----------------------------------------
      0082B4                        134 _main:
      0082B4 52 0C            [ 2]  135 	sub	sp, #12
                           000002   136 	C$main.c$69$2_0$403 ==.
                                    137 ;	main.c: 69: uint16_t ui16_ebike_app_controller_counter = 0;
      0082B6 5F               [ 1]  138 	clrw	x
      0082B7 1F 01            [ 2]  139 	ldw	(0x01, sp), x
                           000005   140 	C$main.c$70$2_0$403 ==.
                                    141 ;	main.c: 70: uint16_t ui16_motor_controller_counter = 0;
      0082B9 5F               [ 1]  142 	clrw	x
      0082BA 1F 03            [ 2]  143 	ldw	(0x03, sp), x
                           000008   144 	C$main.c$77$1_0$403 ==.
                                    145 ;	main.c: 77: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      0082BC 4B 00            [ 1]  146 	push	#0x00
      0082BE CD 86 F5         [ 4]  147 	call	_CLK_HSIPrescalerConfig
      0082C1 84               [ 1]  148 	pop	a
                           00000E   149 	C$main.c$80$2_0$404 ==.
                                    150 ;	main.c: 80: for(ui32_delay=0; ui32_delay<1000000; ui32_delay++);
      0082C2 AE 42 40         [ 2]  151 	ldw	x, #0x4240
      0082C5 1F 07            [ 2]  152 	ldw	(0x07, sp), x
      0082C7 AE 00 0F         [ 2]  153 	ldw	x, #0x000f
      0082CA                        154 00110$:
      0082CA 16 07            [ 2]  155 	ldw	y, (0x07, sp)
      0082CC 72 A2 00 01      [ 2]  156 	subw	y, #0x0001
      0082D0 17 0B            [ 2]  157 	ldw	(0x0b, sp), y
      0082D2 9F               [ 1]  158 	ld	a, xl
      0082D3 A2 00            [ 1]  159 	sbc	a, #0x00
      0082D5 6B 0A            [ 1]  160 	ld	(0x0a, sp), a
      0082D7 9E               [ 1]  161 	ld	a, xh
      0082D8 A2 00            [ 1]  162 	sbc	a, #0x00
      0082DA 6B 09            [ 1]  163 	ld	(0x09, sp), a
      0082DC 1E 0B            [ 2]  164 	ldw	x, (0x0b, sp)
      0082DE 1F 07            [ 2]  165 	ldw	(0x07, sp), x
      0082E0 1E 09            [ 2]  166 	ldw	x, (0x09, sp)
      0082E2 16 0B            [ 2]  167 	ldw	y, (0x0b, sp)
      0082E4 26 E4            [ 1]  168 	jrne	00110$
      0082E6 16 09            [ 2]  169 	ldw	y, (0x09, sp)
      0082E8 26 E0            [ 1]  170 	jrne	00110$
                           000036   171 	C$main.c$88$1_0$403 ==.
                                    172 ;	main.c: 88: eeprom_init();
      0082EA CD C9 18         [ 4]  173 	call	_eeprom_init
                           000039   174 	C$main.c$91$1_0$403 ==.
                                    175 ;	main.c: 91: eeprom_init_variables();
      0082ED CD C9 44         [ 4]  176 	call	_eeprom_init_variables
                           00003C   177 	C$main.c$94$1_0$403 ==.
                                    178 ;	main.c: 94: brake_init();
      0082F0 CD B2 1C         [ 4]  179 	call	_brake_init
                           00003F   180 	C$main.c$101$1_0$403 ==.
                                    181 ;	main.c: 101: lights_init();
      0082F3 CD D1 16         [ 4]  182 	call	_lights_init
                           000042   183 	C$main.c$104$1_0$403 ==.
                                    184 ;	main.c: 104: uart2_init();
      0082F6 CD A8 59         [ 4]  185 	call	_uart2_init
                           000045   186 	C$main.c$107$1_0$403 ==.
                                    187 ;	main.c: 107: timer2_init();
      0082F9 CD B3 E9         [ 4]  188 	call	_timer2_init
                           000048   189 	C$main.c$110$1_0$403 ==.
                                    190 ;	main.c: 110: timer3_init();
      0082FC CD B4 21         [ 4]  191 	call	_timer3_init
                           00004B   192 	C$main.c$113$1_0$403 ==.
                                    193 ;	main.c: 113: adc_init();
      0082FF CD B2 62         [ 4]  194 	call	_adc_init
                           00004E   195 	C$main.c$116$1_0$403 ==.
                                    196 ;	main.c: 116: torque_sensor_init();
      008302 CD A8 4B         [ 4]  197 	call	_torque_sensor_init
                           000051   198 	C$main.c$119$1_0$403 ==.
                                    199 ;	main.c: 119: pas_init();
      008305 CD B2 47         [ 4]  200 	call	_pas_init
                           000054   201 	C$main.c$122$1_0$403 ==.
                                    202 ;	main.c: 122: wheel_speed_sensor_init();
      008308 CD B1 F7         [ 4]  203 	call	_wheel_speed_sensor_init
                           000057   204 	C$main.c$125$1_0$403 ==.
                                    205 ;	main.c: 125: hall_sensor_init();
      00830B CD AF D5         [ 4]  206 	call	_hall_sensor_init
                           00005A   207 	C$main.c$128$1_0$403 ==.
                                    208 ;	main.c: 128: pwm_init_bipolar_4q();
      00830E CD A8 AB         [ 4]  209 	call	_pwm_init_bipolar_4q
                           00005D   210 	C$main.c$131$1_0$403 ==.
                                    211 ;	main.c: 131: motor_init();
      008311 CD AF FD         [ 4]  212 	call	_motor_init
                           000060   213 	C$main.c$134$1_0$403 ==.
                                    214 ;	main.c: 134: ebike_app_init();
      008314 CD B4 41         [ 4]  215 	call	_ebike_app_init
                           000063   216 	C$main.c$137$2_0$405 ==.
                                    217 ;	main.c: 137: enableInterrupts();
      008317 9A               [ 1]  218 	rim
      008318                        219 00111$:
                           000064   220 	C$main.c$144$3_0$407 ==.
                                    221 ;	main.c: 144: ui16_TIM3_counter = TIM3_GetCounter();
      008318 CD 9F 44         [ 4]  222 	call	_TIM3_GetCounter
      00831B 1F 0B            [ 2]  223 	ldw	(0x0b, sp), x
                           000069   224 	C$main.c$145$3_0$407 ==.
                                    225 ;	main.c: 145: if((ui16_TIM3_counter - ui16_motor_controller_counter) > 4) // every 4ms
      00831D 1E 0B            [ 2]  226 	ldw	x, (0x0b, sp)
      00831F 72 F0 03         [ 2]  227 	subw	x, (0x03, sp)
      008322 A3 00 04         [ 2]  228 	cpw	x, #0x0004
      008325 23 09            [ 2]  229 	jrule	00103$
                           000073   230 	C$main.c$147$4_0$408 ==.
                                    231 ;	main.c: 147: ui16_motor_controller_counter = ui16_TIM3_counter;
      008327 16 0B            [ 2]  232 	ldw	y, (0x0b, sp)
      008329 17 03            [ 2]  233 	ldw	(0x03, sp), y
                           000077   234 	C$main.c$148$4_0$408 ==.
                                    235 ;	main.c: 148: motor_controller();
      00832B CD AA 34         [ 4]  236 	call	_motor_controller
                           00007A   237 	C$main.c$149$4_0$408 ==.
                                    238 ;	main.c: 149: continue;
      00832E 20 E8            [ 2]  239 	jra	00111$
      008330                        240 00103$:
                           00007C   241 	C$main.c$152$3_0$407 ==.
                                    242 ;	main.c: 152: ui16_TIM3_counter = TIM3_GetCounter();
      008330 CD 9F 44         [ 4]  243 	call	_TIM3_GetCounter
      008333 51               [ 1]  244 	exgw	x, y
                           000080   245 	C$main.c$153$3_0$407 ==.
                                    246 ;	main.c: 153: if((ui16_TIM3_counter - ui16_ebike_app_controller_counter) > 100) // every 100ms
      008334 93               [ 1]  247 	ldw	x, y
      008335 72 F0 01         [ 2]  248 	subw	x, (0x01, sp)
      008338 A3 00 64         [ 2]  249 	cpw	x, #0x0064
      00833B 23 DB            [ 2]  250 	jrule	00111$
                           000089   251 	C$main.c$155$4_0$409 ==.
                                    252 ;	main.c: 155: ui16_ebike_app_controller_counter = ui16_TIM3_counter;
      00833D 17 01            [ 2]  253 	ldw	(0x01, sp), y
                           00008B   254 	C$main.c$156$4_0$409 ==.
                                    255 ;	main.c: 156: ebike_app_controller();
      00833F CD B4 73         [ 4]  256 	call	_ebike_app_controller
                           00008E   257 	C$main.c$157$4_0$409 ==.
                                    258 ;	main.c: 157: continue;
      008342 20 D4            [ 2]  259 	jra	00111$
                           000090   260 	C$main.c$190$2_0$403 ==.
                                    261 ;	main.c: 190: }
      008344 5B 0C            [ 2]  262 	addw	sp, #12
                           000092   263 	C$main.c$190$2_0$403 ==.
                           000092   264 	XG$main$0$0 ==.
      008346 81               [ 4]  265 	ret
                                    266 	.area CODE
                                    267 	.area CONST
                                    268 	.area INITIALIZER
                                    269 	.area CABS (ABS)
