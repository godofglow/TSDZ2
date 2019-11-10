                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM3_GetCounter
                                     12 	.globl _GPIO_Init
                                     13 	.globl _ADC1_GetFlagStatus
                                     14 	.globl _ADC1_ScanModeCmd
                                     15 	.globl _ADC1_Cmd
                                     16 	.globl _ADC1_Init
                                     17 	.globl _adc_init
                                     18 	.globl _ui16_adc_read_battery_current_10b
                                     19 	.globl _ui16_adc_read_torque_sensor_10b
                                     20 	.globl _ui16_adc_read_throttle_10b
                                     21 	.globl _ui16_adc_read_battery_voltage_10b
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 
                                     35 ; default segment ordering for linker
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area CONST
                                     40 	.area INITIALIZER
                                     41 	.area CODE
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; global & static initialisations
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area GSINIT
                                     50 ;--------------------------------------------------------
                                     51 ; Home
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area HOME
                                     55 ;--------------------------------------------------------
                                     56 ; code
                                     57 ;--------------------------------------------------------
                                     58 	.area CODE
                           000000    59 	G$adc_init$0$0 ==.
                           000000    60 	C$adc.c$24$0_0$382 ==.
                                     61 ;	adc.c: 24: void adc_init(void)
                                     62 ;	-----------------------------------------
                                     63 ;	 function adc_init
                                     64 ;	-----------------------------------------
      00B262                         65 _adc_init:
      00B262 52 05            [ 2]   66 	sub	sp, #5
                           000002    67 	C$adc.c$32$1_0$382 ==.
                                     68 ;	adc.c: 32: GPIO_Init(GPIOB, 
      00B264 4B 00            [ 1]   69 	push	#0x00
      00B266 4B E8            [ 1]   70 	push	#0xe8
      00B268 4B 05            [ 1]   71 	push	#0x05
      00B26A 4B 50            [ 1]   72 	push	#0x50
      00B26C CD 88 85         [ 4]   73 	call	_GPIO_Init
      00B26F 5B 04            [ 2]   74 	addw	sp, #4
                           00000F    75 	C$adc.c$37$1_0$382 ==.
                                     76 ;	adc.c: 37: ADC1_Init(ADC1_CONVERSIONMODE_SINGLE,
      00B271 4B 00            [ 1]   77 	push	#0x00
      00B273 4B 07            [ 1]   78 	push	#0x07
      00B275 4B 00            [ 1]   79 	push	#0x00
      00B277 4B 00            [ 1]   80 	push	#0x00
      00B279 4B 00            [ 1]   81 	push	#0x00
      00B27B 4B 00            [ 1]   82 	push	#0x00
      00B27D 4B 07            [ 1]   83 	push	#0x07
      00B27F 4B 00            [ 1]   84 	push	#0x00
      00B281 CD A1 3A         [ 4]   85 	call	_ADC1_Init
      00B284 5B 08            [ 2]   86 	addw	sp, #8
                           000024    87 	C$adc.c$46$1_0$382 ==.
                                     88 ;	adc.c: 46: ADC1_ScanModeCmd(ENABLE);
      00B286 4B 01            [ 1]   89 	push	#0x01
      00B288 CD A1 79         [ 4]   90 	call	_ADC1_ScanModeCmd
      00B28B 84               [ 1]   91 	pop	a
                           00002A    92 	C$adc.c$47$1_0$382 ==.
                                     93 ;	adc.c: 47: ADC1_Cmd(ENABLE);
      00B28C 4B 01            [ 1]   94 	push	#0x01
      00B28E CD A1 6A         [ 4]   95 	call	_ADC1_Cmd
      00B291 84               [ 1]   96 	pop	a
                           000030    97 	C$adc.c$53$1_0$382 ==.
                                     98 ;	adc.c: 53: for(ui8_i = 0; ui8_i < 64; ++ui8_i)
      00B292 0F 05            [ 1]   99 	clr	(0x05, sp)
      00B294                        100 00122$:
                           000032   101 	C$adc.c$55$3_0$384 ==.
                                    102 ;	adc.c: 55: ui16_counter = TIM3_GetCounter() + 10; // delay ~10ms
      00B294 CD 9F 44         [ 4]  103 	call	_TIM3_GetCounter
      00B297 1C 00 0A         [ 2]  104 	addw	x, #0x000a
      00B29A 1F 03            [ 2]  105 	ldw	(0x03, sp), x
                           00003A   106 	C$adc.c$56$3_0$384 ==.
                                    107 ;	adc.c: 56: while(TIM3_GetCounter() < ui16_counter) ; // delay ~10ms
      00B29C                        108 00101$:
      00B29C CD 9F 44         [ 4]  109 	call	_TIM3_GetCounter
      00B29F 13 03            [ 2]  110 	cpw	x, (0x03, sp)
      00B2A1 25 F9            [ 1]  111 	jrc	00101$
                           000041   112 	C$adc.c$57$3_0$384 ==.
                                    113 ;	adc.c: 57: adc_trigger();
      00B2A3 CD B3 40         [ 4]  114 	call	_adc_trigger
                           000044   115 	C$adc.c$58$3_0$384 ==.
                                    116 ;	adc.c: 58: while(!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ; // wait for end of conversion
      00B2A6                        117 00104$:
      00B2A6 4B 80            [ 1]  118 	push	#0x80
      00B2A8 CD A4 3B         [ 4]  119 	call	_ADC1_GetFlagStatus
      00B2AB 5B 01            [ 2]  120 	addw	sp, #1
      00B2AD 4D               [ 1]  121 	tnz	a
      00B2AE 27 F6            [ 1]  122 	jreq	00104$
                           00004E   123 	C$adc.c$53$2_0$383 ==.
                                    124 ;	adc.c: 53: for(ui8_i = 0; ui8_i < 64; ++ui8_i)
      00B2B0 0C 05            [ 1]  125 	inc	(0x05, sp)
      00B2B2 7B 05            [ 1]  126 	ld	a, (0x05, sp)
      00B2B4 A1 40            [ 1]  127 	cp	a, #0x40
      00B2B6 25 DC            [ 1]  128 	jrc	00122$
                           000056   129 	C$adc.c$62$1_0$382 ==.
                                    130 ;	adc.c: 62: ui16_adc_battery_current_offset = 0;
      00B2B8 5F               [ 1]  131 	clrw	x
      00B2B9 1F 01            [ 2]  132 	ldw	(0x01, sp), x
                           000059   133 	C$adc.c$63$1_0$382 ==.
                                    134 ;	adc.c: 63: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
      00B2BB 0F 05            [ 1]  135 	clr	(0x05, sp)
      00B2BD                        136 00124$:
                           00005B   137 	C$adc.c$65$3_0$386 ==.
                                    138 ;	adc.c: 65: ui16_counter = TIM3_GetCounter() + 10; // delay ~10ms
      00B2BD CD 9F 44         [ 4]  139 	call	_TIM3_GetCounter
      00B2C0 1C 00 0A         [ 2]  140 	addw	x, #0x000a
      00B2C3 1F 03            [ 2]  141 	ldw	(0x03, sp), x
                           000063   142 	C$adc.c$66$3_0$386 ==.
                                    143 ;	adc.c: 66: while(TIM3_GetCounter() < ui16_counter) ; // delay ~10ms
      00B2C5                        144 00108$:
      00B2C5 CD 9F 44         [ 4]  145 	call	_TIM3_GetCounter
      00B2C8 13 03            [ 2]  146 	cpw	x, (0x03, sp)
      00B2CA 25 F9            [ 1]  147 	jrc	00108$
                           00006A   148 	C$adc.c$67$3_0$386 ==.
                                    149 ;	adc.c: 67: adc_trigger();
      00B2CC CD B3 40         [ 4]  150 	call	_adc_trigger
                           00006D   151 	C$adc.c$68$3_0$386 ==.
                                    152 ;	adc.c: 68: while(!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ; // wait for end of conversion
      00B2CF                        153 00111$:
      00B2CF 4B 80            [ 1]  154 	push	#0x80
      00B2D1 CD A4 3B         [ 4]  155 	call	_ADC1_GetFlagStatus
      00B2D4 5B 01            [ 2]  156 	addw	sp, #1
      00B2D6 4D               [ 1]  157 	tnz	a
      00B2D7 27 F6            [ 1]  158 	jreq	00111$
                           000077   159 	C$adc.c$69$3_0$386 ==.
                                    160 ;	adc.c: 69: ui16_adc_battery_current_offset += UI8_ADC_BATTERY_CURRENT;
      00B2D9 C6 53 EA         [ 1]  161 	ld	a, 0x53ea
      00B2DC 5F               [ 1]  162 	clrw	x
      00B2DD 97               [ 1]  163 	ld	xl, a
      00B2DE 72 FB 01         [ 2]  164 	addw	x, (0x01, sp)
      00B2E1 1F 01            [ 2]  165 	ldw	(0x01, sp), x
                           000081   166 	C$adc.c$63$2_0$385 ==.
                                    167 ;	adc.c: 63: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
      00B2E3 0C 05            [ 1]  168 	inc	(0x05, sp)
      00B2E5 7B 05            [ 1]  169 	ld	a, (0x05, sp)
      00B2E7 A1 10            [ 1]  170 	cp	a, #0x10
      00B2E9 25 D2            [ 1]  171 	jrc	00124$
                           000089   172 	C$adc.c$71$1_0$382 ==.
                                    173 ;	adc.c: 71: ui16_adc_battery_current_offset >>= 4;
      00B2EB 1E 01            [ 2]  174 	ldw	x, (0x01, sp)
      00B2ED A6 10            [ 1]  175 	ld	a, #0x10
      00B2EF 62               [ 2]  176 	div	x, a
                           00008E   177 	C$adc.c$72$1_0$382 ==.
                                    178 ;	adc.c: 72: ui8_adc_battery_current_offset = ui16_adc_battery_current_offset >> 2;
      00B2F0 54               [ 2]  179 	srlw	x
      00B2F1 54               [ 2]  180 	srlw	x
      00B2F2 9F               [ 1]  181 	ld	a, xl
      00B2F3 C7 01 EF         [ 1]  182 	ld	_ui8_adc_battery_current_offset+0, a
                           000094   183 	C$adc.c$73$1_0$382 ==.
                                    184 ;	adc.c: 73: ui8_adc_motor_phase_current_offset = ui8_adc_battery_current_offset;
      00B2F6 55 01 EF 01 D4   [ 1]  185 	mov	_ui8_adc_motor_phase_current_offset+0, _ui8_adc_battery_current_offset+0
                           000099   186 	C$adc.c$76$1_0$382 ==.
                                    187 ;	adc.c: 76: ui16_adc_torque_sensor_offset = 0;
      00B2FB 5F               [ 1]  188 	clrw	x
      00B2FC 1F 01            [ 2]  189 	ldw	(0x01, sp), x
                           00009C   190 	C$adc.c$77$1_0$382 ==.
                                    191 ;	adc.c: 77: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
      00B2FE 0F 05            [ 1]  192 	clr	(0x05, sp)
      00B300                        193 00126$:
                           00009E   194 	C$adc.c$79$3_0$388 ==.
                                    195 ;	adc.c: 79: ui16_counter = TIM3_GetCounter() + 10; // delay ~10ms
      00B300 CD 9F 44         [ 4]  196 	call	_TIM3_GetCounter
      00B303 1C 00 0A         [ 2]  197 	addw	x, #0x000a
      00B306 1F 03            [ 2]  198 	ldw	(0x03, sp), x
                           0000A6   199 	C$adc.c$80$3_0$388 ==.
                                    200 ;	adc.c: 80: while(TIM3_GetCounter() < ui16_counter) ; // delay ~10ms
      00B308                        201 00115$:
      00B308 CD 9F 44         [ 4]  202 	call	_TIM3_GetCounter
      00B30B 13 03            [ 2]  203 	cpw	x, (0x03, sp)
      00B30D 25 F9            [ 1]  204 	jrc	00115$
                           0000AD   205 	C$adc.c$81$3_0$388 ==.
                                    206 ;	adc.c: 81: adc_trigger();
      00B30F CD B3 40         [ 4]  207 	call	_adc_trigger
                           0000B0   208 	C$adc.c$82$3_0$388 ==.
                                    209 ;	adc.c: 82: while(!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ; // wait for end of conversion
      00B312                        210 00118$:
      00B312 4B 80            [ 1]  211 	push	#0x80
      00B314 CD A4 3B         [ 4]  212 	call	_ADC1_GetFlagStatus
      00B317 5B 01            [ 2]  213 	addw	sp, #1
      00B319 4D               [ 1]  214 	tnz	a
      00B31A 27 F6            [ 1]  215 	jreq	00118$
                           0000BA   216 	C$adc.c$83$3_0$388 ==.
                                    217 ;	adc.c: 83: ui16_adc_torque_sensor_offset += UI8_ADC_TORQUE_SENSOR;
      00B31C C6 53 E8         [ 1]  218 	ld	a, 0x53e8
      00B31F 5F               [ 1]  219 	clrw	x
      00B320 97               [ 1]  220 	ld	xl, a
      00B321 72 FB 01         [ 2]  221 	addw	x, (0x01, sp)
      00B324 1F 01            [ 2]  222 	ldw	(0x01, sp), x
                           0000C4   223 	C$adc.c$77$2_0$387 ==.
                                    224 ;	adc.c: 77: for(ui8_i = 0; ui8_i < 16; ++ui8_i)
      00B326 0C 05            [ 1]  225 	inc	(0x05, sp)
      00B328 7B 05            [ 1]  226 	ld	a, (0x05, sp)
      00B32A A1 10            [ 1]  227 	cp	a, #0x10
      00B32C 25 D2            [ 1]  228 	jrc	00126$
                           0000CC   229 	C$adc.c$85$1_0$382 ==.
                                    230 ;	adc.c: 85: ui16_adc_torque_sensor_offset >>= 4;
      00B32E 1E 01            [ 2]  231 	ldw	x, (0x01, sp)
      00B330 A6 10            [ 1]  232 	ld	a, #0x10
      00B332 62               [ 2]  233 	div	x, a
      00B333 9F               [ 1]  234 	ld	a, xl
                           0000D2   235 	C$adc.c$87$1_0$382 ==.
                                    236 ;	adc.c: 87: ui8_adc_torque_sensor_min_value = ((uint8_t) ui16_adc_torque_sensor_offset) + ADC_TORQUE_SENSOR_THRESHOLD;
      00B334 AB 06            [ 1]  237 	add	a, #0x06
      00B336 C7 01 ED         [ 1]  238 	ld	_ui8_adc_torque_sensor_min_value+0, a
                           0000D7   239 	C$adc.c$88$1_0$382 ==.
                                    240 ;	adc.c: 88: ui8_adc_torque_sensor_max_value = 255;
      00B339 35 FF 01 EE      [ 1]  241 	mov	_ui8_adc_torque_sensor_max_value+0, #0xff
                           0000DB   242 	C$adc.c$89$1_0$382 ==.
                                    243 ;	adc.c: 89: }
      00B33D 5B 05            [ 2]  244 	addw	sp, #5
                           0000DD   245 	C$adc.c$89$1_0$382 ==.
                           0000DD   246 	XG$adc_init$0$0 ==.
      00B33F 81               [ 4]  247 	ret
                           0000DE   248 	Fadc$adc_trigger$0$0 ==.
                           0000DE   249 	C$adc.c$94$1_0$390 ==.
                                    250 ;	adc.c: 94: static void adc_trigger(void)
                                    251 ;	-----------------------------------------
                                    252 ;	 function adc_trigger
                                    253 ;	-----------------------------------------
      00B340                        254 _adc_trigger:
                           0000DE   255 	C$adc.c$97$1_0$390 ==.
                                    256 ;	adc.c: 97: ADC1->CSR &= 0x07; // clear EOC flag first (selected also channel 7)
      00B340 C6 54 00         [ 1]  257 	ld	a, 0x5400
      00B343 A4 07            [ 1]  258 	and	a, #0x07
      00B345 C7 54 00         [ 1]  259 	ld	0x5400, a
                           0000E6   260 	C$adc.c$98$1_0$390 ==.
                                    261 ;	adc.c: 98: ADC1->CR1 |= ADC1_CR1_ADON; // Start ADC1 conversion
      00B348 72 10 54 01      [ 1]  262 	bset	21505, #0
                           0000EA   263 	C$adc.c$99$1_0$390 ==.
                                    264 ;	adc.c: 99: }
                           0000EA   265 	C$adc.c$99$1_0$390 ==.
                           0000EA   266 	XFadc$adc_trigger$0$0 ==.
      00B34C 81               [ 4]  267 	ret
                           0000EB   268 	G$ui16_adc_read_battery_current_10b$0$0 ==.
                           0000EB   269 	C$adc.c$104$1_0$392 ==.
                                    270 ;	adc.c: 104: uint16_t ui16_adc_read_battery_current_10b(void)
                                    271 ;	-----------------------------------------
                                    272 ;	 function ui16_adc_read_battery_current_10b
                                    273 ;	-----------------------------------------
      00B34D                        274 _ui16_adc_read_battery_current_10b:
      00B34D 52 02            [ 2]  275 	sub	sp, #2
                           0000ED   276 	C$adc.c$109$1_0$392 ==.
                                    277 ;	adc.c: 109: templ = *(uint8_t*)(0x53EB);
      00B34F C6 53 EB         [ 1]  278 	ld	a, 0x53eb
      00B352 90 97            [ 1]  279 	ld	yl, a
                           0000F2   280 	C$adc.c$110$1_0$392 ==.
                                    281 ;	adc.c: 110: temph = *(uint8_t*)(0x53EA);
      00B354 C6 53 EA         [ 1]  282 	ld	a, 0x53ea
      00B357 5F               [ 1]  283 	clrw	x
      00B358 97               [ 1]  284 	ld	xl, a
                           0000F7   285 	C$adc.c$112$1_0$392 ==.
                                    286 ;	adc.c: 112: temph = ((uint16_t) temph) << 2 | ((uint16_t) templ);
      00B359 58               [ 2]  287 	sllw	x
      00B35A 58               [ 2]  288 	sllw	x
      00B35B 61               [ 1]  289 	exg	a, yl
      00B35C 6B 02            [ 1]  290 	ld	(0x02, sp), a
      00B35E 61               [ 1]  291 	exg	a, yl
      00B35F 0F 01            [ 1]  292 	clr	(0x01, sp)
      00B361 9F               [ 1]  293 	ld	a, xl
      00B362 1A 02            [ 1]  294 	or	a, (0x02, sp)
      00B364 02               [ 1]  295 	rlwa	x
      00B365 1A 01            [ 1]  296 	or	a, (0x01, sp)
      00B367 95               [ 1]  297 	ld	xh, a
      00B368 1F 01            [ 2]  298 	ldw	(0x01, sp), x
                           000108   299 	C$adc.c$119$1_0$392 ==.
                                    300 ;	adc.c: 119: if(temph <= 5)
      00B36A 1E 01            [ 2]  301 	ldw	x, (0x01, sp)
      00B36C A3 00 05         [ 2]  302 	cpw	x, #0x0005
      00B36F 22 03            [ 1]  303 	jrugt	00102$
                           00010F   304 	C$adc.c$120$1_0$392 ==.
                                    305 ;	adc.c: 120: return 0;
      00B371 5F               [ 1]  306 	clrw	x
      00B372 20 18            [ 2]  307 	jra	00105$
      00B374                        308 00102$:
                           000112   309 	C$adc.c$121$1_0$392 ==.
                                    310 ;	adc.c: 121: if(temph > 15)
      00B374 1E 01            [ 2]  311 	ldw	x, (0x01, sp)
      00B376 A3 00 0F         [ 2]  312 	cpw	x, #0x000f
      00B379 23 04            [ 2]  313 	jrule	00104$
                           000119   314 	C$adc.c$122$1_0$392 ==.
                                    315 ;	adc.c: 122: return temph;
      00B37B 1E 01            [ 2]  316 	ldw	x, (0x01, sp)
      00B37D 20 0D            [ 2]  317 	jra	00105$
      00B37F                        318 00104$:
                           00011D   319 	C$adc.c$123$1_0$392 ==.
                                    320 ;	adc.c: 123: temph -= 5;
      00B37F 1E 01            [ 2]  321 	ldw	x, (0x01, sp)
      00B381 1D 00 05         [ 2]  322 	subw	x, #0x0005
      00B384 1F 01            [ 2]  323 	ldw	(0x01, sp), x
                           000124   324 	C$adc.c$124$1_0$392 ==.
                                    325 ;	adc.c: 124: return temph + (temph >> 1);
      00B386 1E 01            [ 2]  326 	ldw	x, (0x01, sp)
      00B388 54               [ 2]  327 	srlw	x
      00B389 72 FB 01         [ 2]  328 	addw	x, (0x01, sp)
      00B38C                        329 00105$:
                           00012A   330 	C$adc.c$125$1_0$392 ==.
                                    331 ;	adc.c: 125: }
      00B38C 5B 02            [ 2]  332 	addw	sp, #2
                           00012C   333 	C$adc.c$125$1_0$392 ==.
                           00012C   334 	XG$ui16_adc_read_battery_current_10b$0$0 ==.
      00B38E 81               [ 4]  335 	ret
                           00012D   336 	G$ui16_adc_read_torque_sensor_10b$0$0 ==.
                           00012D   337 	C$adc.c$130$1_0$394 ==.
                                    338 ;	adc.c: 130: uint16_t ui16_adc_read_torque_sensor_10b(void)
                                    339 ;	-----------------------------------------
                                    340 ;	 function ui16_adc_read_torque_sensor_10b
                                    341 ;	-----------------------------------------
      00B38F                        342 _ui16_adc_read_torque_sensor_10b:
      00B38F 52 02            [ 2]  343 	sub	sp, #2
                           00012F   344 	C$adc.c$135$1_0$394 ==.
                                    345 ;	adc.c: 135: templ = *(uint8_t*)(0x53E9);
      00B391 C6 53 E9         [ 1]  346 	ld	a, 0x53e9
      00B394 90 97            [ 1]  347 	ld	yl, a
                           000134   348 	C$adc.c$136$1_0$394 ==.
                                    349 ;	adc.c: 136: temph = *(uint8_t*)(0x53E8);
      00B396 C6 53 E8         [ 1]  350 	ld	a, 0x53e8
      00B399 5F               [ 1]  351 	clrw	x
      00B39A 97               [ 1]  352 	ld	xl, a
                           000139   353 	C$adc.c$138$1_0$394 ==.
                                    354 ;	adc.c: 138: return ((uint16_t) temph) << 2 | ((uint16_t) templ);
      00B39B 58               [ 2]  355 	sllw	x
      00B39C 58               [ 2]  356 	sllw	x
      00B39D 61               [ 1]  357 	exg	a, yl
      00B39E 6B 02            [ 1]  358 	ld	(0x02, sp), a
      00B3A0 61               [ 1]  359 	exg	a, yl
      00B3A1 0F 01            [ 1]  360 	clr	(0x01, sp)
      00B3A3 9F               [ 1]  361 	ld	a, xl
      00B3A4 1A 02            [ 1]  362 	or	a, (0x02, sp)
      00B3A6 02               [ 1]  363 	rlwa	x
      00B3A7 1A 01            [ 1]  364 	or	a, (0x01, sp)
      00B3A9 95               [ 1]  365 	ld	xh, a
                           000148   366 	C$adc.c$139$1_0$394 ==.
                                    367 ;	adc.c: 139: }
      00B3AA 5B 02            [ 2]  368 	addw	sp, #2
                           00014A   369 	C$adc.c$139$1_0$394 ==.
                           00014A   370 	XG$ui16_adc_read_torque_sensor_10b$0$0 ==.
      00B3AC 81               [ 4]  371 	ret
                           00014B   372 	G$ui16_adc_read_throttle_10b$0$0 ==.
                           00014B   373 	C$adc.c$144$1_0$396 ==.
                                    374 ;	adc.c: 144: uint16_t ui16_adc_read_throttle_10b(void)
                                    375 ;	-----------------------------------------
                                    376 ;	 function ui16_adc_read_throttle_10b
                                    377 ;	-----------------------------------------
      00B3AD                        378 _ui16_adc_read_throttle_10b:
      00B3AD 52 02            [ 2]  379 	sub	sp, #2
                           00014D   380 	C$adc.c$149$1_0$396 ==.
                                    381 ;	adc.c: 149: templ = *(uint8_t*)(0x53EF);
      00B3AF C6 53 EF         [ 1]  382 	ld	a, 0x53ef
      00B3B2 90 97            [ 1]  383 	ld	yl, a
                           000152   384 	C$adc.c$150$1_0$396 ==.
                                    385 ;	adc.c: 150: temph = *(uint8_t*)(0x53EE);
      00B3B4 C6 53 EE         [ 1]  386 	ld	a, 0x53ee
      00B3B7 5F               [ 1]  387 	clrw	x
      00B3B8 97               [ 1]  388 	ld	xl, a
                           000157   389 	C$adc.c$152$1_0$396 ==.
                                    390 ;	adc.c: 152: return ((uint16_t) temph) << 2 | ((uint16_t) templ);
      00B3B9 58               [ 2]  391 	sllw	x
      00B3BA 58               [ 2]  392 	sllw	x
      00B3BB 61               [ 1]  393 	exg	a, yl
      00B3BC 6B 02            [ 1]  394 	ld	(0x02, sp), a
      00B3BE 61               [ 1]  395 	exg	a, yl
      00B3BF 0F 01            [ 1]  396 	clr	(0x01, sp)
      00B3C1 9F               [ 1]  397 	ld	a, xl
      00B3C2 1A 02            [ 1]  398 	or	a, (0x02, sp)
      00B3C4 02               [ 1]  399 	rlwa	x
      00B3C5 1A 01            [ 1]  400 	or	a, (0x01, sp)
      00B3C7 95               [ 1]  401 	ld	xh, a
                           000166   402 	C$adc.c$153$1_0$396 ==.
                                    403 ;	adc.c: 153: }
      00B3C8 5B 02            [ 2]  404 	addw	sp, #2
                           000168   405 	C$adc.c$153$1_0$396 ==.
                           000168   406 	XG$ui16_adc_read_throttle_10b$0$0 ==.
      00B3CA 81               [ 4]  407 	ret
                           000169   408 	G$ui16_adc_read_battery_voltage_10b$0$0 ==.
                           000169   409 	C$adc.c$158$1_0$398 ==.
                                    410 ;	adc.c: 158: uint16_t ui16_adc_read_battery_voltage_10b(void)
                                    411 ;	-----------------------------------------
                                    412 ;	 function ui16_adc_read_battery_voltage_10b
                                    413 ;	-----------------------------------------
      00B3CB                        414 _ui16_adc_read_battery_voltage_10b:
      00B3CB 52 02            [ 2]  415 	sub	sp, #2
                           00016B   416 	C$adc.c$163$1_0$398 ==.
                                    417 ;	adc.c: 163: templ = *(uint8_t*)(0x53ED);
      00B3CD C6 53 ED         [ 1]  418 	ld	a, 0x53ed
      00B3D0 90 97            [ 1]  419 	ld	yl, a
                           000170   420 	C$adc.c$164$1_0$398 ==.
                                    421 ;	adc.c: 164: temph = *(uint8_t*)(0x53EC);
      00B3D2 C6 53 EC         [ 1]  422 	ld	a, 0x53ec
      00B3D5 5F               [ 1]  423 	clrw	x
      00B3D6 97               [ 1]  424 	ld	xl, a
                           000175   425 	C$adc.c$166$1_0$398 ==.
                                    426 ;	adc.c: 166: return ((uint16_t) temph) << 2 | ((uint16_t) templ);
      00B3D7 58               [ 2]  427 	sllw	x
      00B3D8 58               [ 2]  428 	sllw	x
      00B3D9 61               [ 1]  429 	exg	a, yl
      00B3DA 6B 02            [ 1]  430 	ld	(0x02, sp), a
      00B3DC 61               [ 1]  431 	exg	a, yl
      00B3DD 0F 01            [ 1]  432 	clr	(0x01, sp)
      00B3DF 9F               [ 1]  433 	ld	a, xl
      00B3E0 1A 02            [ 1]  434 	or	a, (0x02, sp)
      00B3E2 02               [ 1]  435 	rlwa	x
      00B3E3 1A 01            [ 1]  436 	or	a, (0x01, sp)
      00B3E5 95               [ 1]  437 	ld	xh, a
                           000184   438 	C$adc.c$167$1_0$398 ==.
                                    439 ;	adc.c: 167: }
      00B3E6 5B 02            [ 2]  440 	addw	sp, #2
                           000186   441 	C$adc.c$167$1_0$398 ==.
                           000186   442 	XG$ui16_adc_read_battery_voltage_10b$0$0 ==.
      00B3E8 81               [ 4]  443 	ret
                                    444 	.area CODE
                                    445 	.area CONST
                                    446 	.area INITIALIZER
                                    447 	.area CABS (ABS)
