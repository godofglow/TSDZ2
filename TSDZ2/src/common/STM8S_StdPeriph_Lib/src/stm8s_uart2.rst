                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart2
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_GetClockFreq
                                     12 	.globl _UART2_DeInit
                                     13 	.globl _UART2_Init
                                     14 	.globl _UART2_Cmd
                                     15 	.globl _UART2_ITConfig
                                     16 	.globl _UART2_IrDAConfig
                                     17 	.globl _UART2_IrDACmd
                                     18 	.globl _UART2_LINBreakDetectionConfig
                                     19 	.globl _UART2_LINConfig
                                     20 	.globl _UART2_LINCmd
                                     21 	.globl _UART2_SmartCardCmd
                                     22 	.globl _UART2_SmartCardNACKCmd
                                     23 	.globl _UART2_WakeUpConfig
                                     24 	.globl _UART2_ReceiverWakeUpCmd
                                     25 	.globl _UART2_ReceiveData8
                                     26 	.globl _UART2_ReceiveData9
                                     27 	.globl _UART2_SendData8
                                     28 	.globl _UART2_SendData9
                                     29 	.globl _UART2_SendBreak
                                     30 	.globl _UART2_SetAddress
                                     31 	.globl _UART2_SetGuardTime
                                     32 	.globl _UART2_SetPrescaler
                                     33 	.globl _UART2_GetFlagStatus
                                     34 	.globl _UART2_ClearFlag
                                     35 	.globl _UART2_GetITStatus
                                     36 	.globl _UART2_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                           000000    74 	G$UART2_DeInit$0$0 ==.
                           000000    75 	C$stm8s_uart2.c$53$0_0$346 ==.
                                     76 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 53: void UART2_DeInit(void)
                                     77 ;	-----------------------------------------
                                     78 ;	 function UART2_DeInit
                                     79 ;	-----------------------------------------
      008951                         80 _UART2_DeInit:
                           000000    81 	C$stm8s_uart2.c$57$1_0$346 ==.
                                     82 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 57: (void) UART2->SR;
      008951 C6 52 40         [ 1]   83 	ld	a, 0x5240
                           000003    84 	C$stm8s_uart2.c$58$1_0$346 ==.
                                     85 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 58: (void)UART2->DR;
      008954 C6 52 41         [ 1]   86 	ld	a, 0x5241
                           000006    87 	C$stm8s_uart2.c$60$1_0$346 ==.
                                     88 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      008957 35 00 52 43      [ 1]   89 	mov	0x5243+0, #0x00
                           00000A    90 	C$stm8s_uart2.c$61$1_0$346 ==.
                                     91 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      00895B 35 00 52 42      [ 1]   92 	mov	0x5242+0, #0x00
                           00000E    93 	C$stm8s_uart2.c$63$1_0$346 ==.
                                     94 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      00895F 35 00 52 44      [ 1]   95 	mov	0x5244+0, #0x00
                           000012    96 	C$stm8s_uart2.c$64$1_0$346 ==.
                                     97 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      008963 35 00 52 45      [ 1]   98 	mov	0x5245+0, #0x00
                           000016    99 	C$stm8s_uart2.c$65$1_0$346 ==.
                                    100 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      008967 35 00 52 46      [ 1]  101 	mov	0x5246+0, #0x00
                           00001A   102 	C$stm8s_uart2.c$66$1_0$346 ==.
                                    103 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      00896B 35 00 52 47      [ 1]  104 	mov	0x5247+0, #0x00
                           00001E   105 	C$stm8s_uart2.c$67$1_0$346 ==.
                                    106 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      00896F 35 00 52 48      [ 1]  107 	mov	0x5248+0, #0x00
                           000022   108 	C$stm8s_uart2.c$68$1_0$346 ==.
                                    109 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      008973 35 00 52 49      [ 1]  110 	mov	0x5249+0, #0x00
                           000026   111 	C$stm8s_uart2.c$69$1_0$346 ==.
                                    112 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 69: }
                           000026   113 	C$stm8s_uart2.c$69$1_0$346 ==.
                           000026   114 	XG$UART2_DeInit$0$0 ==.
      008977 81               [ 4]  115 	ret
                           000027   116 	G$UART2_Init$0$0 ==.
                           000027   117 	C$stm8s_uart2.c$85$1_0$348 ==.
                                    118 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    119 ;	-----------------------------------------
                                    120 ;	 function UART2_Init
                                    121 ;	-----------------------------------------
      008978                        122 _UART2_Init:
      008978 52 10            [ 2]  123 	sub	sp, #16
                           000029   124 	C$stm8s_uart2.c$99$1_0$348 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      00897A 72 19 52 44      [ 1]  126 	bres	21060, #4
                           00002D   127 	C$stm8s_uart2.c$101$1_0$348 ==.
                                    128 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      00897E C6 52 44         [ 1]  129 	ld	a, 0x5244
      008981 1A 17            [ 1]  130 	or	a, (0x17, sp)
      008983 C7 52 44         [ 1]  131 	ld	0x5244, a
                           000035   132 	C$stm8s_uart2.c$104$1_0$348 ==.
                                    133 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      008986 C6 52 46         [ 1]  134 	ld	a, 0x5246
      008989 A4 CF            [ 1]  135 	and	a, #0xcf
      00898B C7 52 46         [ 1]  136 	ld	0x5246, a
                           00003D   137 	C$stm8s_uart2.c$106$1_0$348 ==.
                                    138 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      00898E C6 52 46         [ 1]  139 	ld	a, 0x5246
      008991 1A 18            [ 1]  140 	or	a, (0x18, sp)
      008993 C7 52 46         [ 1]  141 	ld	0x5246, a
                           000045   142 	C$stm8s_uart2.c$109$1_0$348 ==.
                                    143 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      008996 C6 52 44         [ 1]  144 	ld	a, 0x5244
      008999 A4 F9            [ 1]  145 	and	a, #0xf9
      00899B C7 52 44         [ 1]  146 	ld	0x5244, a
                           00004D   147 	C$stm8s_uart2.c$111$1_0$348 ==.
                                    148 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      00899E C6 52 44         [ 1]  149 	ld	a, 0x5244
      0089A1 1A 19            [ 1]  150 	or	a, (0x19, sp)
      0089A3 C7 52 44         [ 1]  151 	ld	0x5244, a
                           000055   152 	C$stm8s_uart2.c$114$1_0$348 ==.
                                    153 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      0089A6 C6 52 42         [ 1]  154 	ld	a, 0x5242
      0089A9 35 00 52 42      [ 1]  155 	mov	0x5242+0, #0x00
                           00005C   156 	C$stm8s_uart2.c$116$1_0$348 ==.
                                    157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      0089AD C6 52 43         [ 1]  158 	ld	a, 0x5243
      0089B0 A4 0F            [ 1]  159 	and	a, #0x0f
      0089B2 C7 52 43         [ 1]  160 	ld	0x5243, a
                           000064   161 	C$stm8s_uart2.c$118$1_0$348 ==.
                                    162 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      0089B5 C6 52 43         [ 1]  163 	ld	a, 0x5243
      0089B8 A4 F0            [ 1]  164 	and	a, #0xf0
      0089BA C7 52 43         [ 1]  165 	ld	0x5243, a
                           00006C   166 	C$stm8s_uart2.c$121$1_0$348 ==.
                                    167 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0089BD CD 87 9B         [ 4]  168 	call	_CLK_GetClockFreq
      0089C0 1F 0F            [ 2]  169 	ldw	(0x0f, sp), x
      0089C2 1E 13            [ 2]  170 	ldw	x, (0x13, sp)
      0089C4 1F 09            [ 2]  171 	ldw	(0x09, sp), x
      0089C6 1E 15            [ 2]  172 	ldw	x, (0x15, sp)
      0089C8 A6 04            [ 1]  173 	ld	a, #0x04
      0089CA                        174 00124$:
      0089CA 58               [ 2]  175 	sllw	x
      0089CB 09 0A            [ 1]  176 	rlc	(0x0a, sp)
      0089CD 09 09            [ 1]  177 	rlc	(0x09, sp)
      0089CF 4A               [ 1]  178 	dec	a
      0089D0 26 F8            [ 1]  179 	jrne	00124$
      0089D2 1F 0B            [ 2]  180 	ldw	(0x0b, sp), x
      0089D4 89               [ 2]  181 	pushw	x
      0089D5 1E 0B            [ 2]  182 	ldw	x, (0x0b, sp)
      0089D7 89               [ 2]  183 	pushw	x
      0089D8 1E 13            [ 2]  184 	ldw	x, (0x13, sp)
      0089DA 89               [ 2]  185 	pushw	x
      0089DB 90 89            [ 2]  186 	pushw	y
      0089DD CD D7 76         [ 4]  187 	call	__divulong
      0089E0 5B 08            [ 2]  188 	addw	sp, #8
      0089E2 1F 0F            [ 2]  189 	ldw	(0x0f, sp), x
      0089E4 17 0D            [ 2]  190 	ldw	(0x0d, sp), y
      0089E6 16 0F            [ 2]  191 	ldw	y, (0x0f, sp)
      0089E8 17 03            [ 2]  192 	ldw	(0x03, sp), y
      0089EA 16 0D            [ 2]  193 	ldw	y, (0x0d, sp)
      0089EC 17 01            [ 2]  194 	ldw	(0x01, sp), y
                           00009D   195 	C$stm8s_uart2.c$122$1_0$348 ==.
                                    196 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0089EE CD 87 9B         [ 4]  197 	call	_CLK_GetClockFreq
      0089F1 1F 0F            [ 2]  198 	ldw	(0x0f, sp), x
      0089F3 17 0D            [ 2]  199 	ldw	(0x0d, sp), y
      0089F5 1E 0F            [ 2]  200 	ldw	x, (0x0f, sp)
      0089F7 89               [ 2]  201 	pushw	x
      0089F8 1E 0F            [ 2]  202 	ldw	x, (0x0f, sp)
      0089FA 89               [ 2]  203 	pushw	x
      0089FB 4B 64            [ 1]  204 	push	#0x64
      0089FD 5F               [ 1]  205 	clrw	x
      0089FE 89               [ 2]  206 	pushw	x
      0089FF 4B 00            [ 1]  207 	push	#0x00
      008A01 CD DA 9D         [ 4]  208 	call	__mullong
      008A04 5B 08            [ 2]  209 	addw	sp, #8
      008A06 1F 0F            [ 2]  210 	ldw	(0x0f, sp), x
      008A08 1E 0B            [ 2]  211 	ldw	x, (0x0b, sp)
      008A0A 89               [ 2]  212 	pushw	x
      008A0B 1E 0B            [ 2]  213 	ldw	x, (0x0b, sp)
      008A0D 89               [ 2]  214 	pushw	x
      008A0E 1E 13            [ 2]  215 	ldw	x, (0x13, sp)
      008A10 89               [ 2]  216 	pushw	x
      008A11 90 89            [ 2]  217 	pushw	y
      008A13 CD D7 76         [ 4]  218 	call	__divulong
      008A16 5B 08            [ 2]  219 	addw	sp, #8
      008A18 1F 07            [ 2]  220 	ldw	(0x07, sp), x
      008A1A 17 05            [ 2]  221 	ldw	(0x05, sp), y
                           0000CB   222 	C$stm8s_uart2.c$126$1_0$348 ==.
                                    223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      008A1C 1E 03            [ 2]  224 	ldw	x, (0x03, sp)
      008A1E 89               [ 2]  225 	pushw	x
      008A1F 1E 03            [ 2]  226 	ldw	x, (0x03, sp)
      008A21 89               [ 2]  227 	pushw	x
      008A22 4B 64            [ 1]  228 	push	#0x64
      008A24 5F               [ 1]  229 	clrw	x
      008A25 89               [ 2]  230 	pushw	x
      008A26 4B 00            [ 1]  231 	push	#0x00
      008A28 CD DA 9D         [ 4]  232 	call	__mullong
      008A2B 5B 08            [ 2]  233 	addw	sp, #8
      008A2D 1F 0B            [ 2]  234 	ldw	(0x0b, sp), x
      008A2F 17 09            [ 2]  235 	ldw	(0x09, sp), y
      008A31 1E 07            [ 2]  236 	ldw	x, (0x07, sp)
      008A33 72 F0 0B         [ 2]  237 	subw	x, (0x0b, sp)
      008A36 1F 0F            [ 2]  238 	ldw	(0x0f, sp), x
      008A38 7B 06            [ 1]  239 	ld	a, (0x06, sp)
      008A3A 12 0A            [ 1]  240 	sbc	a, (0x0a, sp)
      008A3C 6B 0E            [ 1]  241 	ld	(0x0e, sp), a
      008A3E 7B 05            [ 1]  242 	ld	a, (0x05, sp)
      008A40 12 09            [ 1]  243 	sbc	a, (0x09, sp)
      008A42 6B 0D            [ 1]  244 	ld	(0x0d, sp), a
      008A44 1E 0F            [ 2]  245 	ldw	x, (0x0f, sp)
      008A46 16 0D            [ 2]  246 	ldw	y, (0x0d, sp)
      008A48 A6 04            [ 1]  247 	ld	a, #0x04
      008A4A                        248 00126$:
      008A4A 58               [ 2]  249 	sllw	x
      008A4B 90 59            [ 2]  250 	rlcw	y
      008A4D 4A               [ 1]  251 	dec	a
      008A4E 26 FA            [ 1]  252 	jrne	00126$
      008A50 4B 64            [ 1]  253 	push	#0x64
      008A52 4B 00            [ 1]  254 	push	#0x00
      008A54 4B 00            [ 1]  255 	push	#0x00
      008A56 4B 00            [ 1]  256 	push	#0x00
      008A58 89               [ 2]  257 	pushw	x
      008A59 90 89            [ 2]  258 	pushw	y
      008A5B CD D7 76         [ 4]  259 	call	__divulong
      008A5E 5B 08            [ 2]  260 	addw	sp, #8
      008A60 9F               [ 1]  261 	ld	a, xl
      008A61 A4 0F            [ 1]  262 	and	a, #0x0f
      008A63 6B 10            [ 1]  263 	ld	(0x10, sp), a
                           000114   264 	C$stm8s_uart2.c$128$1_0$348 ==.
                                    265 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      008A65 1E 03            [ 2]  266 	ldw	x, (0x03, sp)
      008A67 A6 10            [ 1]  267 	ld	a, #0x10
      008A69 62               [ 2]  268 	div	x, a
      008A6A 9F               [ 1]  269 	ld	a, xl
      008A6B A4 F0            [ 1]  270 	and	a, #0xf0
                           00011C   271 	C$stm8s_uart2.c$130$1_0$348 ==.
                                    272 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      008A6D 1A 10            [ 1]  273 	or	a, (0x10, sp)
      008A6F C7 52 43         [ 1]  274 	ld	0x5243, a
                           000121   275 	C$stm8s_uart2.c$132$1_0$348 ==.
                                    276 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      008A72 7B 04            [ 1]  277 	ld	a, (0x04, sp)
      008A74 C7 52 42         [ 1]  278 	ld	0x5242, a
                           000126   279 	C$stm8s_uart2.c$135$1_0$348 ==.
                                    280 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008A77 C6 52 45         [ 1]  281 	ld	a, 0x5245
      008A7A A4 F3            [ 1]  282 	and	a, #0xf3
      008A7C C7 52 45         [ 1]  283 	ld	0x5245, a
                           00012E   284 	C$stm8s_uart2.c$137$1_0$348 ==.
                                    285 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      008A7F C6 52 46         [ 1]  286 	ld	a, 0x5246
      008A82 A4 F8            [ 1]  287 	and	a, #0xf8
      008A84 C7 52 46         [ 1]  288 	ld	0x5246, a
                           000136   289 	C$stm8s_uart2.c$139$1_0$348 ==.
                                    290 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      008A87 C6 52 46         [ 1]  291 	ld	a, 0x5246
      008A8A 6B 10            [ 1]  292 	ld	(0x10, sp), a
      008A8C 7B 1A            [ 1]  293 	ld	a, (0x1a, sp)
      008A8E A4 07            [ 1]  294 	and	a, #0x07
      008A90 1A 10            [ 1]  295 	or	a, (0x10, sp)
      008A92 C7 52 46         [ 1]  296 	ld	0x5246, a
                           000144   297 	C$stm8s_uart2.c$142$1_0$348 ==.
                                    298 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      008A95 7B 1B            [ 1]  299 	ld	a, (0x1b, sp)
      008A97 A5 04            [ 1]  300 	bcp	a, #0x04
      008A99 27 06            [ 1]  301 	jreq	00102$
                           00014A   302 	C$stm8s_uart2.c$145$2_0$349 ==.
                                    303 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      008A9B 72 16 52 45      [ 1]  304 	bset	21061, #3
      008A9F 20 04            [ 2]  305 	jra	00103$
      008AA1                        306 00102$:
                           000150   307 	C$stm8s_uart2.c$150$2_0$350 ==.
                                    308 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      008AA1 72 17 52 45      [ 1]  309 	bres	21061, #3
      008AA5                        310 00103$:
                           000154   311 	C$stm8s_uart2.c$152$1_0$348 ==.
                                    312 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      008AA5 7B 1B            [ 1]  313 	ld	a, (0x1b, sp)
      008AA7 A5 08            [ 1]  314 	bcp	a, #0x08
      008AA9 27 06            [ 1]  315 	jreq	00105$
                           00015A   316 	C$stm8s_uart2.c$155$2_0$351 ==.
                                    317 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      008AAB 72 14 52 45      [ 1]  318 	bset	21061, #2
      008AAF 20 04            [ 2]  319 	jra	00106$
      008AB1                        320 00105$:
                           000160   321 	C$stm8s_uart2.c$160$2_0$352 ==.
                                    322 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      008AB1 72 15 52 45      [ 1]  323 	bres	21061, #2
      008AB5                        324 00106$:
                           000164   325 	C$stm8s_uart2.c$164$1_0$348 ==.
                                    326 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      008AB5 0D 1A            [ 1]  327 	tnz	(0x1a, sp)
      008AB7 2A 06            [ 1]  328 	jrpl	00108$
                           000168   329 	C$stm8s_uart2.c$167$2_0$353 ==.
                                    330 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      008AB9 72 17 52 46      [ 1]  331 	bres	21062, #3
      008ABD 20 0E            [ 2]  332 	jra	00110$
      008ABF                        333 00108$:
                           00016E   334 	C$stm8s_uart2.c$171$2_0$354 ==.
                                    335 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      008ABF C6 52 46         [ 1]  336 	ld	a, 0x5246
      008AC2 6B 10            [ 1]  337 	ld	(0x10, sp), a
      008AC4 7B 1A            [ 1]  338 	ld	a, (0x1a, sp)
      008AC6 A4 08            [ 1]  339 	and	a, #0x08
      008AC8 1A 10            [ 1]  340 	or	a, (0x10, sp)
      008ACA C7 52 46         [ 1]  341 	ld	0x5246, a
      008ACD                        342 00110$:
                           00017C   343 	C$stm8s_uart2.c$173$1_0$348 ==.
                                    344 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 173: }
      008ACD 5B 10            [ 2]  345 	addw	sp, #16
                           00017E   346 	C$stm8s_uart2.c$173$1_0$348 ==.
                           00017E   347 	XG$UART2_Init$0$0 ==.
      008ACF 81               [ 4]  348 	ret
                           00017F   349 	G$UART2_Cmd$0$0 ==.
                           00017F   350 	C$stm8s_uart2.c$181$1_0$356 ==.
                                    351 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    352 ;	-----------------------------------------
                                    353 ;	 function UART2_Cmd
                                    354 ;	-----------------------------------------
      008AD0                        355 _UART2_Cmd:
                           00017F   356 	C$stm8s_uart2.c$183$1_0$356 ==.
                                    357 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      008AD0 0D 03            [ 1]  358 	tnz	(0x03, sp)
      008AD2 27 06            [ 1]  359 	jreq	00102$
                           000183   360 	C$stm8s_uart2.c$186$2_0$357 ==.
                                    361 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008AD4 72 1B 52 44      [ 1]  362 	bres	21060, #5
      008AD8 20 04            [ 2]  363 	jra	00104$
      008ADA                        364 00102$:
                           000189   365 	C$stm8s_uart2.c$191$2_0$358 ==.
                                    366 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      008ADA 72 1A 52 44      [ 1]  367 	bset	21060, #5
      008ADE                        368 00104$:
                           00018D   369 	C$stm8s_uart2.c$193$1_0$356 ==.
                                    370 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 193: }
                           00018D   371 	C$stm8s_uart2.c$193$1_0$356 ==.
                           00018D   372 	XG$UART2_Cmd$0$0 ==.
      008ADE 81               [ 4]  373 	ret
                           00018E   374 	G$UART2_ITConfig$0$0 ==.
                           00018E   375 	C$stm8s_uart2.c$210$1_0$360 ==.
                                    376 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    377 ;	-----------------------------------------
                                    378 ;	 function UART2_ITConfig
                                    379 ;	-----------------------------------------
      008ADF                        380 _UART2_ITConfig:
      008ADF 52 02            [ 2]  381 	sub	sp, #2
                           000190   382 	C$stm8s_uart2.c$219$1_0$360 ==.
                                    383 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
      008AE1 7B 05            [ 1]  384 	ld	a, (0x05, sp)
      008AE3 97               [ 1]  385 	ld	xl, a
                           000193   386 	C$stm8s_uart2.c$222$1_0$360 ==.
                                    387 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008AE4 7B 06            [ 1]  388 	ld	a, (0x06, sp)
      008AE6 A4 0F            [ 1]  389 	and	a, #0x0f
      008AE8 88               [ 1]  390 	push	a
      008AE9 A6 01            [ 1]  391 	ld	a, #0x01
      008AEB 6B 02            [ 1]  392 	ld	(0x02, sp), a
      008AED 84               [ 1]  393 	pop	a
      008AEE 4D               [ 1]  394 	tnz	a
      008AEF 27 05            [ 1]  395 	jreq	00153$
      008AF1                        396 00152$:
      008AF1 08 01            [ 1]  397 	sll	(0x01, sp)
      008AF3 4A               [ 1]  398 	dec	a
      008AF4 26 FB            [ 1]  399 	jrne	00152$
      008AF6                        400 00153$:
                           0001A5   401 	C$stm8s_uart2.c$224$1_0$360 ==.
                                    402 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      008AF6 0D 07            [ 1]  403 	tnz	(0x07, sp)
      008AF8 27 38            [ 1]  404 	jreq	00120$
                           0001A9   405 	C$stm8s_uart2.c$227$2_0$361 ==.
                                    406 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      008AFA 9F               [ 1]  407 	ld	a, xl
      008AFB 4A               [ 1]  408 	dec	a
      008AFC 26 0B            [ 1]  409 	jrne	00108$
                           0001AD   410 	C$stm8s_uart2.c$229$3_0$362 ==.
                                    411 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      008AFE C6 52 44         [ 1]  412 	ld	a, 0x5244
      008B01 1A 01            [ 1]  413 	or	a, (0x01, sp)
      008B03 C7 52 44         [ 1]  414 	ld	0x5244, a
      008B06 CC 8B 7A         [ 2]  415 	jp	00122$
      008B09                        416 00108$:
                           0001B8   417 	C$stm8s_uart2.c$231$2_0$361 ==.
                                    418 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008B09 9F               [ 1]  419 	ld	a, xl
      008B0A A1 02            [ 1]  420 	cp	a, #0x02
      008B0C 26 0B            [ 1]  421 	jrne	00105$
                           0001BD   422 	C$stm8s_uart2.c$233$3_0$363 ==.
                                    423 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      008B0E C6 52 45         [ 1]  424 	ld	a, 0x5245
      008B11 1A 01            [ 1]  425 	or	a, (0x01, sp)
      008B13 C7 52 45         [ 1]  426 	ld	0x5245, a
      008B16 CC 8B 7A         [ 2]  427 	jp	00122$
      008B19                        428 00105$:
                           0001C8   429 	C$stm8s_uart2.c$235$2_0$361 ==.
                                    430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008B19 9F               [ 1]  431 	ld	a, xl
      008B1A A1 03            [ 1]  432 	cp	a, #0x03
      008B1C 26 0A            [ 1]  433 	jrne	00102$
                           0001CD   434 	C$stm8s_uart2.c$237$3_0$364 ==.
                                    435 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      008B1E C6 52 47         [ 1]  436 	ld	a, 0x5247
      008B21 1A 01            [ 1]  437 	or	a, (0x01, sp)
      008B23 C7 52 47         [ 1]  438 	ld	0x5247, a
      008B26 20 52            [ 2]  439 	jra	00122$
      008B28                        440 00102$:
                           0001D7   441 	C$stm8s_uart2.c$241$3_0$365 ==.
                                    442 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      008B28 C6 52 49         [ 1]  443 	ld	a, 0x5249
      008B2B 1A 01            [ 1]  444 	or	a, (0x01, sp)
      008B2D C7 52 49         [ 1]  445 	ld	0x5249, a
      008B30 20 48            [ 2]  446 	jra	00122$
      008B32                        447 00120$:
                           0001E1   448 	C$stm8s_uart2.c$247$2_0$366 ==.
                                    449 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      008B32 9F               [ 1]  450 	ld	a, xl
      008B33 4A               [ 1]  451 	dec	a
      008B34 26 0F            [ 1]  452 	jrne	00117$
                           0001E5   453 	C$stm8s_uart2.c$249$3_0$367 ==.
                                    454 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      008B36 C6 52 44         [ 1]  455 	ld	a, 0x5244
      008B39 6B 02            [ 1]  456 	ld	(0x02, sp), a
      008B3B 7B 01            [ 1]  457 	ld	a, (0x01, sp)
      008B3D 43               [ 1]  458 	cpl	a
      008B3E 14 02            [ 1]  459 	and	a, (0x02, sp)
      008B40 C7 52 44         [ 1]  460 	ld	0x5244, a
      008B43 20 35            [ 2]  461 	jra	00122$
      008B45                        462 00117$:
                           0001F4   463 	C$stm8s_uart2.c$251$2_0$366 ==.
                                    464 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      008B45 9F               [ 1]  465 	ld	a, xl
      008B46 A1 02            [ 1]  466 	cp	a, #0x02
      008B48 26 0F            [ 1]  467 	jrne	00114$
                           0001F9   468 	C$stm8s_uart2.c$253$3_0$368 ==.
                                    469 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      008B4A C6 52 45         [ 1]  470 	ld	a, 0x5245
      008B4D 6B 02            [ 1]  471 	ld	(0x02, sp), a
      008B4F 7B 01            [ 1]  472 	ld	a, (0x01, sp)
      008B51 43               [ 1]  473 	cpl	a
      008B52 14 02            [ 1]  474 	and	a, (0x02, sp)
      008B54 C7 52 45         [ 1]  475 	ld	0x5245, a
      008B57 20 21            [ 2]  476 	jra	00122$
      008B59                        477 00114$:
                           000208   478 	C$stm8s_uart2.c$255$2_0$366 ==.
                                    479 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      008B59 9F               [ 1]  480 	ld	a, xl
      008B5A A1 03            [ 1]  481 	cp	a, #0x03
      008B5C 26 0F            [ 1]  482 	jrne	00111$
                           00020D   483 	C$stm8s_uart2.c$257$3_0$369 ==.
                                    484 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      008B5E C6 52 47         [ 1]  485 	ld	a, 0x5247
      008B61 6B 02            [ 1]  486 	ld	(0x02, sp), a
      008B63 7B 01            [ 1]  487 	ld	a, (0x01, sp)
      008B65 43               [ 1]  488 	cpl	a
      008B66 14 02            [ 1]  489 	and	a, (0x02, sp)
      008B68 C7 52 47         [ 1]  490 	ld	0x5247, a
      008B6B 20 0D            [ 2]  491 	jra	00122$
      008B6D                        492 00111$:
                           00021C   493 	C$stm8s_uart2.c$261$3_0$370 ==.
                                    494 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      008B6D C6 52 49         [ 1]  495 	ld	a, 0x5249
      008B70 6B 02            [ 1]  496 	ld	(0x02, sp), a
      008B72 7B 01            [ 1]  497 	ld	a, (0x01, sp)
      008B74 43               [ 1]  498 	cpl	a
      008B75 14 02            [ 1]  499 	and	a, (0x02, sp)
      008B77 C7 52 49         [ 1]  500 	ld	0x5249, a
      008B7A                        501 00122$:
                           000229   502 	C$stm8s_uart2.c$264$1_0$360 ==.
                                    503 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 264: }
      008B7A 5B 02            [ 2]  504 	addw	sp, #2
                           00022B   505 	C$stm8s_uart2.c$264$1_0$360 ==.
                           00022B   506 	XG$UART2_ITConfig$0$0 ==.
      008B7C 81               [ 4]  507 	ret
                           00022C   508 	G$UART2_IrDAConfig$0$0 ==.
                           00022C   509 	C$stm8s_uart2.c$272$1_0$372 ==.
                                    510 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    511 ;	-----------------------------------------
                                    512 ;	 function UART2_IrDAConfig
                                    513 ;	-----------------------------------------
      008B7D                        514 _UART2_IrDAConfig:
                           00022C   515 	C$stm8s_uart2.c$276$1_0$372 ==.
                                    516 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      008B7D 0D 03            [ 1]  517 	tnz	(0x03, sp)
      008B7F 27 06            [ 1]  518 	jreq	00102$
                           000230   519 	C$stm8s_uart2.c$278$2_0$373 ==.
                                    520 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      008B81 72 14 52 48      [ 1]  521 	bset	21064, #2
      008B85 20 04            [ 2]  522 	jra	00104$
      008B87                        523 00102$:
                           000236   524 	C$stm8s_uart2.c$282$2_0$374 ==.
                                    525 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      008B87 72 15 52 48      [ 1]  526 	bres	21064, #2
      008B8B                        527 00104$:
                           00023A   528 	C$stm8s_uart2.c$284$1_0$372 ==.
                                    529 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 284: }
                           00023A   530 	C$stm8s_uart2.c$284$1_0$372 ==.
                           00023A   531 	XG$UART2_IrDAConfig$0$0 ==.
      008B8B 81               [ 4]  532 	ret
                           00023B   533 	G$UART2_IrDACmd$0$0 ==.
                           00023B   534 	C$stm8s_uart2.c$292$1_0$376 ==.
                                    535 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    536 ;	-----------------------------------------
                                    537 ;	 function UART2_IrDACmd
                                    538 ;	-----------------------------------------
      008B8C                        539 _UART2_IrDACmd:
                           00023B   540 	C$stm8s_uart2.c$297$1_0$376 ==.
                                    541 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      008B8C 0D 03            [ 1]  542 	tnz	(0x03, sp)
      008B8E 27 06            [ 1]  543 	jreq	00102$
                           00023F   544 	C$stm8s_uart2.c$300$2_0$377 ==.
                                    545 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      008B90 72 12 52 48      [ 1]  546 	bset	21064, #1
      008B94 20 04            [ 2]  547 	jra	00104$
      008B96                        548 00102$:
                           000245   549 	C$stm8s_uart2.c$305$2_0$378 ==.
                                    550 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      008B96 72 13 52 48      [ 1]  551 	bres	21064, #1
      008B9A                        552 00104$:
                           000249   553 	C$stm8s_uart2.c$307$1_0$376 ==.
                                    554 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 307: }
                           000249   555 	C$stm8s_uart2.c$307$1_0$376 ==.
                           000249   556 	XG$UART2_IrDACmd$0$0 ==.
      008B9A 81               [ 4]  557 	ret
                           00024A   558 	G$UART2_LINBreakDetectionConfig$0$0 ==.
                           00024A   559 	C$stm8s_uart2.c$316$1_0$380 ==.
                                    560 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    561 ;	-----------------------------------------
                                    562 ;	 function UART2_LINBreakDetectionConfig
                                    563 ;	-----------------------------------------
      008B9B                        564 _UART2_LINBreakDetectionConfig:
                           00024A   565 	C$stm8s_uart2.c$321$1_0$380 ==.
                                    566 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      008B9B 0D 03            [ 1]  567 	tnz	(0x03, sp)
      008B9D 27 06            [ 1]  568 	jreq	00102$
                           00024E   569 	C$stm8s_uart2.c$323$2_0$381 ==.
                                    570 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      008B9F 72 1A 52 47      [ 1]  571 	bset	21063, #5
      008BA3 20 04            [ 2]  572 	jra	00104$
      008BA5                        573 00102$:
                           000254   574 	C$stm8s_uart2.c$327$2_0$382 ==.
                                    575 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      008BA5 72 1B 52 47      [ 1]  576 	bres	21063, #5
      008BA9                        577 00104$:
                           000258   578 	C$stm8s_uart2.c$329$1_0$380 ==.
                                    579 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 329: }
                           000258   580 	C$stm8s_uart2.c$329$1_0$380 ==.
                           000258   581 	XG$UART2_LINBreakDetectionConfig$0$0 ==.
      008BA9 81               [ 4]  582 	ret
                           000259   583 	G$UART2_LINConfig$0$0 ==.
                           000259   584 	C$stm8s_uart2.c$341$1_0$384 ==.
                                    585 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    586 ;	-----------------------------------------
                                    587 ;	 function UART2_LINConfig
                                    588 ;	-----------------------------------------
      008BAA                        589 _UART2_LINConfig:
                           000259   590 	C$stm8s_uart2.c$350$1_0$384 ==.
                                    591 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      008BAA 0D 03            [ 1]  592 	tnz	(0x03, sp)
      008BAC 27 06            [ 1]  593 	jreq	00102$
                           00025D   594 	C$stm8s_uart2.c$352$2_0$385 ==.
                                    595 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008BAE 72 1A 52 49      [ 1]  596 	bset	21065, #5
      008BB2 20 04            [ 2]  597 	jra	00103$
      008BB4                        598 00102$:
                           000263   599 	C$stm8s_uart2.c$356$2_0$386 ==.
                                    600 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      008BB4 72 1B 52 49      [ 1]  601 	bres	21065, #5
      008BB8                        602 00103$:
                           000267   603 	C$stm8s_uart2.c$359$1_0$384 ==.
                                    604 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      008BB8 0D 04            [ 1]  605 	tnz	(0x04, sp)
      008BBA 27 06            [ 1]  606 	jreq	00105$
                           00026B   607 	C$stm8s_uart2.c$361$2_0$387 ==.
                                    608 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      008BBC 72 18 52 49      [ 1]  609 	bset	21065, #4
      008BC0 20 04            [ 2]  610 	jra	00106$
      008BC2                        611 00105$:
                           000271   612 	C$stm8s_uart2.c$365$2_0$388 ==.
                                    613 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      008BC2 72 19 52 49      [ 1]  614 	bres	21065, #4
      008BC6                        615 00106$:
                           000275   616 	C$stm8s_uart2.c$368$1_0$384 ==.
                                    617 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      008BC6 0D 05            [ 1]  618 	tnz	(0x05, sp)
      008BC8 27 06            [ 1]  619 	jreq	00108$
                           000279   620 	C$stm8s_uart2.c$370$2_0$389 ==.
                                    621 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      008BCA 72 1E 52 49      [ 1]  622 	bset	21065, #7
      008BCE 20 04            [ 2]  623 	jra	00110$
      008BD0                        624 00108$:
                           00027F   625 	C$stm8s_uart2.c$374$2_0$390 ==.
                                    626 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      008BD0 72 1F 52 49      [ 1]  627 	bres	21065, #7
      008BD4                        628 00110$:
                           000283   629 	C$stm8s_uart2.c$376$1_0$384 ==.
                                    630 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 376: }
                           000283   631 	C$stm8s_uart2.c$376$1_0$384 ==.
                           000283   632 	XG$UART2_LINConfig$0$0 ==.
      008BD4 81               [ 4]  633 	ret
                           000284   634 	G$UART2_LINCmd$0$0 ==.
                           000284   635 	C$stm8s_uart2.c$384$1_0$392 ==.
                                    636 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    637 ;	-----------------------------------------
                                    638 ;	 function UART2_LINCmd
                                    639 ;	-----------------------------------------
      008BD5                        640 _UART2_LINCmd:
                           000284   641 	C$stm8s_uart2.c$388$1_0$392 ==.
                                    642 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      008BD5 0D 03            [ 1]  643 	tnz	(0x03, sp)
      008BD7 27 06            [ 1]  644 	jreq	00102$
                           000288   645 	C$stm8s_uart2.c$391$2_0$393 ==.
                                    646 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      008BD9 72 1C 52 46      [ 1]  647 	bset	21062, #6
      008BDD 20 04            [ 2]  648 	jra	00104$
      008BDF                        649 00102$:
                           00028E   650 	C$stm8s_uart2.c$396$2_0$394 ==.
                                    651 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      008BDF 72 1D 52 46      [ 1]  652 	bres	21062, #6
      008BE3                        653 00104$:
                           000292   654 	C$stm8s_uart2.c$398$1_0$392 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 398: }
                           000292   656 	C$stm8s_uart2.c$398$1_0$392 ==.
                           000292   657 	XG$UART2_LINCmd$0$0 ==.
      008BE3 81               [ 4]  658 	ret
                           000293   659 	G$UART2_SmartCardCmd$0$0 ==.
                           000293   660 	C$stm8s_uart2.c$406$1_0$396 ==.
                                    661 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    662 ;	-----------------------------------------
                                    663 ;	 function UART2_SmartCardCmd
                                    664 ;	-----------------------------------------
      008BE4                        665 _UART2_SmartCardCmd:
                           000293   666 	C$stm8s_uart2.c$411$1_0$396 ==.
                                    667 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      008BE4 0D 03            [ 1]  668 	tnz	(0x03, sp)
      008BE6 27 06            [ 1]  669 	jreq	00102$
                           000297   670 	C$stm8s_uart2.c$414$2_0$397 ==.
                                    671 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      008BE8 72 1A 52 48      [ 1]  672 	bset	21064, #5
      008BEC 20 04            [ 2]  673 	jra	00104$
      008BEE                        674 00102$:
                           00029D   675 	C$stm8s_uart2.c$419$2_0$398 ==.
                                    676 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      008BEE 72 1B 52 48      [ 1]  677 	bres	21064, #5
      008BF2                        678 00104$:
                           0002A1   679 	C$stm8s_uart2.c$421$1_0$396 ==.
                                    680 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 421: }
                           0002A1   681 	C$stm8s_uart2.c$421$1_0$396 ==.
                           0002A1   682 	XG$UART2_SmartCardCmd$0$0 ==.
      008BF2 81               [ 4]  683 	ret
                           0002A2   684 	G$UART2_SmartCardNACKCmd$0$0 ==.
                           0002A2   685 	C$stm8s_uart2.c$429$1_0$400 ==.
                                    686 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    687 ;	-----------------------------------------
                                    688 ;	 function UART2_SmartCardNACKCmd
                                    689 ;	-----------------------------------------
      008BF3                        690 _UART2_SmartCardNACKCmd:
                           0002A2   691 	C$stm8s_uart2.c$434$1_0$400 ==.
                                    692 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      008BF3 0D 03            [ 1]  693 	tnz	(0x03, sp)
      008BF5 27 06            [ 1]  694 	jreq	00102$
                           0002A6   695 	C$stm8s_uart2.c$437$2_0$401 ==.
                                    696 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      008BF7 72 18 52 48      [ 1]  697 	bset	21064, #4
      008BFB 20 04            [ 2]  698 	jra	00104$
      008BFD                        699 00102$:
                           0002AC   700 	C$stm8s_uart2.c$442$2_0$402 ==.
                                    701 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      008BFD 72 19 52 48      [ 1]  702 	bres	21064, #4
      008C01                        703 00104$:
                           0002B0   704 	C$stm8s_uart2.c$444$1_0$400 ==.
                                    705 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 444: }
                           0002B0   706 	C$stm8s_uart2.c$444$1_0$400 ==.
                           0002B0   707 	XG$UART2_SmartCardNACKCmd$0$0 ==.
      008C01 81               [ 4]  708 	ret
                           0002B1   709 	G$UART2_WakeUpConfig$0$0 ==.
                           0002B1   710 	C$stm8s_uart2.c$452$1_0$404 ==.
                                    711 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    712 ;	-----------------------------------------
                                    713 ;	 function UART2_WakeUpConfig
                                    714 ;	-----------------------------------------
      008C02                        715 _UART2_WakeUpConfig:
                           0002B1   716 	C$stm8s_uart2.c$456$1_0$404 ==.
                                    717 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      008C02 72 17 52 44      [ 1]  718 	bres	21060, #3
                           0002B5   719 	C$stm8s_uart2.c$457$1_0$404 ==.
                                    720 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      008C06 C6 52 44         [ 1]  721 	ld	a, 0x5244
      008C09 1A 03            [ 1]  722 	or	a, (0x03, sp)
      008C0B C7 52 44         [ 1]  723 	ld	0x5244, a
                           0002BD   724 	C$stm8s_uart2.c$458$1_0$404 ==.
                                    725 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 458: }
                           0002BD   726 	C$stm8s_uart2.c$458$1_0$404 ==.
                           0002BD   727 	XG$UART2_WakeUpConfig$0$0 ==.
      008C0E 81               [ 4]  728 	ret
                           0002BE   729 	G$UART2_ReceiverWakeUpCmd$0$0 ==.
                           0002BE   730 	C$stm8s_uart2.c$466$1_0$406 ==.
                                    731 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    732 ;	-----------------------------------------
                                    733 ;	 function UART2_ReceiverWakeUpCmd
                                    734 ;	-----------------------------------------
      008C0F                        735 _UART2_ReceiverWakeUpCmd:
                           0002BE   736 	C$stm8s_uart2.c$470$1_0$406 ==.
                                    737 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      008C0F 0D 03            [ 1]  738 	tnz	(0x03, sp)
      008C11 27 06            [ 1]  739 	jreq	00102$
                           0002C2   740 	C$stm8s_uart2.c$473$2_0$407 ==.
                                    741 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      008C13 72 12 52 45      [ 1]  742 	bset	21061, #1
      008C17 20 04            [ 2]  743 	jra	00104$
      008C19                        744 00102$:
                           0002C8   745 	C$stm8s_uart2.c$478$2_0$408 ==.
                                    746 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      008C19 72 13 52 45      [ 1]  747 	bres	21061, #1
      008C1D                        748 00104$:
                           0002CC   749 	C$stm8s_uart2.c$480$1_0$406 ==.
                                    750 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 480: }
                           0002CC   751 	C$stm8s_uart2.c$480$1_0$406 ==.
                           0002CC   752 	XG$UART2_ReceiverWakeUpCmd$0$0 ==.
      008C1D 81               [ 4]  753 	ret
                           0002CD   754 	G$UART2_ReceiveData8$0$0 ==.
                           0002CD   755 	C$stm8s_uart2.c$487$1_0$410 ==.
                                    756 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                    757 ;	-----------------------------------------
                                    758 ;	 function UART2_ReceiveData8
                                    759 ;	-----------------------------------------
      008C1E                        760 _UART2_ReceiveData8:
                           0002CD   761 	C$stm8s_uart2.c$489$1_0$410 ==.
                                    762 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      008C1E C6 52 41         [ 1]  763 	ld	a, 0x5241
                           0002D0   764 	C$stm8s_uart2.c$490$1_0$410 ==.
                                    765 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 490: }
                           0002D0   766 	C$stm8s_uart2.c$490$1_0$410 ==.
                           0002D0   767 	XG$UART2_ReceiveData8$0$0 ==.
      008C21 81               [ 4]  768 	ret
                           0002D1   769 	G$UART2_ReceiveData9$0$0 ==.
                           0002D1   770 	C$stm8s_uart2.c$497$1_0$412 ==.
                                    771 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                    772 ;	-----------------------------------------
                                    773 ;	 function UART2_ReceiveData9
                                    774 ;	-----------------------------------------
      008C22                        775 _UART2_ReceiveData9:
      008C22 52 02            [ 2]  776 	sub	sp, #2
                           0002D3   777 	C$stm8s_uart2.c$501$1_0$412 ==.
                                    778 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      008C24 C6 52 44         [ 1]  779 	ld	a, 0x5244
      008C27 A4 80            [ 1]  780 	and	a, #0x80
      008C29 97               [ 1]  781 	ld	xl, a
      008C2A 4F               [ 1]  782 	clr	a
      008C2B 95               [ 1]  783 	ld	xh, a
      008C2C 58               [ 2]  784 	sllw	x
                           0002DC   785 	C$stm8s_uart2.c$503$1_0$412 ==.
                                    786 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      008C2D C6 52 41         [ 1]  787 	ld	a, 0x5241
      008C30 6B 02            [ 1]  788 	ld	(0x02, sp), a
      008C32 0F 01            [ 1]  789 	clr	(0x01, sp)
      008C34 9F               [ 1]  790 	ld	a, xl
      008C35 1A 02            [ 1]  791 	or	a, (0x02, sp)
      008C37 02               [ 1]  792 	rlwa	x
      008C38 1A 01            [ 1]  793 	or	a, (0x01, sp)
      008C3A A4 01            [ 1]  794 	and	a, #0x01
      008C3C 95               [ 1]  795 	ld	xh, a
                           0002EC   796 	C$stm8s_uart2.c$504$1_0$412 ==.
                                    797 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 504: }
      008C3D 5B 02            [ 2]  798 	addw	sp, #2
                           0002EE   799 	C$stm8s_uart2.c$504$1_0$412 ==.
                           0002EE   800 	XG$UART2_ReceiveData9$0$0 ==.
      008C3F 81               [ 4]  801 	ret
                           0002EF   802 	G$UART2_SendData8$0$0 ==.
                           0002EF   803 	C$stm8s_uart2.c$511$1_0$414 ==.
                                    804 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                    805 ;	-----------------------------------------
                                    806 ;	 function UART2_SendData8
                                    807 ;	-----------------------------------------
      008C40                        808 _UART2_SendData8:
                           0002EF   809 	C$stm8s_uart2.c$514$1_0$414 ==.
                                    810 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 514: UART2->DR = Data;
      008C40 AE 52 41         [ 2]  811 	ldw	x, #0x5241
      008C43 7B 03            [ 1]  812 	ld	a, (0x03, sp)
      008C45 F7               [ 1]  813 	ld	(x), a
                           0002F5   814 	C$stm8s_uart2.c$515$1_0$414 ==.
                                    815 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 515: }
                           0002F5   816 	C$stm8s_uart2.c$515$1_0$414 ==.
                           0002F5   817 	XG$UART2_SendData8$0$0 ==.
      008C46 81               [ 4]  818 	ret
                           0002F6   819 	G$UART2_SendData9$0$0 ==.
                           0002F6   820 	C$stm8s_uart2.c$522$1_0$416 ==.
                                    821 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                    822 ;	-----------------------------------------
                                    823 ;	 function UART2_SendData9
                                    824 ;	-----------------------------------------
      008C47                        825 _UART2_SendData9:
      008C47 88               [ 1]  826 	push	a
                           0002F7   827 	C$stm8s_uart2.c$525$1_0$416 ==.
                                    828 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      008C48 72 1D 52 44      [ 1]  829 	bres	21060, #6
                           0002FB   830 	C$stm8s_uart2.c$528$1_0$416 ==.
                                    831 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      008C4C C6 52 44         [ 1]  832 	ld	a, 0x5244
      008C4F 6B 01            [ 1]  833 	ld	(0x01, sp), a
      008C51 1E 04            [ 2]  834 	ldw	x, (0x04, sp)
      008C53 54               [ 2]  835 	srlw	x
      008C54 54               [ 2]  836 	srlw	x
      008C55 9F               [ 1]  837 	ld	a, xl
      008C56 A4 40            [ 1]  838 	and	a, #0x40
      008C58 1A 01            [ 1]  839 	or	a, (0x01, sp)
      008C5A C7 52 44         [ 1]  840 	ld	0x5244, a
                           00030C   841 	C$stm8s_uart2.c$531$1_0$416 ==.
                                    842 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      008C5D 7B 05            [ 1]  843 	ld	a, (0x05, sp)
      008C5F C7 52 41         [ 1]  844 	ld	0x5241, a
                           000311   845 	C$stm8s_uart2.c$532$1_0$416 ==.
                                    846 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 532: }
      008C62 84               [ 1]  847 	pop	a
                           000312   848 	C$stm8s_uart2.c$532$1_0$416 ==.
                           000312   849 	XG$UART2_SendData9$0$0 ==.
      008C63 81               [ 4]  850 	ret
                           000313   851 	G$UART2_SendBreak$0$0 ==.
                           000313   852 	C$stm8s_uart2.c$539$1_0$418 ==.
                                    853 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                    854 ;	-----------------------------------------
                                    855 ;	 function UART2_SendBreak
                                    856 ;	-----------------------------------------
      008C64                        857 _UART2_SendBreak:
                           000313   858 	C$stm8s_uart2.c$541$1_0$418 ==.
                                    859 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      008C64 72 10 52 45      [ 1]  860 	bset	21061, #0
                           000317   861 	C$stm8s_uart2.c$542$1_0$418 ==.
                                    862 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 542: }
                           000317   863 	C$stm8s_uart2.c$542$1_0$418 ==.
                           000317   864 	XG$UART2_SendBreak$0$0 ==.
      008C68 81               [ 4]  865 	ret
                           000318   866 	G$UART2_SetAddress$0$0 ==.
                           000318   867 	C$stm8s_uart2.c$549$1_0$420 ==.
                                    868 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                    869 ;	-----------------------------------------
                                    870 ;	 function UART2_SetAddress
                                    871 ;	-----------------------------------------
      008C69                        872 _UART2_SetAddress:
                           000318   873 	C$stm8s_uart2.c$555$1_0$420 ==.
                                    874 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      008C69 C6 52 47         [ 1]  875 	ld	a, 0x5247
      008C6C A4 F0            [ 1]  876 	and	a, #0xf0
      008C6E C7 52 47         [ 1]  877 	ld	0x5247, a
                           000320   878 	C$stm8s_uart2.c$557$1_0$420 ==.
                                    879 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      008C71 C6 52 47         [ 1]  880 	ld	a, 0x5247
      008C74 1A 03            [ 1]  881 	or	a, (0x03, sp)
      008C76 C7 52 47         [ 1]  882 	ld	0x5247, a
                           000328   883 	C$stm8s_uart2.c$558$1_0$420 ==.
                                    884 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 558: }
                           000328   885 	C$stm8s_uart2.c$558$1_0$420 ==.
                           000328   886 	XG$UART2_SetAddress$0$0 ==.
      008C79 81               [ 4]  887 	ret
                           000329   888 	G$UART2_SetGuardTime$0$0 ==.
                           000329   889 	C$stm8s_uart2.c$566$1_0$422 ==.
                                    890 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                    891 ;	-----------------------------------------
                                    892 ;	 function UART2_SetGuardTime
                                    893 ;	-----------------------------------------
      008C7A                        894 _UART2_SetGuardTime:
                           000329   895 	C$stm8s_uart2.c$569$1_0$422 ==.
                                    896 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      008C7A AE 52 4A         [ 2]  897 	ldw	x, #0x524a
      008C7D 7B 03            [ 1]  898 	ld	a, (0x03, sp)
      008C7F F7               [ 1]  899 	ld	(x), a
                           00032F   900 	C$stm8s_uart2.c$570$1_0$422 ==.
                                    901 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 570: }
                           00032F   902 	C$stm8s_uart2.c$570$1_0$422 ==.
                           00032F   903 	XG$UART2_SetGuardTime$0$0 ==.
      008C80 81               [ 4]  904 	ret
                           000330   905 	G$UART2_SetPrescaler$0$0 ==.
                           000330   906 	C$stm8s_uart2.c$594$1_0$424 ==.
                                    907 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                    908 ;	-----------------------------------------
                                    909 ;	 function UART2_SetPrescaler
                                    910 ;	-----------------------------------------
      008C81                        911 _UART2_SetPrescaler:
                           000330   912 	C$stm8s_uart2.c$597$1_0$424 ==.
                                    913 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      008C81 AE 52 4B         [ 2]  914 	ldw	x, #0x524b
      008C84 7B 03            [ 1]  915 	ld	a, (0x03, sp)
      008C86 F7               [ 1]  916 	ld	(x), a
                           000336   917 	C$stm8s_uart2.c$598$1_0$424 ==.
                                    918 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 598: }
                           000336   919 	C$stm8s_uart2.c$598$1_0$424 ==.
                           000336   920 	XG$UART2_SetPrescaler$0$0 ==.
      008C87 81               [ 4]  921 	ret
                           000337   922 	G$UART2_GetFlagStatus$0$0 ==.
                           000337   923 	C$stm8s_uart2.c$606$1_0$426 ==.
                                    924 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                    925 ;	-----------------------------------------
                                    926 ;	 function UART2_GetFlagStatus
                                    927 ;	-----------------------------------------
      008C88                        928 _UART2_GetFlagStatus:
      008C88 88               [ 1]  929 	push	a
                           000338   930 	C$stm8s_uart2.c$614$1_0$426 ==.
                                    931 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      008C89 1E 04            [ 2]  932 	ldw	x, (0x04, sp)
      008C8B A3 02 10         [ 2]  933 	cpw	x, #0x0210
      008C8E 26 14            [ 1]  934 	jrne	00121$
                           00033F   935 	C$stm8s_uart2.c$616$2_0$427 ==.
                                    936 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008C90 C6 52 47         [ 1]  937 	ld	a, 0x5247
      008C93 6B 01            [ 1]  938 	ld	(0x01, sp), a
      008C95 7B 05            [ 1]  939 	ld	a, (0x05, sp)
      008C97 14 01            [ 1]  940 	and	a, (0x01, sp)
      008C99 27 05            [ 1]  941 	jreq	00102$
                           00034A   942 	C$stm8s_uart2.c$619$3_0$428 ==.
                                    943 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 619: status = SET;
      008C9B A6 01            [ 1]  944 	ld	a, #0x01
      008C9D CC 8C ED         [ 2]  945 	jp	00122$
      008CA0                        946 00102$:
                           00034F   947 	C$stm8s_uart2.c$624$3_0$429 ==.
                                    948 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 624: status = RESET;
      008CA0 4F               [ 1]  949 	clr	a
      008CA1 CC 8C ED         [ 2]  950 	jp	00122$
      008CA4                        951 00121$:
                           000353   952 	C$stm8s_uart2.c$627$1_0$426 ==.
                                    953 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      008CA4 1E 04            [ 2]  954 	ldw	x, (0x04, sp)
      008CA6 A3 01 01         [ 2]  955 	cpw	x, #0x0101
      008CA9 26 12            [ 1]  956 	jrne	00118$
                           00035A   957 	C$stm8s_uart2.c$629$2_0$430 ==.
                                    958 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008CAB C6 52 45         [ 1]  959 	ld	a, 0x5245
      008CAE 6B 01            [ 1]  960 	ld	(0x01, sp), a
      008CB0 7B 05            [ 1]  961 	ld	a, (0x05, sp)
      008CB2 14 01            [ 1]  962 	and	a, (0x01, sp)
      008CB4 27 04            [ 1]  963 	jreq	00105$
                           000365   964 	C$stm8s_uart2.c$632$3_0$431 ==.
                                    965 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 632: status = SET;
      008CB6 A6 01            [ 1]  966 	ld	a, #0x01
      008CB8 20 33            [ 2]  967 	jra	00122$
      008CBA                        968 00105$:
                           000369   969 	C$stm8s_uart2.c$637$3_0$432 ==.
                                    970 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 637: status = RESET;
      008CBA 4F               [ 1]  971 	clr	a
      008CBB 20 30            [ 2]  972 	jra	00122$
      008CBD                        973 00118$:
                           00036C   974 	C$stm8s_uart2.c$640$1_0$426 ==.
                                    975 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      008CBD 1E 04            [ 2]  976 	ldw	x, (0x04, sp)
      008CBF A3 03 02         [ 2]  977 	cpw	x, #0x0302
      008CC2 27 07            [ 1]  978 	jreq	00113$
      008CC4 1E 04            [ 2]  979 	ldw	x, (0x04, sp)
      008CC6 A3 03 01         [ 2]  980 	cpw	x, #0x0301
      008CC9 26 12            [ 1]  981 	jrne	00114$
      008CCB                        982 00113$:
                           00037A   983 	C$stm8s_uart2.c$642$2_0$433 ==.
                                    984 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008CCB C6 52 49         [ 1]  985 	ld	a, 0x5249
      008CCE 6B 01            [ 1]  986 	ld	(0x01, sp), a
      008CD0 7B 05            [ 1]  987 	ld	a, (0x05, sp)
      008CD2 14 01            [ 1]  988 	and	a, (0x01, sp)
      008CD4 27 04            [ 1]  989 	jreq	00108$
                           000385   990 	C$stm8s_uart2.c$645$3_0$434 ==.
                                    991 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 645: status = SET;
      008CD6 A6 01            [ 1]  992 	ld	a, #0x01
      008CD8 20 13            [ 2]  993 	jra	00122$
      008CDA                        994 00108$:
                           000389   995 	C$stm8s_uart2.c$650$3_0$435 ==.
                                    996 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 650: status = RESET;
      008CDA 4F               [ 1]  997 	clr	a
      008CDB 20 10            [ 2]  998 	jra	00122$
      008CDD                        999 00114$:
                           00038C  1000 	C$stm8s_uart2.c$655$2_0$436 ==.
                                   1001 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008CDD C6 52 40         [ 1] 1002 	ld	a, 0x5240
      008CE0 6B 01            [ 1] 1003 	ld	(0x01, sp), a
      008CE2 7B 05            [ 1] 1004 	ld	a, (0x05, sp)
      008CE4 14 01            [ 1] 1005 	and	a, (0x01, sp)
      008CE6 27 04            [ 1] 1006 	jreq	00111$
                           000397  1007 	C$stm8s_uart2.c$658$3_0$437 ==.
                                   1008 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 658: status = SET;
      008CE8 A6 01            [ 1] 1009 	ld	a, #0x01
      008CEA 20 01            [ 2] 1010 	jra	00122$
      008CEC                       1011 00111$:
                           00039B  1012 	C$stm8s_uart2.c$663$3_0$438 ==.
                                   1013 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 663: status = RESET;
      008CEC 4F               [ 1] 1014 	clr	a
      008CED                       1015 00122$:
                           00039C  1016 	C$stm8s_uart2.c$668$1_0$426 ==.
                                   1017 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 668: return  status;
                           00039C  1018 	C$stm8s_uart2.c$669$1_0$426 ==.
                                   1019 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 669: }
      008CED 5B 01            [ 2] 1020 	addw	sp, #1
                           00039E  1021 	C$stm8s_uart2.c$669$1_0$426 ==.
                           00039E  1022 	XG$UART2_GetFlagStatus$0$0 ==.
      008CEF 81               [ 4] 1023 	ret
                           00039F  1024 	G$UART2_ClearFlag$0$0 ==.
                           00039F  1025 	C$stm8s_uart2.c$699$1_0$440 ==.
                                   1026 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function UART2_ClearFlag
                                   1029 ;	-----------------------------------------
      008CF0                       1030 _UART2_ClearFlag:
                           00039F  1031 	C$stm8s_uart2.c$704$1_0$440 ==.
                                   1032 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      008CF0 1E 03            [ 2] 1033 	ldw	x, (0x03, sp)
      008CF2 A3 00 20         [ 2] 1034 	cpw	x, #0x0020
      008CF5 26 06            [ 1] 1035 	jrne	00108$
                           0003A6  1036 	C$stm8s_uart2.c$706$2_0$441 ==.
                                   1037 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      008CF7 35 DF 52 40      [ 1] 1038 	mov	0x5240+0, #0xdf
      008CFB 20 1E            [ 2] 1039 	jra	00110$
      008CFD                       1040 00108$:
                           0003AC  1041 	C$stm8s_uart2.c$709$1_0$440 ==.
                                   1042 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      008CFD 1E 03            [ 2] 1043 	ldw	x, (0x03, sp)
      008CFF A3 02 10         [ 2] 1044 	cpw	x, #0x0210
      008D02 26 06            [ 1] 1045 	jrne	00105$
                           0003B3  1046 	C$stm8s_uart2.c$711$2_0$442 ==.
                                   1047 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      008D04 72 19 52 47      [ 1] 1048 	bres	21063, #4
      008D08 20 11            [ 2] 1049 	jra	00110$
      008D0A                       1050 00105$:
                           0003B9  1051 	C$stm8s_uart2.c$714$1_0$440 ==.
                                   1052 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      008D0A 1E 03            [ 2] 1053 	ldw	x, (0x03, sp)
      008D0C A3 03 02         [ 2] 1054 	cpw	x, #0x0302
      008D0F 26 06            [ 1] 1055 	jrne	00102$
                           0003C0  1056 	C$stm8s_uart2.c$716$2_0$443 ==.
                                   1057 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008D11 72 13 52 49      [ 1] 1058 	bres	21065, #1
      008D15 20 04            [ 2] 1059 	jra	00110$
      008D17                       1060 00102$:
                           0003C6  1061 	C$stm8s_uart2.c$721$2_0$444 ==.
                                   1062 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      008D17 72 11 52 49      [ 1] 1063 	bres	21065, #0
      008D1B                       1064 00110$:
                           0003CA  1065 	C$stm8s_uart2.c$723$1_0$440 ==.
                                   1066 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 723: }
                           0003CA  1067 	C$stm8s_uart2.c$723$1_0$440 ==.
                           0003CA  1068 	XG$UART2_ClearFlag$0$0 ==.
      008D1B 81               [ 4] 1069 	ret
                           0003CB  1070 	G$UART2_GetITStatus$0$0 ==.
                           0003CB  1071 	C$stm8s_uart2.c$738$1_0$446 ==.
                                   1072 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function UART2_GetITStatus
                                   1075 ;	-----------------------------------------
      008D1C                       1076 _UART2_GetITStatus:
      008D1C 52 02            [ 2] 1077 	sub	sp, #2
                           0003CD  1078 	C$stm8s_uart2.c$750$1_0$446 ==.
                                   1079 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008D1E 7B 06            [ 1] 1080 	ld	a, (0x06, sp)
      008D20 97               [ 1] 1081 	ld	xl, a
      008D21 A4 0F            [ 1] 1082 	and	a, #0x0f
      008D23 88               [ 1] 1083 	push	a
      008D24 A6 01            [ 1] 1084 	ld	a, #0x01
      008D26 6B 02            [ 1] 1085 	ld	(0x02, sp), a
      008D28 84               [ 1] 1086 	pop	a
      008D29 4D               [ 1] 1087 	tnz	a
      008D2A 27 05            [ 1] 1088 	jreq	00184$
      008D2C                       1089 00183$:
      008D2C 08 01            [ 1] 1090 	sll	(0x01, sp)
      008D2E 4A               [ 1] 1091 	dec	a
      008D2F 26 FB            [ 1] 1092 	jrne	00183$
      008D31                       1093 00184$:
                           0003E0  1094 	C$stm8s_uart2.c$752$1_0$446 ==.
                                   1095 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      008D31 9F               [ 1] 1096 	ld	a, xl
      008D32 4E               [ 1] 1097 	swap	a
      008D33 A4 0F            [ 1] 1098 	and	a, #0x0f
                           0003E4  1099 	C$stm8s_uart2.c$754$1_0$446 ==.
                                   1100 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      008D35 88               [ 1] 1101 	push	a
      008D36 A6 01            [ 1] 1102 	ld	a, #0x01
      008D38 6B 03            [ 1] 1103 	ld	(0x03, sp), a
      008D3A 84               [ 1] 1104 	pop	a
      008D3B 4D               [ 1] 1105 	tnz	a
      008D3C 27 05            [ 1] 1106 	jreq	00186$
      008D3E                       1107 00185$:
      008D3E 08 02            [ 1] 1108 	sll	(0x02, sp)
      008D40 4A               [ 1] 1109 	dec	a
      008D41 26 FB            [ 1] 1110 	jrne	00185$
      008D43                       1111 00186$:
                           0003F2  1112 	C$stm8s_uart2.c$757$1_0$446 ==.
                                   1113 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      008D43 1E 05            [ 2] 1114 	ldw	x, (0x05, sp)
      008D45 A3 01 00         [ 2] 1115 	cpw	x, #0x0100
      008D48 26 1A            [ 1] 1116 	jrne	00124$
                           0003F9  1117 	C$stm8s_uart2.c$760$2_0$447 ==.
                                   1118 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      008D4A C6 52 44         [ 1] 1119 	ld	a, 0x5244
      008D4D 14 02            [ 1] 1120 	and	a, (0x02, sp)
      008D4F 97               [ 1] 1121 	ld	xl, a
                           0003FF  1122 	C$stm8s_uart2.c$763$2_0$447 ==.
                                   1123 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008D50 C6 52 40         [ 1] 1124 	ld	a, 0x5240
      008D53 14 01            [ 1] 1125 	and	a, (0x01, sp)
      008D55 27 09            [ 1] 1126 	jreq	00102$
      008D57 9F               [ 1] 1127 	ld	a, xl
      008D58 4D               [ 1] 1128 	tnz	a
      008D59 27 05            [ 1] 1129 	jreq	00102$
                           00040A  1130 	C$stm8s_uart2.c$766$3_0$448 ==.
                                   1131 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      008D5B A6 01            [ 1] 1132 	ld	a, #0x01
      008D5D CC 8D B8         [ 2] 1133 	jp	00125$
      008D60                       1134 00102$:
                           00040F  1135 	C$stm8s_uart2.c$771$3_0$449 ==.
                                   1136 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      008D60 4F               [ 1] 1137 	clr	a
      008D61 CC 8D B8         [ 2] 1138 	jp	00125$
      008D64                       1139 00124$:
                           000413  1140 	C$stm8s_uart2.c$774$1_0$446 ==.
                                   1141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      008D64 1E 05            [ 2] 1142 	ldw	x, (0x05, sp)
      008D66 A3 03 46         [ 2] 1143 	cpw	x, #0x0346
      008D69 26 18            [ 1] 1144 	jrne	00121$
                           00041A  1145 	C$stm8s_uart2.c$777$2_0$450 ==.
                                   1146 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      008D6B C6 52 47         [ 1] 1147 	ld	a, 0x5247
      008D6E 14 02            [ 1] 1148 	and	a, (0x02, sp)
      008D70 97               [ 1] 1149 	ld	xl, a
                           000420  1150 	C$stm8s_uart2.c$779$2_0$450 ==.
                                   1151 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      008D71 C6 52 47         [ 1] 1152 	ld	a, 0x5247
      008D74 14 01            [ 1] 1153 	and	a, (0x01, sp)
      008D76 27 08            [ 1] 1154 	jreq	00106$
      008D78 9F               [ 1] 1155 	ld	a, xl
      008D79 4D               [ 1] 1156 	tnz	a
      008D7A 27 04            [ 1] 1157 	jreq	00106$
                           00042B  1158 	C$stm8s_uart2.c$782$3_0$451 ==.
                                   1159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      008D7C A6 01            [ 1] 1160 	ld	a, #0x01
      008D7E 20 38            [ 2] 1161 	jra	00125$
      008D80                       1162 00106$:
                           00042F  1163 	C$stm8s_uart2.c$787$3_0$452 ==.
                                   1164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      008D80 4F               [ 1] 1165 	clr	a
      008D81 20 35            [ 2] 1166 	jra	00125$
      008D83                       1167 00121$:
                           000432  1168 	C$stm8s_uart2.c$790$1_0$446 ==.
                                   1169 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      008D83 1E 05            [ 2] 1170 	ldw	x, (0x05, sp)
      008D85 A3 04 12         [ 2] 1171 	cpw	x, #0x0412
      008D88 26 18            [ 1] 1172 	jrne	00118$
                           000439  1173 	C$stm8s_uart2.c$793$2_0$453 ==.
                                   1174 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      008D8A C6 52 49         [ 1] 1175 	ld	a, 0x5249
      008D8D 14 02            [ 1] 1176 	and	a, (0x02, sp)
      008D8F 97               [ 1] 1177 	ld	xl, a
                           00043F  1178 	C$stm8s_uart2.c$795$2_0$453 ==.
                                   1179 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      008D90 C6 52 49         [ 1] 1180 	ld	a, 0x5249
      008D93 14 01            [ 1] 1181 	and	a, (0x01, sp)
      008D95 27 08            [ 1] 1182 	jreq	00110$
      008D97 9F               [ 1] 1183 	ld	a, xl
      008D98 4D               [ 1] 1184 	tnz	a
      008D99 27 04            [ 1] 1185 	jreq	00110$
                           00044A  1186 	C$stm8s_uart2.c$798$3_0$454 ==.
                                   1187 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      008D9B A6 01            [ 1] 1188 	ld	a, #0x01
      008D9D 20 19            [ 2] 1189 	jra	00125$
      008D9F                       1190 00110$:
                           00044E  1191 	C$stm8s_uart2.c$803$3_0$455 ==.
                                   1192 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      008D9F 4F               [ 1] 1193 	clr	a
      008DA0 20 16            [ 2] 1194 	jra	00125$
      008DA2                       1195 00118$:
                           000451  1196 	C$stm8s_uart2.c$809$2_0$456 ==.
                                   1197 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      008DA2 C6 52 45         [ 1] 1198 	ld	a, 0x5245
      008DA5 14 02            [ 1] 1199 	and	a, (0x02, sp)
      008DA7 97               [ 1] 1200 	ld	xl, a
                           000457  1201 	C$stm8s_uart2.c$811$2_0$456 ==.
                                   1202 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008DA8 C6 52 40         [ 1] 1203 	ld	a, 0x5240
      008DAB 14 01            [ 1] 1204 	and	a, (0x01, sp)
      008DAD 27 08            [ 1] 1205 	jreq	00114$
      008DAF 9F               [ 1] 1206 	ld	a, xl
      008DB0 4D               [ 1] 1207 	tnz	a
      008DB1 27 04            [ 1] 1208 	jreq	00114$
                           000462  1209 	C$stm8s_uart2.c$814$3_0$457 ==.
                                   1210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      008DB3 A6 01            [ 1] 1211 	ld	a, #0x01
      008DB5 20 01            [ 2] 1212 	jra	00125$
      008DB7                       1213 00114$:
                           000466  1214 	C$stm8s_uart2.c$819$3_0$458 ==.
                                   1215 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      008DB7 4F               [ 1] 1216 	clr	a
      008DB8                       1217 00125$:
                           000467  1218 	C$stm8s_uart2.c$823$1_0$446 ==.
                                   1219 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 823: return  pendingbitstatus;
                           000467  1220 	C$stm8s_uart2.c$824$1_0$446 ==.
                                   1221 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 824: }
      008DB8 5B 02            [ 2] 1222 	addw	sp, #2
                           000469  1223 	C$stm8s_uart2.c$824$1_0$446 ==.
                           000469  1224 	XG$UART2_GetITStatus$0$0 ==.
      008DBA 81               [ 4] 1225 	ret
                           00046A  1226 	G$UART2_ClearITPendingBit$0$0 ==.
                           00046A  1227 	C$stm8s_uart2.c$852$1_0$460 ==.
                                   1228 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1229 ;	-----------------------------------------
                                   1230 ;	 function UART2_ClearITPendingBit
                                   1231 ;	-----------------------------------------
      008DBB                       1232 _UART2_ClearITPendingBit:
                           00046A  1233 	C$stm8s_uart2.c$857$1_0$460 ==.
                                   1234 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      008DBB 1E 03            [ 2] 1235 	ldw	x, (0x03, sp)
      008DBD A3 02 55         [ 2] 1236 	cpw	x, #0x0255
      008DC0 26 06            [ 1] 1237 	jrne	00105$
                           000471  1238 	C$stm8s_uart2.c$859$2_0$461 ==.
                                   1239 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      008DC2 35 DF 52 40      [ 1] 1240 	mov	0x5240+0, #0xdf
      008DC6 20 11            [ 2] 1241 	jra	00107$
      008DC8                       1242 00105$:
                           000477  1243 	C$stm8s_uart2.c$862$1_0$460 ==.
                                   1244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      008DC8 1E 03            [ 2] 1245 	ldw	x, (0x03, sp)
      008DCA A3 03 46         [ 2] 1246 	cpw	x, #0x0346
      008DCD 26 06            [ 1] 1247 	jrne	00102$
                           00047E  1248 	C$stm8s_uart2.c$864$2_0$462 ==.
                                   1249 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      008DCF 72 19 52 47      [ 1] 1250 	bres	21063, #4
      008DD3 20 04            [ 2] 1251 	jra	00107$
      008DD5                       1252 00102$:
                           000484  1253 	C$stm8s_uart2.c$869$2_0$463 ==.
                                   1254 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008DD5 72 13 52 49      [ 1] 1255 	bres	21065, #1
      008DD9                       1256 00107$:
                           000488  1257 	C$stm8s_uart2.c$871$1_0$460 ==.
                                   1258 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 871: }
                           000488  1259 	C$stm8s_uart2.c$871$1_0$460 ==.
                           000488  1260 	XG$UART2_ClearITPendingBit$0$0 ==.
      008DD9 81               [ 4] 1261 	ret
                                   1262 	.area CODE
                                   1263 	.area CONST
                                   1264 	.area INITIALIZER
                                   1265 	.area CABS (ABS)
