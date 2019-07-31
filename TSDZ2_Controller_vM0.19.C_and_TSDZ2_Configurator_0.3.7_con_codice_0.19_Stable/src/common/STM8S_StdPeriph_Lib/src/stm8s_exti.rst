                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_exti
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EXTI_DeInit
                                     12 	.globl _EXTI_SetExtIntSensitivity
                                     13 	.globl _EXTI_SetTLISensitivity
                                     14 	.globl _EXTI_GetExtIntSensitivity
                                     15 	.globl _EXTI_GetTLISensitivity
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
                           000000    53 	G$EXTI_DeInit$0$0 ==.
                           000000    54 	C$stm8s_exti.c$53$0_0$346 ==.
                                     55 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 53: void EXTI_DeInit(void)
                                     56 ;	-----------------------------------------
                                     57 ;	 function EXTI_DeInit
                                     58 ;	-----------------------------------------
      009FB3                         59 _EXTI_DeInit:
                           000000    60 	C$stm8s_exti.c$55$1_0$346 ==.
                                     61 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
      009FB3 35 00 50 A0      [ 1]   62 	mov	0x50a0+0, #0x00
                           000004    63 	C$stm8s_exti.c$56$1_0$346 ==.
                                     64 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
      009FB7 35 00 50 A1      [ 1]   65 	mov	0x50a1+0, #0x00
                           000008    66 	C$stm8s_exti.c$57$1_0$346 ==.
                                     67 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 57: }
                           000008    68 	C$stm8s_exti.c$57$1_0$346 ==.
                           000008    69 	XG$EXTI_DeInit$0$0 ==.
      009FBB 81               [ 4]   70 	ret
                           000009    71 	G$EXTI_SetExtIntSensitivity$0$0 ==.
                           000009    72 	C$stm8s_exti.c$70$1_0$348 ==.
                                     73 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
                                     74 ;	-----------------------------------------
                                     75 ;	 function EXTI_SetExtIntSensitivity
                                     76 ;	-----------------------------------------
      009FBC                         77 _EXTI_SetExtIntSensitivity:
      009FBC 52 03            [ 2]   78 	sub	sp, #3
                           00000B    79 	C$stm8s_exti.c$77$1_0$348 ==.
                                     80 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 77: switch (Port)
      009FBE 7B 06            [ 1]   81 	ld	a, (0x06, sp)
      009FC0 A1 04            [ 1]   82 	cp	a, #0x04
      009FC2 23 03            [ 2]   83 	jrule	00114$
      009FC4 CC A0 4A         [ 2]   84 	jp	00108$
      009FC7                         85 00114$:
      009FC7 5F               [ 1]   86 	clrw	x
      009FC8 7B 06            [ 1]   87 	ld	a, (0x06, sp)
      009FCA 97               [ 1]   88 	ld	xl, a
      009FCB 58               [ 2]   89 	sllw	x
      009FCC DE 9F D0         [ 2]   90 	ldw	x, (#00115$, x)
      009FCF FC               [ 2]   91 	jp	(x)
      009FD0                         92 00115$:
      009FD0 9F DA                   93 	.dw	#00101$
      009FD2 9F ED                   94 	.dw	#00102$
      009FD4 A0 06                   95 	.dw	#00103$
      009FD6 A0 1F                   96 	.dw	#00104$
      009FD8 A0 3A                   97 	.dw	#00105$
                           000027    98 	C$stm8s_exti.c$79$2_0$349 ==.
                                     99 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
      009FDA                        100 00101$:
                           000027   101 	C$stm8s_exti.c$80$2_0$349 ==.
                                    102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
      009FDA C6 50 A0         [ 1]  103 	ld	a, 0x50a0
      009FDD A4 FC            [ 1]  104 	and	a, #0xfc
      009FDF C7 50 A0         [ 1]  105 	ld	0x50a0, a
                           00002F   106 	C$stm8s_exti.c$81$2_0$349 ==.
                                    107 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
      009FE2 C6 50 A0         [ 1]  108 	ld	a, 0x50a0
      009FE5 1A 07            [ 1]  109 	or	a, (0x07, sp)
      009FE7 C7 50 A0         [ 1]  110 	ld	0x50a0, a
                           000037   111 	C$stm8s_exti.c$82$2_0$349 ==.
                                    112 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 82: break;
      009FEA CC A0 4A         [ 2]  113 	jp	00108$
                           00003A   114 	C$stm8s_exti.c$83$2_0$349 ==.
                                    115 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
      009FED                        116 00102$:
                           00003A   117 	C$stm8s_exti.c$84$2_0$349 ==.
                                    118 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
      009FED C6 50 A0         [ 1]  119 	ld	a, 0x50a0
      009FF0 A4 F3            [ 1]  120 	and	a, #0xf3
      009FF2 C7 50 A0         [ 1]  121 	ld	0x50a0, a
                           000042   122 	C$stm8s_exti.c$85$2_0$349 ==.
                                    123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      009FF5 C6 50 A0         [ 1]  124 	ld	a, 0x50a0
      009FF8 6B 02            [ 1]  125 	ld	(0x02, sp), a
      009FFA 7B 07            [ 1]  126 	ld	a, (0x07, sp)
      009FFC 48               [ 1]  127 	sll	a
      009FFD 48               [ 1]  128 	sll	a
      009FFE 1A 02            [ 1]  129 	or	a, (0x02, sp)
      00A000 C7 50 A0         [ 1]  130 	ld	0x50a0, a
                           000050   131 	C$stm8s_exti.c$86$2_0$349 ==.
                                    132 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 86: break;
      00A003 CC A0 4A         [ 2]  133 	jp	00108$
                           000053   134 	C$stm8s_exti.c$87$2_0$349 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
      00A006                        136 00103$:
                           000053   137 	C$stm8s_exti.c$88$2_0$349 ==.
                                    138 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
      00A006 C6 50 A0         [ 1]  139 	ld	a, 0x50a0
      00A009 A4 CF            [ 1]  140 	and	a, #0xcf
      00A00B C7 50 A0         [ 1]  141 	ld	0x50a0, a
                           00005B   142 	C$stm8s_exti.c$89$2_0$349 ==.
                                    143 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
      00A00E C6 50 A0         [ 1]  144 	ld	a, 0x50a0
      00A011 6B 01            [ 1]  145 	ld	(0x01, sp), a
      00A013 7B 07            [ 1]  146 	ld	a, (0x07, sp)
      00A015 4E               [ 1]  147 	swap	a
      00A016 A4 F0            [ 1]  148 	and	a, #0xf0
      00A018 1A 01            [ 1]  149 	or	a, (0x01, sp)
      00A01A C7 50 A0         [ 1]  150 	ld	0x50a0, a
                           00006A   151 	C$stm8s_exti.c$90$2_0$349 ==.
                                    152 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 90: break;
      00A01D 20 2B            [ 2]  153 	jra	00108$
                           00006C   154 	C$stm8s_exti.c$91$2_0$349 ==.
                                    155 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
      00A01F                        156 00104$:
                           00006C   157 	C$stm8s_exti.c$92$2_0$349 ==.
                                    158 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
      00A01F C6 50 A0         [ 1]  159 	ld	a, 0x50a0
      00A022 A4 3F            [ 1]  160 	and	a, #0x3f
      00A024 C7 50 A0         [ 1]  161 	ld	0x50a0, a
                           000074   162 	C$stm8s_exti.c$93$2_0$349 ==.
                                    163 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
      00A027 C6 50 A0         [ 1]  164 	ld	a, 0x50a0
      00A02A 6B 03            [ 1]  165 	ld	(0x03, sp), a
      00A02C 7B 07            [ 1]  166 	ld	a, (0x07, sp)
      00A02E 4E               [ 1]  167 	swap	a
      00A02F A4 F0            [ 1]  168 	and	a, #0xf0
      00A031 48               [ 1]  169 	sll	a
      00A032 48               [ 1]  170 	sll	a
      00A033 1A 03            [ 1]  171 	or	a, (0x03, sp)
      00A035 C7 50 A0         [ 1]  172 	ld	0x50a0, a
                           000085   173 	C$stm8s_exti.c$94$2_0$349 ==.
                                    174 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 94: break;
      00A038 20 10            [ 2]  175 	jra	00108$
                           000087   176 	C$stm8s_exti.c$95$2_0$349 ==.
                                    177 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
      00A03A                        178 00105$:
                           000087   179 	C$stm8s_exti.c$96$2_0$349 ==.
                                    180 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
      00A03A C6 50 A1         [ 1]  181 	ld	a, 0x50a1
      00A03D A4 FC            [ 1]  182 	and	a, #0xfc
      00A03F C7 50 A1         [ 1]  183 	ld	0x50a1, a
                           00008F   184 	C$stm8s_exti.c$97$2_0$349 ==.
                                    185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00A042 C6 50 A1         [ 1]  186 	ld	a, 0x50a1
      00A045 1A 07            [ 1]  187 	or	a, (0x07, sp)
      00A047 C7 50 A1         [ 1]  188 	ld	0x50a1, a
                           000097   189 	C$stm8s_exti.c$101$1_0$348 ==.
                                    190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 101: }
      00A04A                        191 00108$:
                           000097   192 	C$stm8s_exti.c$102$1_0$348 ==.
                                    193 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 102: }
      00A04A 5B 03            [ 2]  194 	addw	sp, #3
                           000099   195 	C$stm8s_exti.c$102$1_0$348 ==.
                           000099   196 	XG$EXTI_SetExtIntSensitivity$0$0 ==.
      00A04C 81               [ 4]  197 	ret
                           00009A   198 	G$EXTI_SetTLISensitivity$0$0 ==.
                           00009A   199 	C$stm8s_exti.c$111$1_0$351 ==.
                                    200 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
                                    201 ;	-----------------------------------------
                                    202 ;	 function EXTI_SetTLISensitivity
                                    203 ;	-----------------------------------------
      00A04D                        204 _EXTI_SetTLISensitivity:
                           00009A   205 	C$stm8s_exti.c$117$1_0$351 ==.
                                    206 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
      00A04D C6 50 A1         [ 1]  207 	ld	a, 0x50a1
      00A050 A4 FB            [ 1]  208 	and	a, #0xfb
      00A052 C7 50 A1         [ 1]  209 	ld	0x50a1, a
                           0000A2   210 	C$stm8s_exti.c$118$1_0$351 ==.
                                    211 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      00A055 C6 50 A1         [ 1]  212 	ld	a, 0x50a1
      00A058 1A 03            [ 1]  213 	or	a, (0x03, sp)
      00A05A C7 50 A1         [ 1]  214 	ld	0x50a1, a
                           0000AA   215 	C$stm8s_exti.c$119$1_0$351 ==.
                                    216 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 119: }
                           0000AA   217 	C$stm8s_exti.c$119$1_0$351 ==.
                           0000AA   218 	XG$EXTI_SetTLISensitivity$0$0 ==.
      00A05D 81               [ 4]  219 	ret
                           0000AB   220 	G$EXTI_GetExtIntSensitivity$0$0 ==.
                           0000AB   221 	C$stm8s_exti.c$126$1_0$353 ==.
                                    222 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
                                    223 ;	-----------------------------------------
                                    224 ;	 function EXTI_GetExtIntSensitivity
                                    225 ;	-----------------------------------------
      00A05E                        226 _EXTI_GetExtIntSensitivity:
                           0000AB   227 	C$stm8s_exti.c$128$2_0$353 ==.
                                    228 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 128: uint8_t value = 0;
      00A05E 4F               [ 1]  229 	clr	a
                           0000AC   230 	C$stm8s_exti.c$133$1_0$353 ==.
                                    231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 133: switch (Port)
      00A05F 88               [ 1]  232 	push	a
      00A060 7B 04            [ 1]  233 	ld	a, (0x04, sp)
      00A062 A1 04            [ 1]  234 	cp	a, #0x04
      00A064 84               [ 1]  235 	pop	a
      00A065 23 03            [ 2]  236 	jrule	00114$
      00A067 CC A0 A8         [ 2]  237 	jp	00107$
      00A06A                        238 00114$:
      00A06A 5F               [ 1]  239 	clrw	x
      00A06B 7B 03            [ 1]  240 	ld	a, (0x03, sp)
      00A06D 97               [ 1]  241 	ld	xl, a
      00A06E 58               [ 2]  242 	sllw	x
      00A06F DE A0 73         [ 2]  243 	ldw	x, (#00115$, x)
      00A072 FC               [ 2]  244 	jp	(x)
      00A073                        245 00115$:
      00A073 A0 7D                  246 	.dw	#00101$
      00A075 A0 84                  247 	.dw	#00102$
      00A077 A0 8D                  248 	.dw	#00103$
      00A079 A0 97                  249 	.dw	#00104$
      00A07B A0 A3                  250 	.dw	#00105$
                           0000CA   251 	C$stm8s_exti.c$135$2_0$354 ==.
                                    252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
      00A07D                        253 00101$:
                           0000CA   254 	C$stm8s_exti.c$136$2_0$354 ==.
                                    255 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
      00A07D C6 50 A0         [ 1]  256 	ld	a, 0x50a0
      00A080 A4 03            [ 1]  257 	and	a, #0x03
                           0000CF   258 	C$stm8s_exti.c$137$2_0$354 ==.
                                    259 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 137: break;
      00A082 20 24            [ 2]  260 	jra	00107$
                           0000D1   261 	C$stm8s_exti.c$138$2_0$354 ==.
                                    262 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
      00A084                        263 00102$:
                           0000D1   264 	C$stm8s_exti.c$139$2_0$354 ==.
                                    265 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
      00A084 C6 50 A0         [ 1]  266 	ld	a, 0x50a0
      00A087 A4 0C            [ 1]  267 	and	a, #0x0c
      00A089 44               [ 1]  268 	srl	a
      00A08A 44               [ 1]  269 	srl	a
                           0000D8   270 	C$stm8s_exti.c$140$2_0$354 ==.
                                    271 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 140: break;
      00A08B 20 1B            [ 2]  272 	jra	00107$
                           0000DA   273 	C$stm8s_exti.c$141$2_0$354 ==.
                                    274 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
      00A08D                        275 00103$:
                           0000DA   276 	C$stm8s_exti.c$142$2_0$354 ==.
                                    277 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
      00A08D C6 50 A0         [ 1]  278 	ld	a, 0x50a0
      00A090 A4 30            [ 1]  279 	and	a, #0x30
      00A092 4E               [ 1]  280 	swap	a
      00A093 A4 0F            [ 1]  281 	and	a, #0x0f
                           0000E2   282 	C$stm8s_exti.c$143$2_0$354 ==.
                                    283 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 143: break;
      00A095 20 11            [ 2]  284 	jra	00107$
                           0000E4   285 	C$stm8s_exti.c$144$2_0$354 ==.
                                    286 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
      00A097                        287 00104$:
                           0000E4   288 	C$stm8s_exti.c$145$2_0$354 ==.
                                    289 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
      00A097 C6 50 A0         [ 1]  290 	ld	a, 0x50a0
      00A09A A4 C0            [ 1]  291 	and	a, #0xc0
      00A09C 4E               [ 1]  292 	swap	a
      00A09D A4 0F            [ 1]  293 	and	a, #0x0f
      00A09F 44               [ 1]  294 	srl	a
      00A0A0 44               [ 1]  295 	srl	a
                           0000EE   296 	C$stm8s_exti.c$146$2_0$354 ==.
                                    297 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 146: break;
      00A0A1 20 05            [ 2]  298 	jra	00107$
                           0000F0   299 	C$stm8s_exti.c$147$2_0$354 ==.
                                    300 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
      00A0A3                        301 00105$:
                           0000F0   302 	C$stm8s_exti.c$148$2_0$354 ==.
                                    303 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
      00A0A3 C6 50 A1         [ 1]  304 	ld	a, 0x50a1
      00A0A6 A4 03            [ 1]  305 	and	a, #0x03
                           0000F5   306 	C$stm8s_exti.c$152$1_0$353 ==.
                                    307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 152: }
      00A0A8                        308 00107$:
                           0000F5   309 	C$stm8s_exti.c$154$1_0$353 ==.
                                    310 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
                           0000F5   311 	C$stm8s_exti.c$155$1_0$353 ==.
                                    312 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 155: }
                           0000F5   313 	C$stm8s_exti.c$155$1_0$353 ==.
                           0000F5   314 	XG$EXTI_GetExtIntSensitivity$0$0 ==.
      00A0A8 81               [ 4]  315 	ret
                           0000F6   316 	G$EXTI_GetTLISensitivity$0$0 ==.
                           0000F6   317 	C$stm8s_exti.c$162$1_0$356 ==.
                                    318 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
                                    319 ;	-----------------------------------------
                                    320 ;	 function EXTI_GetTLISensitivity
                                    321 ;	-----------------------------------------
      00A0A9                        322 _EXTI_GetTLISensitivity:
                           0000F6   323 	C$stm8s_exti.c$167$1_0$356 ==.
                                    324 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
      00A0A9 C6 50 A1         [ 1]  325 	ld	a, 0x50a1
      00A0AC A4 04            [ 1]  326 	and	a, #0x04
                           0000FB   327 	C$stm8s_exti.c$169$1_0$356 ==.
                                    328 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
                           0000FB   329 	C$stm8s_exti.c$170$1_0$356 ==.
                                    330 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_exti.c: 170: }
                           0000FB   331 	C$stm8s_exti.c$170$1_0$356 ==.
                           0000FB   332 	XG$EXTI_GetTLISensitivity$0$0 ==.
      00A0AE 81               [ 4]  333 	ret
                                    334 	.area CODE
                                    335 	.area CONST
                                    336 	.area INITIALIZER
                                    337 	.area CABS (ABS)
