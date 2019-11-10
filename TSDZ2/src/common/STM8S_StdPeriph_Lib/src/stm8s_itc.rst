                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_itc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ITC_GetCPUCC
                                     12 	.globl _ITC_DeInit
                                     13 	.globl _ITC_GetSoftIntStatus
                                     14 	.globl _ITC_GetSoftwarePriority
                                     15 	.globl _ITC_SetSoftwarePriority
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                           000000    53 	G$ITC_GetCPUCC$0$0 ==.
                           000000    54 	C$stm8s_itc.c$54$0_0$346 ==.
                                     55 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 54: uint8_t ITC_GetCPUCC(void)
                                     56 ;	-----------------------------------------
                                     57 ;	 function ITC_GetCPUCC
                                     58 ;	-----------------------------------------
      008366                         59 _ITC_GetCPUCC:
                           000000    60 	C$stm8s_itc.c$63$1_0$346 ==.
                                     61 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 63: __asm__("push cc");
      008366 8A               [ 1]   62 	push	cc
                           000001    63 	C$stm8s_itc.c$64$1_0$346 ==.
                                     64 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 64: __asm__("pop a"); /* Ignore compiler warning, the returned value is in A register */
      008367 84               [ 1]   65 	pop	a
                           000002    66 	C$stm8s_itc.c$69$1_0$346 ==.
                                     67 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 69: }
                           000002    68 	C$stm8s_itc.c$69$1_0$346 ==.
                           000002    69 	XG$ITC_GetCPUCC$0$0 ==.
      008368 81               [ 4]   70 	ret
                           000003    71 	G$ITC_DeInit$0$0 ==.
                           000003    72 	C$stm8s_itc.c$90$1_0$348 ==.
                                     73 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 90: void ITC_DeInit(void)
                                     74 ;	-----------------------------------------
                                     75 ;	 function ITC_DeInit
                                     76 ;	-----------------------------------------
      008369                         77 _ITC_DeInit:
                           000003    78 	C$stm8s_itc.c$92$1_0$348 ==.
                                     79 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 92: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
      008369 35 FF 7F 70      [ 1]   80 	mov	0x7f70+0, #0xff
                           000007    81 	C$stm8s_itc.c$93$1_0$348 ==.
                                     82 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 93: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
      00836D 35 FF 7F 71      [ 1]   83 	mov	0x7f71+0, #0xff
                           00000B    84 	C$stm8s_itc.c$94$1_0$348 ==.
                                     85 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 94: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
      008371 35 FF 7F 72      [ 1]   86 	mov	0x7f72+0, #0xff
                           00000F    87 	C$stm8s_itc.c$95$1_0$348 ==.
                                     88 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 95: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
      008375 35 FF 7F 73      [ 1]   89 	mov	0x7f73+0, #0xff
                           000013    90 	C$stm8s_itc.c$96$1_0$348 ==.
                                     91 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 96: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
      008379 35 FF 7F 74      [ 1]   92 	mov	0x7f74+0, #0xff
                           000017    93 	C$stm8s_itc.c$97$1_0$348 ==.
                                     94 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 97: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
      00837D 35 FF 7F 75      [ 1]   95 	mov	0x7f75+0, #0xff
                           00001B    96 	C$stm8s_itc.c$98$1_0$348 ==.
                                     97 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 98: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
      008381 35 FF 7F 76      [ 1]   98 	mov	0x7f76+0, #0xff
                           00001F    99 	C$stm8s_itc.c$99$1_0$348 ==.
                                    100 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 99: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
      008385 35 FF 7F 77      [ 1]  101 	mov	0x7f77+0, #0xff
                           000023   102 	C$stm8s_itc.c$100$1_0$348 ==.
                                    103 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 100: }
                           000023   104 	C$stm8s_itc.c$100$1_0$348 ==.
                           000023   105 	XG$ITC_DeInit$0$0 ==.
      008389 81               [ 4]  106 	ret
                           000024   107 	G$ITC_GetSoftIntStatus$0$0 ==.
                           000024   108 	C$stm8s_itc.c$107$1_0$350 ==.
                                    109 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 107: uint8_t ITC_GetSoftIntStatus(void)
                                    110 ;	-----------------------------------------
                                    111 ;	 function ITC_GetSoftIntStatus
                                    112 ;	-----------------------------------------
      00838A                        113 _ITC_GetSoftIntStatus:
                           000024   114 	C$stm8s_itc.c$109$1_0$350 ==.
                                    115 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 109: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
      00838A CD 83 66         [ 4]  116 	call	_ITC_GetCPUCC
      00838D A4 28            [ 1]  117 	and	a, #0x28
                           000029   118 	C$stm8s_itc.c$110$1_0$350 ==.
                                    119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 110: }
                           000029   120 	C$stm8s_itc.c$110$1_0$350 ==.
                           000029   121 	XG$ITC_GetSoftIntStatus$0$0 ==.
      00838F 81               [ 4]  122 	ret
                           00002A   123 	G$ITC_GetSoftwarePriority$0$0 ==.
                           00002A   124 	C$stm8s_itc.c$117$1_0$352 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 117: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
                                    126 ;	-----------------------------------------
                                    127 ;	 function ITC_GetSoftwarePriority
                                    128 ;	-----------------------------------------
      008390                        129 _ITC_GetSoftwarePriority:
      008390 52 03            [ 2]  130 	sub	sp, #3
                           00002C   131 	C$stm8s_itc.c$119$2_0$352 ==.
                                    132 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 119: uint8_t Value = 0;
      008392 0F 01            [ 1]  133 	clr	(0x01, sp)
                           00002E   134 	C$stm8s_itc.c$126$1_0$352 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 126: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
      008394 7B 06            [ 1]  136 	ld	a, (0x06, sp)
      008396 90 5F            [ 1]  137 	clrw	y
      008398 A4 03            [ 1]  138 	and	a, #0x03
      00839A 48               [ 1]  139 	sll	a
      00839B 6B 02            [ 1]  140 	ld	(0x02, sp), a
      00839D A6 03            [ 1]  141 	ld	a, #0x03
      00839F 6B 03            [ 1]  142 	ld	(0x03, sp), a
      0083A1 7B 02            [ 1]  143 	ld	a, (0x02, sp)
      0083A3 27 05            [ 1]  144 	jreq	00132$
      0083A5                        145 00131$:
      0083A5 08 03            [ 1]  146 	sll	(0x03, sp)
      0083A7 4A               [ 1]  147 	dec	a
      0083A8 26 FB            [ 1]  148 	jrne	00131$
      0083AA                        149 00132$:
                           000044   150 	C$stm8s_itc.c$128$1_0$352 ==.
                                    151 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 128: switch (IrqNum)
      0083AA 7B 06            [ 1]  152 	ld	a, (0x06, sp)
      0083AC A1 18            [ 1]  153 	cp	a, #0x18
      0083AE 23 03            [ 2]  154 	jrule	00133$
      0083B0 CC 84 2C         [ 2]  155 	jp	00123$
      0083B3                        156 00133$:
      0083B3 5F               [ 1]  157 	clrw	x
      0083B4 7B 06            [ 1]  158 	ld	a, (0x06, sp)
      0083B6 97               [ 1]  159 	ld	xl, a
      0083B7 58               [ 2]  160 	sllw	x
      0083B8 DE 83 BC         [ 2]  161 	ldw	x, (#00134$, x)
      0083BB FC               [ 2]  162 	jp	(x)
      0083BC                        163 00134$:
      0083BC 83 EE                  164 	.dw	#00104$
      0083BE 83 EE                  165 	.dw	#00104$
      0083C0 83 EE                  166 	.dw	#00104$
      0083C2 83 EE                  167 	.dw	#00104$
      0083C4 83 F8                  168 	.dw	#00108$
      0083C6 83 F8                  169 	.dw	#00108$
      0083C8 83 F8                  170 	.dw	#00108$
      0083CA 83 F8                  171 	.dw	#00108$
      0083CC 84 2C                  172 	.dw	#00123$
      0083CE 84 2C                  173 	.dw	#00123$
      0083D0 84 01                  174 	.dw	#00110$
      0083D2 84 01                  175 	.dw	#00110$
      0083D4 84 0A                  176 	.dw	#00114$
      0083D6 84 0A                  177 	.dw	#00114$
      0083D8 84 0A                  178 	.dw	#00114$
      0083DA 84 0A                  179 	.dw	#00114$
      0083DC 84 13                  180 	.dw	#00116$
      0083DE 84 2C                  181 	.dw	#00123$
      0083E0 84 2C                  182 	.dw	#00123$
      0083E2 84 13                  183 	.dw	#00116$
      0083E4 84 1C                  184 	.dw	#00120$
      0083E6 84 1C                  185 	.dw	#00120$
      0083E8 84 1C                  186 	.dw	#00120$
      0083EA 84 1C                  187 	.dw	#00120$
      0083EC 84 25                  188 	.dw	#00121$
                           000088   189 	C$stm8s_itc.c$133$2_0$353 ==.
                                    190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 133: case ITC_IRQ_PORTA:
      0083EE                        191 00104$:
                           000088   192 	C$stm8s_itc.c$134$2_0$353 ==.
                                    193 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
      0083EE C6 7F 70         [ 1]  194 	ld	a, 0x7f70
      0083F1 14 03            [ 1]  195 	and	a, (0x03, sp)
      0083F3 6B 01            [ 1]  196 	ld	(0x01, sp), a
                           00008F   197 	C$stm8s_itc.c$135$2_0$353 ==.
                                    198 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 135: break;
      0083F5 CC 84 2C         [ 2]  199 	jp	00123$
                           000092   200 	C$stm8s_itc.c$140$2_0$353 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 140: case ITC_IRQ_PORTE:
      0083F8                        202 00108$:
                           000092   203 	C$stm8s_itc.c$141$2_0$353 ==.
                                    204 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 141: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
      0083F8 C6 7F 71         [ 1]  205 	ld	a, 0x7f71
      0083FB 14 03            [ 1]  206 	and	a, (0x03, sp)
      0083FD 6B 01            [ 1]  207 	ld	(0x01, sp), a
                           000099   208 	C$stm8s_itc.c$142$2_0$353 ==.
                                    209 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 142: break;
      0083FF 20 2B            [ 2]  210 	jra	00123$
                           00009B   211 	C$stm8s_itc.c$152$2_0$353 ==.
                                    212 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 152: case ITC_IRQ_TIM1_OVF:
      008401                        213 00110$:
                           00009B   214 	C$stm8s_itc.c$153$2_0$353 ==.
                                    215 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 153: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
      008401 C6 7F 72         [ 1]  216 	ld	a, 0x7f72
      008404 14 03            [ 1]  217 	and	a, (0x03, sp)
      008406 6B 01            [ 1]  218 	ld	(0x01, sp), a
                           0000A2   219 	C$stm8s_itc.c$154$2_0$353 ==.
                                    220 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 154: break;
      008408 20 22            [ 2]  221 	jra	00123$
                           0000A4   222 	C$stm8s_itc.c$164$2_0$353 ==.
                                    223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 164: case ITC_IRQ_TIM3_OVF:
      00840A                        224 00114$:
                           0000A4   225 	C$stm8s_itc.c$165$2_0$353 ==.
                                    226 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 165: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
      00840A C6 7F 73         [ 1]  227 	ld	a, 0x7f73
      00840D 14 03            [ 1]  228 	and	a, (0x03, sp)
      00840F 6B 01            [ 1]  229 	ld	(0x01, sp), a
                           0000AB   230 	C$stm8s_itc.c$166$2_0$353 ==.
                                    231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 166: break;
      008411 20 19            [ 2]  232 	jra	00123$
                           0000AD   233 	C$stm8s_itc.c$178$2_0$353 ==.
                                    234 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 178: case ITC_IRQ_I2C:
      008413                        235 00116$:
                           0000AD   236 	C$stm8s_itc.c$179$2_0$353 ==.
                                    237 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 179: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
      008413 C6 7F 74         [ 1]  238 	ld	a, 0x7f74
      008416 14 03            [ 1]  239 	and	a, (0x03, sp)
      008418 6B 01            [ 1]  240 	ld	(0x01, sp), a
                           0000B4   241 	C$stm8s_itc.c$180$2_0$353 ==.
                                    242 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 180: break;
      00841A 20 10            [ 2]  243 	jra	00123$
                           0000B6   244 	C$stm8s_itc.c$199$2_0$353 ==.
                                    245 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 199: case ITC_IRQ_TIM4_OVF:
      00841C                        246 00120$:
                           0000B6   247 	C$stm8s_itc.c$201$2_0$353 ==.
                                    248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 201: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
      00841C C6 7F 75         [ 1]  249 	ld	a, 0x7f75
      00841F 14 03            [ 1]  250 	and	a, (0x03, sp)
      008421 6B 01            [ 1]  251 	ld	(0x01, sp), a
                           0000BD   252 	C$stm8s_itc.c$202$2_0$353 ==.
                                    253 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 202: break;
      008423 20 07            [ 2]  254 	jra	00123$
                           0000BF   255 	C$stm8s_itc.c$204$2_0$353 ==.
                                    256 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 204: case ITC_IRQ_EEPROM_EEC:
      008425                        257 00121$:
                           0000BF   258 	C$stm8s_itc.c$205$2_0$353 ==.
                                    259 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 205: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
      008425 C6 7F 76         [ 1]  260 	ld	a, 0x7f76
      008428 14 03            [ 1]  261 	and	a, (0x03, sp)
      00842A 6B 01            [ 1]  262 	ld	(0x01, sp), a
                           0000C6   263 	C$stm8s_itc.c$210$1_0$352 ==.
                                    264 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 210: }
      00842C                        265 00123$:
                           0000C6   266 	C$stm8s_itc.c$212$1_0$352 ==.
                                    267 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 212: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
      00842C 7B 01            [ 1]  268 	ld	a, (0x01, sp)
      00842E 88               [ 1]  269 	push	a
      00842F 7B 03            [ 1]  270 	ld	a, (0x03, sp)
      008431 27 05            [ 1]  271 	jreq	00136$
      008433                        272 00135$:
      008433 04 01            [ 1]  273 	srl	(1, sp)
      008435 4A               [ 1]  274 	dec	a
      008436 26 FB            [ 1]  275 	jrne	00135$
      008438                        276 00136$:
      008438 84               [ 1]  277 	pop	a
                           0000D3   278 	C$stm8s_itc.c$214$1_0$352 ==.
                                    279 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 214: return((ITC_PriorityLevel_TypeDef)Value);
                           0000D3   280 	C$stm8s_itc.c$215$1_0$352 ==.
                                    281 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 215: }
      008439 5B 03            [ 2]  282 	addw	sp, #3
                           0000D5   283 	C$stm8s_itc.c$215$1_0$352 ==.
                           0000D5   284 	XG$ITC_GetSoftwarePriority$0$0 ==.
      00843B 81               [ 4]  285 	ret
                           0000D6   286 	G$ITC_SetSoftwarePriority$0$0 ==.
                           0000D6   287 	C$stm8s_itc.c$230$1_0$355 ==.
                                    288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 230: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
                                    289 ;	-----------------------------------------
                                    290 ;	 function ITC_SetSoftwarePriority
                                    291 ;	-----------------------------------------
      00843C                        292 _ITC_SetSoftwarePriority:
      00843C 52 02            [ 2]  293 	sub	sp, #2
                           0000D8   294 	C$stm8s_itc.c$244$1_0$355 ==.
                                    295 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 244: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
      00843E 7B 05            [ 1]  296 	ld	a, (0x05, sp)
      008440 90 5F            [ 1]  297 	clrw	y
      008442 A4 03            [ 1]  298 	and	a, #0x03
      008444 97               [ 1]  299 	ld	xl, a
      008445 58               [ 2]  300 	sllw	x
      008446 A6 03            [ 1]  301 	ld	a, #0x03
      008448 88               [ 1]  302 	push	a
      008449 9F               [ 1]  303 	ld	a, xl
      00844A 4D               [ 1]  304 	tnz	a
      00844B 27 05            [ 1]  305 	jreq	00131$
      00844D                        306 00130$:
      00844D 08 01            [ 1]  307 	sll	(1, sp)
      00844F 4A               [ 1]  308 	dec	a
      008450 26 FB            [ 1]  309 	jrne	00130$
      008452                        310 00131$:
      008452 84               [ 1]  311 	pop	a
      008453 43               [ 1]  312 	cpl	a
      008454 6B 01            [ 1]  313 	ld	(0x01, sp), a
                           0000F0   314 	C$stm8s_itc.c$247$1_0$355 ==.
                                    315 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 247: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
      008456 7B 06            [ 1]  316 	ld	a, (0x06, sp)
      008458 88               [ 1]  317 	push	a
      008459 9F               [ 1]  318 	ld	a, xl
      00845A 4D               [ 1]  319 	tnz	a
      00845B 27 05            [ 1]  320 	jreq	00133$
      00845D                        321 00132$:
      00845D 08 01            [ 1]  322 	sll	(1, sp)
      00845F 4A               [ 1]  323 	dec	a
      008460 26 FB            [ 1]  324 	jrne	00132$
      008462                        325 00133$:
      008462 84               [ 1]  326 	pop	a
      008463 6B 02            [ 1]  327 	ld	(0x02, sp), a
                           0000FF   328 	C$stm8s_itc.c$249$1_0$355 ==.
                                    329 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 249: switch (IrqNum)
      008465 7B 05            [ 1]  330 	ld	a, (0x05, sp)
      008467 A1 18            [ 1]  331 	cp	a, #0x18
      008469 23 03            [ 2]  332 	jrule	00134$
      00846B CC 85 28         [ 2]  333 	jp	00124$
      00846E                        334 00134$:
      00846E 5F               [ 1]  335 	clrw	x
      00846F 7B 05            [ 1]  336 	ld	a, (0x05, sp)
      008471 97               [ 1]  337 	ld	xl, a
      008472 58               [ 2]  338 	sllw	x
      008473 DE 84 77         [ 2]  339 	ldw	x, (#00135$, x)
      008476 FC               [ 2]  340 	jp	(x)
      008477                        341 00135$:
      008477 84 A9                  342 	.dw	#00104$
      008479 84 A9                  343 	.dw	#00104$
      00847B 84 A9                  344 	.dw	#00104$
      00847D 84 A9                  345 	.dw	#00104$
      00847F 84 BC                  346 	.dw	#00108$
      008481 84 BC                  347 	.dw	#00108$
      008483 84 BC                  348 	.dw	#00108$
      008485 84 BC                  349 	.dw	#00108$
      008487 85 28                  350 	.dw	#00124$
      008489 85 28                  351 	.dw	#00124$
      00848B 84 CF                  352 	.dw	#00110$
      00848D 84 CF                  353 	.dw	#00110$
      00848F 84 E2                  354 	.dw	#00114$
      008491 84 E2                  355 	.dw	#00114$
      008493 84 E2                  356 	.dw	#00114$
      008495 84 E2                  357 	.dw	#00114$
      008497 84 F4                  358 	.dw	#00116$
      008499 85 28                  359 	.dw	#00124$
      00849B 85 28                  360 	.dw	#00124$
      00849D 84 F4                  361 	.dw	#00116$
      00849F 85 06                  362 	.dw	#00120$
      0084A1 85 06                  363 	.dw	#00120$
      0084A3 85 06                  364 	.dw	#00120$
      0084A5 85 06                  365 	.dw	#00120$
      0084A7 85 18                  366 	.dw	#00121$
                           000143   367 	C$stm8s_itc.c$254$2_0$356 ==.
                                    368 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 254: case ITC_IRQ_PORTA:
      0084A9                        369 00104$:
                           000143   370 	C$stm8s_itc.c$255$2_0$356 ==.
                                    371 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 255: ITC->ISPR1 &= Mask;
      0084A9 C6 7F 70         [ 1]  372 	ld	a, 0x7f70
      0084AC 14 01            [ 1]  373 	and	a, (0x01, sp)
      0084AE C7 7F 70         [ 1]  374 	ld	0x7f70, a
                           00014B   375 	C$stm8s_itc.c$256$2_0$356 ==.
                                    376 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 256: ITC->ISPR1 |= NewPriority;
      0084B1 C6 7F 70         [ 1]  377 	ld	a, 0x7f70
      0084B4 1A 02            [ 1]  378 	or	a, (0x02, sp)
      0084B6 C7 7F 70         [ 1]  379 	ld	0x7f70, a
                           000153   380 	C$stm8s_itc.c$257$2_0$356 ==.
                                    381 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 257: break;
      0084B9 CC 85 28         [ 2]  382 	jp	00124$
                           000156   383 	C$stm8s_itc.c$262$2_0$356 ==.
                                    384 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 262: case ITC_IRQ_PORTE:
      0084BC                        385 00108$:
                           000156   386 	C$stm8s_itc.c$263$2_0$356 ==.
                                    387 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 263: ITC->ISPR2 &= Mask;
      0084BC C6 7F 71         [ 1]  388 	ld	a, 0x7f71
      0084BF 14 01            [ 1]  389 	and	a, (0x01, sp)
      0084C1 C7 7F 71         [ 1]  390 	ld	0x7f71, a
                           00015E   391 	C$stm8s_itc.c$264$2_0$356 ==.
                                    392 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 264: ITC->ISPR2 |= NewPriority;
      0084C4 C6 7F 71         [ 1]  393 	ld	a, 0x7f71
      0084C7 1A 02            [ 1]  394 	or	a, (0x02, sp)
      0084C9 C7 7F 71         [ 1]  395 	ld	0x7f71, a
                           000166   396 	C$stm8s_itc.c$265$2_0$356 ==.
                                    397 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 265: break;
      0084CC CC 85 28         [ 2]  398 	jp	00124$
                           000169   399 	C$stm8s_itc.c$275$2_0$356 ==.
                                    400 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 275: case ITC_IRQ_TIM1_OVF:
      0084CF                        401 00110$:
                           000169   402 	C$stm8s_itc.c$276$2_0$356 ==.
                                    403 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 276: ITC->ISPR3 &= Mask;
      0084CF C6 7F 72         [ 1]  404 	ld	a, 0x7f72
      0084D2 14 01            [ 1]  405 	and	a, (0x01, sp)
      0084D4 C7 7F 72         [ 1]  406 	ld	0x7f72, a
                           000171   407 	C$stm8s_itc.c$277$2_0$356 ==.
                                    408 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 277: ITC->ISPR3 |= NewPriority;
      0084D7 C6 7F 72         [ 1]  409 	ld	a, 0x7f72
      0084DA 1A 02            [ 1]  410 	or	a, (0x02, sp)
      0084DC C7 7F 72         [ 1]  411 	ld	0x7f72, a
                           000179   412 	C$stm8s_itc.c$278$2_0$356 ==.
                                    413 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 278: break;
      0084DF CC 85 28         [ 2]  414 	jp	00124$
                           00017C   415 	C$stm8s_itc.c$288$2_0$356 ==.
                                    416 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 288: case ITC_IRQ_TIM3_OVF:
      0084E2                        417 00114$:
                           00017C   418 	C$stm8s_itc.c$289$2_0$356 ==.
                                    419 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 289: ITC->ISPR4 &= Mask;
      0084E2 C6 7F 73         [ 1]  420 	ld	a, 0x7f73
      0084E5 14 01            [ 1]  421 	and	a, (0x01, sp)
      0084E7 C7 7F 73         [ 1]  422 	ld	0x7f73, a
                           000184   423 	C$stm8s_itc.c$290$2_0$356 ==.
                                    424 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 290: ITC->ISPR4 |= NewPriority;
      0084EA C6 7F 73         [ 1]  425 	ld	a, 0x7f73
      0084ED 1A 02            [ 1]  426 	or	a, (0x02, sp)
      0084EF C7 7F 73         [ 1]  427 	ld	0x7f73, a
                           00018C   428 	C$stm8s_itc.c$291$2_0$356 ==.
                                    429 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 291: break;
      0084F2 20 34            [ 2]  430 	jra	00124$
                           00018E   431 	C$stm8s_itc.c$303$2_0$356 ==.
                                    432 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 303: case ITC_IRQ_I2C:
      0084F4                        433 00116$:
                           00018E   434 	C$stm8s_itc.c$304$2_0$356 ==.
                                    435 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 304: ITC->ISPR5 &= Mask;
      0084F4 C6 7F 74         [ 1]  436 	ld	a, 0x7f74
      0084F7 14 01            [ 1]  437 	and	a, (0x01, sp)
      0084F9 C7 7F 74         [ 1]  438 	ld	0x7f74, a
                           000196   439 	C$stm8s_itc.c$305$2_0$356 ==.
                                    440 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 305: ITC->ISPR5 |= NewPriority;
      0084FC C6 7F 74         [ 1]  441 	ld	a, 0x7f74
      0084FF 1A 02            [ 1]  442 	or	a, (0x02, sp)
      008501 C7 7F 74         [ 1]  443 	ld	0x7f74, a
                           00019E   444 	C$stm8s_itc.c$306$2_0$356 ==.
                                    445 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 306: break;
      008504 20 22            [ 2]  446 	jra	00124$
                           0001A0   447 	C$stm8s_itc.c$328$2_0$356 ==.
                                    448 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 328: case ITC_IRQ_TIM4_OVF:
      008506                        449 00120$:
                           0001A0   450 	C$stm8s_itc.c$330$2_0$356 ==.
                                    451 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 330: ITC->ISPR6 &= Mask;
      008506 C6 7F 75         [ 1]  452 	ld	a, 0x7f75
      008509 14 01            [ 1]  453 	and	a, (0x01, sp)
      00850B C7 7F 75         [ 1]  454 	ld	0x7f75, a
                           0001A8   455 	C$stm8s_itc.c$331$2_0$356 ==.
                                    456 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 331: ITC->ISPR6 |= NewPriority;
      00850E C6 7F 75         [ 1]  457 	ld	a, 0x7f75
      008511 1A 02            [ 1]  458 	or	a, (0x02, sp)
      008513 C7 7F 75         [ 1]  459 	ld	0x7f75, a
                           0001B0   460 	C$stm8s_itc.c$332$2_0$356 ==.
                                    461 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 332: break;
      008516 20 10            [ 2]  462 	jra	00124$
                           0001B2   463 	C$stm8s_itc.c$334$2_0$356 ==.
                                    464 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 334: case ITC_IRQ_EEPROM_EEC:
      008518                        465 00121$:
                           0001B2   466 	C$stm8s_itc.c$335$2_0$356 ==.
                                    467 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 335: ITC->ISPR7 &= Mask;
      008518 C6 7F 76         [ 1]  468 	ld	a, 0x7f76
      00851B 14 01            [ 1]  469 	and	a, (0x01, sp)
      00851D C7 7F 76         [ 1]  470 	ld	0x7f76, a
                           0001BA   471 	C$stm8s_itc.c$336$2_0$356 ==.
                                    472 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 336: ITC->ISPR7 |= NewPriority;
      008520 C6 7F 76         [ 1]  473 	ld	a, 0x7f76
      008523 1A 02            [ 1]  474 	or	a, (0x02, sp)
      008525 C7 7F 76         [ 1]  475 	ld	0x7f76, a
                           0001C2   476 	C$stm8s_itc.c$341$1_0$355 ==.
                                    477 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 341: }
      008528                        478 00124$:
                           0001C2   479 	C$stm8s_itc.c$342$1_0$355 ==.
                                    480 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_itc.c: 342: }
      008528 5B 02            [ 2]  481 	addw	sp, #2
                           0001C4   482 	C$stm8s_itc.c$342$1_0$355 ==.
                           0001C4   483 	XG$ITC_SetSoftwarePriority$0$0 ==.
      00852A 81               [ 4]  484 	ret
                                    485 	.area CODE
                                    486 	.area CONST
                                    487 	.area INITIALIZER
                                    488 	.area CABS (ABS)
