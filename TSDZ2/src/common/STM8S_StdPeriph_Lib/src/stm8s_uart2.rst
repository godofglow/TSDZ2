                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
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
      008945                         80 _UART2_DeInit:
                           000000    81 	C$stm8s_uart2.c$57$1_0$346 ==.
                                     82 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 57: (void) UART2->SR;
      008945 C6 52 40         [ 1]   83 	ld	a, 0x5240
                           000003    84 	C$stm8s_uart2.c$58$1_0$346 ==.
                                     85 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 58: (void)UART2->DR;
      008948 C6 52 41         [ 1]   86 	ld	a, 0x5241
                           000006    87 	C$stm8s_uart2.c$60$1_0$346 ==.
                                     88 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      00894B 35 00 52 43      [ 1]   89 	mov	0x5243+0, #0x00
                           00000A    90 	C$stm8s_uart2.c$61$1_0$346 ==.
                                     91 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      00894F 35 00 52 42      [ 1]   92 	mov	0x5242+0, #0x00
                           00000E    93 	C$stm8s_uart2.c$63$1_0$346 ==.
                                     94 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      008953 35 00 52 44      [ 1]   95 	mov	0x5244+0, #0x00
                           000012    96 	C$stm8s_uart2.c$64$1_0$346 ==.
                                     97 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      008957 35 00 52 45      [ 1]   98 	mov	0x5245+0, #0x00
                           000016    99 	C$stm8s_uart2.c$65$1_0$346 ==.
                                    100 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      00895B 35 00 52 46      [ 1]  101 	mov	0x5246+0, #0x00
                           00001A   102 	C$stm8s_uart2.c$66$1_0$346 ==.
                                    103 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      00895F 35 00 52 47      [ 1]  104 	mov	0x5247+0, #0x00
                           00001E   105 	C$stm8s_uart2.c$67$1_0$346 ==.
                                    106 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      008963 35 00 52 48      [ 1]  107 	mov	0x5248+0, #0x00
                           000022   108 	C$stm8s_uart2.c$68$1_0$346 ==.
                                    109 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      008967 35 00 52 49      [ 1]  110 	mov	0x5249+0, #0x00
                           000026   111 	C$stm8s_uart2.c$69$1_0$346 ==.
                                    112 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 69: }
                           000026   113 	C$stm8s_uart2.c$69$1_0$346 ==.
                           000026   114 	XG$UART2_DeInit$0$0 ==.
      00896B 81               [ 4]  115 	ret
                           000027   116 	G$UART2_Init$0$0 ==.
                           000027   117 	C$stm8s_uart2.c$85$1_0$348 ==.
                                    118 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    119 ;	-----------------------------------------
                                    120 ;	 function UART2_Init
                                    121 ;	-----------------------------------------
      00896C                        122 _UART2_Init:
      00896C 52 23            [ 2]  123 	sub	sp, #35
                           000029   124 	C$stm8s_uart2.c$99$1_0$348 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      00896E 72 19 52 44      [ 1]  126 	bres	21060, #4
                           00002D   127 	C$stm8s_uart2.c$101$1_0$348 ==.
                                    128 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      008972 C6 52 44         [ 1]  129 	ld	a, 0x5244
      008975 1A 2A            [ 1]  130 	or	a, (0x2a, sp)
      008977 C7 52 44         [ 1]  131 	ld	0x5244, a
                           000035   132 	C$stm8s_uart2.c$104$1_0$348 ==.
                                    133 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      00897A C6 52 46         [ 1]  134 	ld	a, 0x5246
      00897D A4 CF            [ 1]  135 	and	a, #0xcf
      00897F C7 52 46         [ 1]  136 	ld	0x5246, a
                           00003D   137 	C$stm8s_uart2.c$106$1_0$348 ==.
                                    138 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      008982 C6 52 46         [ 1]  139 	ld	a, 0x5246
      008985 1A 2B            [ 1]  140 	or	a, (0x2b, sp)
      008987 C7 52 46         [ 1]  141 	ld	0x5246, a
                           000045   142 	C$stm8s_uart2.c$109$1_0$348 ==.
                                    143 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      00898A C6 52 44         [ 1]  144 	ld	a, 0x5244
      00898D A4 F9            [ 1]  145 	and	a, #0xf9
      00898F C7 52 44         [ 1]  146 	ld	0x5244, a
                           00004D   147 	C$stm8s_uart2.c$111$1_0$348 ==.
                                    148 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      008992 C6 52 44         [ 1]  149 	ld	a, 0x5244
      008995 1A 2C            [ 1]  150 	or	a, (0x2c, sp)
      008997 C7 52 44         [ 1]  151 	ld	0x5244, a
                           000055   152 	C$stm8s_uart2.c$114$1_0$348 ==.
                                    153 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      00899A C6 52 42         [ 1]  154 	ld	a, 0x5242
      00899D 35 00 52 42      [ 1]  155 	mov	0x5242+0, #0x00
                           00005C   156 	C$stm8s_uart2.c$116$1_0$348 ==.
                                    157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      0089A1 C6 52 43         [ 1]  158 	ld	a, 0x5243
      0089A4 A4 0F            [ 1]  159 	and	a, #0x0f
      0089A6 C7 52 43         [ 1]  160 	ld	0x5243, a
                           000064   161 	C$stm8s_uart2.c$118$1_0$348 ==.
                                    162 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      0089A9 C6 52 43         [ 1]  163 	ld	a, 0x5243
      0089AC A4 F0            [ 1]  164 	and	a, #0xf0
      0089AE C7 52 43         [ 1]  165 	ld	0x5243, a
                           00006C   166 	C$stm8s_uart2.c$121$1_0$348 ==.
                                    167 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0089B1 CD 87 8F         [ 4]  168 	call	_CLK_GetClockFreq
      0089B4 1F 07            [ 2]  169 	ldw	(0x07, sp), x
      0089B6 1E 26            [ 2]  170 	ldw	x, (0x26, sp)
      0089B8 1F 01            [ 2]  171 	ldw	(0x01, sp), x
      0089BA 1E 28            [ 2]  172 	ldw	x, (0x28, sp)
      0089BC A6 04            [ 1]  173 	ld	a, #0x04
      0089BE                        174 00124$:
      0089BE 58               [ 2]  175 	sllw	x
      0089BF 09 02            [ 1]  176 	rlc	(0x02, sp)
      0089C1 09 01            [ 1]  177 	rlc	(0x01, sp)
      0089C3 4A               [ 1]  178 	dec	a
      0089C4 26 F8            [ 1]  179 	jrne	00124$
      0089C6 1F 03            [ 2]  180 	ldw	(0x03, sp), x
      0089C8 89               [ 2]  181 	pushw	x
      0089C9 1E 03            [ 2]  182 	ldw	x, (0x03, sp)
      0089CB 89               [ 2]  183 	pushw	x
      0089CC 1E 0B            [ 2]  184 	ldw	x, (0x0b, sp)
      0089CE 89               [ 2]  185 	pushw	x
      0089CF 90 89            [ 2]  186 	pushw	y
      0089D1 CD DB 5F         [ 4]  187 	call	__divulong
      0089D4 5B 08            [ 2]  188 	addw	sp, #8
      0089D6 1F 1E            [ 2]  189 	ldw	(0x1e, sp), x
      0089D8 17 1C            [ 2]  190 	ldw	(0x1c, sp), y
      0089DA 16 1D            [ 2]  191 	ldw	y, (0x1d, sp)
      0089DC 17 1D            [ 2]  192 	ldw	(0x1d, sp), y
                           000099   193 	C$stm8s_uart2.c$122$1_0$348 ==.
                                    194 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0089DE CD 87 8F         [ 4]  195 	call	_CLK_GetClockFreq
      0089E1 1F 14            [ 2]  196 	ldw	(0x14, sp), x
      0089E3 17 12            [ 2]  197 	ldw	(0x12, sp), y
      0089E5 1E 14            [ 2]  198 	ldw	x, (0x14, sp)
      0089E7 89               [ 2]  199 	pushw	x
      0089E8 1E 14            [ 2]  200 	ldw	x, (0x14, sp)
      0089EA 89               [ 2]  201 	pushw	x
      0089EB 4B 64            [ 1]  202 	push	#0x64
      0089ED 5F               [ 1]  203 	clrw	x
      0089EE 89               [ 2]  204 	pushw	x
      0089EF 4B 00            [ 1]  205 	push	#0x00
      0089F1 CD DE EF         [ 4]  206 	call	__mullong
      0089F4 5B 08            [ 2]  207 	addw	sp, #8
      0089F6 1F 0C            [ 2]  208 	ldw	(0x0c, sp), x
      0089F8 1E 03            [ 2]  209 	ldw	x, (0x03, sp)
      0089FA 89               [ 2]  210 	pushw	x
      0089FB 1E 03            [ 2]  211 	ldw	x, (0x03, sp)
      0089FD 89               [ 2]  212 	pushw	x
      0089FE 1E 10            [ 2]  213 	ldw	x, (0x10, sp)
      008A00 89               [ 2]  214 	pushw	x
      008A01 90 89            [ 2]  215 	pushw	y
      008A03 CD DB 5F         [ 4]  216 	call	__divulong
      008A06 5B 08            [ 2]  217 	addw	sp, #8
      008A08 1F 22            [ 2]  218 	ldw	(0x22, sp), x
      008A0A 17 20            [ 2]  219 	ldw	(0x20, sp), y
                           0000C7   220 	C$stm8s_uart2.c$126$1_0$348 ==.
                                    221 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      008A0C 1E 1E            [ 2]  222 	ldw	x, (0x1e, sp)
      008A0E 89               [ 2]  223 	pushw	x
      008A0F 1E 1E            [ 2]  224 	ldw	x, (0x1e, sp)
      008A11 89               [ 2]  225 	pushw	x
      008A12 4B 64            [ 1]  226 	push	#0x64
      008A14 5F               [ 1]  227 	clrw	x
      008A15 89               [ 2]  228 	pushw	x
      008A16 4B 00            [ 1]  229 	push	#0x00
      008A18 CD DE EF         [ 4]  230 	call	__mullong
      008A1B 5B 08            [ 2]  231 	addw	sp, #8
      008A1D 1F 18            [ 2]  232 	ldw	(0x18, sp), x
      008A1F 17 16            [ 2]  233 	ldw	(0x16, sp), y
      008A21 1E 22            [ 2]  234 	ldw	x, (0x22, sp)
      008A23 72 F0 18         [ 2]  235 	subw	x, (0x18, sp)
      008A26 1F 10            [ 2]  236 	ldw	(0x10, sp), x
      008A28 7B 21            [ 1]  237 	ld	a, (0x21, sp)
      008A2A 12 17            [ 1]  238 	sbc	a, (0x17, sp)
      008A2C 6B 0F            [ 1]  239 	ld	(0x0f, sp), a
      008A2E 7B 20            [ 1]  240 	ld	a, (0x20, sp)
      008A30 12 16            [ 1]  241 	sbc	a, (0x16, sp)
      008A32 6B 0E            [ 1]  242 	ld	(0x0e, sp), a
      008A34 1E 10            [ 2]  243 	ldw	x, (0x10, sp)
      008A36 16 0E            [ 2]  244 	ldw	y, (0x0e, sp)
      008A38 A6 04            [ 1]  245 	ld	a, #0x04
      008A3A                        246 00126$:
      008A3A 58               [ 2]  247 	sllw	x
      008A3B 90 59            [ 2]  248 	rlcw	y
      008A3D 4A               [ 1]  249 	dec	a
      008A3E 26 FA            [ 1]  250 	jrne	00126$
      008A40 4B 64            [ 1]  251 	push	#0x64
      008A42 4B 00            [ 1]  252 	push	#0x00
      008A44 4B 00            [ 1]  253 	push	#0x00
      008A46 4B 00            [ 1]  254 	push	#0x00
      008A48 89               [ 2]  255 	pushw	x
      008A49 90 89            [ 2]  256 	pushw	y
      008A4B CD DB 5F         [ 4]  257 	call	__divulong
      008A4E 5B 08            [ 2]  258 	addw	sp, #8
      008A50 9F               [ 1]  259 	ld	a, xl
      008A51 A4 0F            [ 1]  260 	and	a, #0x0f
      008A53 6B 1B            [ 1]  261 	ld	(0x1b, sp), a
                           000110   262 	C$stm8s_uart2.c$128$1_0$348 ==.
                                    263 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      008A55 1E 1E            [ 2]  264 	ldw	x, (0x1e, sp)
      008A57 A6 10            [ 1]  265 	ld	a, #0x10
      008A59 62               [ 2]  266 	div	x, a
      008A5A 9F               [ 1]  267 	ld	a, xl
      008A5B A4 F0            [ 1]  268 	and	a, #0xf0
                           000118   269 	C$stm8s_uart2.c$130$1_0$348 ==.
                                    270 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      008A5D 1A 1B            [ 1]  271 	or	a, (0x1b, sp)
      008A5F C7 52 43         [ 1]  272 	ld	0x5243, a
                           00011D   273 	C$stm8s_uart2.c$132$1_0$348 ==.
                                    274 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      008A62 7B 1F            [ 1]  275 	ld	a, (0x1f, sp)
      008A64 C7 52 42         [ 1]  276 	ld	0x5242, a
                           000122   277 	C$stm8s_uart2.c$135$1_0$348 ==.
                                    278 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008A67 C6 52 45         [ 1]  279 	ld	a, 0x5245
      008A6A A4 F3            [ 1]  280 	and	a, #0xf3
      008A6C C7 52 45         [ 1]  281 	ld	0x5245, a
                           00012A   282 	C$stm8s_uart2.c$137$1_0$348 ==.
                                    283 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      008A6F C6 52 46         [ 1]  284 	ld	a, 0x5246
      008A72 A4 F8            [ 1]  285 	and	a, #0xf8
      008A74 C7 52 46         [ 1]  286 	ld	0x5246, a
                           000132   287 	C$stm8s_uart2.c$139$1_0$348 ==.
                                    288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      008A77 C6 52 46         [ 1]  289 	ld	a, 0x5246
      008A7A 6B 1A            [ 1]  290 	ld	(0x1a, sp), a
      008A7C 7B 2D            [ 1]  291 	ld	a, (0x2d, sp)
      008A7E A4 07            [ 1]  292 	and	a, #0x07
      008A80 1A 1A            [ 1]  293 	or	a, (0x1a, sp)
      008A82 C7 52 46         [ 1]  294 	ld	0x5246, a
                           000140   295 	C$stm8s_uart2.c$142$1_0$348 ==.
                                    296 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      008A85 7B 2E            [ 1]  297 	ld	a, (0x2e, sp)
      008A87 A5 04            [ 1]  298 	bcp	a, #0x04
      008A89 27 06            [ 1]  299 	jreq	00102$
                           000146   300 	C$stm8s_uart2.c$145$2_0$349 ==.
                                    301 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      008A8B 72 16 52 45      [ 1]  302 	bset	21061, #3
      008A8F 20 04            [ 2]  303 	jra	00103$
      008A91                        304 00102$:
                           00014C   305 	C$stm8s_uart2.c$150$2_0$350 ==.
                                    306 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      008A91 72 17 52 45      [ 1]  307 	bres	21061, #3
      008A95                        308 00103$:
                           000150   309 	C$stm8s_uart2.c$152$1_0$348 ==.
                                    310 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      008A95 7B 2E            [ 1]  311 	ld	a, (0x2e, sp)
      008A97 A5 08            [ 1]  312 	bcp	a, #0x08
      008A99 27 06            [ 1]  313 	jreq	00105$
                           000156   314 	C$stm8s_uart2.c$155$2_0$351 ==.
                                    315 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      008A9B 72 14 52 45      [ 1]  316 	bset	21061, #2
      008A9F 20 04            [ 2]  317 	jra	00106$
      008AA1                        318 00105$:
                           00015C   319 	C$stm8s_uart2.c$160$2_0$352 ==.
                                    320 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      008AA1 72 15 52 45      [ 1]  321 	bres	21061, #2
      008AA5                        322 00106$:
                           000160   323 	C$stm8s_uart2.c$164$1_0$348 ==.
                                    324 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      008AA5 0D 2D            [ 1]  325 	tnz	(0x2d, sp)
      008AA7 2A 06            [ 1]  326 	jrpl	00108$
                           000164   327 	C$stm8s_uart2.c$167$2_0$353 ==.
                                    328 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      008AA9 72 17 52 46      [ 1]  329 	bres	21062, #3
      008AAD 20 0E            [ 2]  330 	jra	00110$
      008AAF                        331 00108$:
                           00016A   332 	C$stm8s_uart2.c$171$2_0$354 ==.
                                    333 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      008AAF C6 52 46         [ 1]  334 	ld	a, 0x5246
      008AB2 6B 09            [ 1]  335 	ld	(0x09, sp), a
      008AB4 7B 2D            [ 1]  336 	ld	a, (0x2d, sp)
      008AB6 A4 08            [ 1]  337 	and	a, #0x08
      008AB8 1A 09            [ 1]  338 	or	a, (0x09, sp)
      008ABA C7 52 46         [ 1]  339 	ld	0x5246, a
      008ABD                        340 00110$:
                           000178   341 	C$stm8s_uart2.c$173$1_0$348 ==.
                                    342 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 173: }
      008ABD 5B 23            [ 2]  343 	addw	sp, #35
                           00017A   344 	C$stm8s_uart2.c$173$1_0$348 ==.
                           00017A   345 	XG$UART2_Init$0$0 ==.
      008ABF 81               [ 4]  346 	ret
                           00017B   347 	G$UART2_Cmd$0$0 ==.
                           00017B   348 	C$stm8s_uart2.c$181$1_0$356 ==.
                                    349 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    350 ;	-----------------------------------------
                                    351 ;	 function UART2_Cmd
                                    352 ;	-----------------------------------------
      008AC0                        353 _UART2_Cmd:
                           00017B   354 	C$stm8s_uart2.c$183$1_0$356 ==.
                                    355 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 183: if (NewState != DISABLE)
      008AC0 0D 03            [ 1]  356 	tnz	(0x03, sp)
      008AC2 27 06            [ 1]  357 	jreq	00102$
                           00017F   358 	C$stm8s_uart2.c$186$2_0$357 ==.
                                    359 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008AC4 72 1B 52 44      [ 1]  360 	bres	21060, #5
      008AC8 20 04            [ 2]  361 	jra	00104$
      008ACA                        362 00102$:
                           000185   363 	C$stm8s_uart2.c$191$2_0$358 ==.
                                    364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      008ACA 72 1A 52 44      [ 1]  365 	bset	21060, #5
      008ACE                        366 00104$:
                           000189   367 	C$stm8s_uart2.c$193$1_0$356 ==.
                                    368 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 193: }
                           000189   369 	C$stm8s_uart2.c$193$1_0$356 ==.
                           000189   370 	XG$UART2_Cmd$0$0 ==.
      008ACE 81               [ 4]  371 	ret
                           00018A   372 	G$UART2_ITConfig$0$0 ==.
                           00018A   373 	C$stm8s_uart2.c$210$1_0$360 ==.
                                    374 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    375 ;	-----------------------------------------
                                    376 ;	 function UART2_ITConfig
                                    377 ;	-----------------------------------------
      008ACF                        378 _UART2_ITConfig:
      008ACF 52 05            [ 2]  379 	sub	sp, #5
                           00018C   380 	C$stm8s_uart2.c$219$1_0$360 ==.
                                    381 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
      008AD1 7B 08            [ 1]  382 	ld	a, (0x08, sp)
      008AD3 97               [ 1]  383 	ld	xl, a
                           00018F   384 	C$stm8s_uart2.c$222$1_0$360 ==.
                                    385 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008AD4 7B 09            [ 1]  386 	ld	a, (0x09, sp)
      008AD6 A4 0F            [ 1]  387 	and	a, #0x0f
      008AD8 88               [ 1]  388 	push	a
      008AD9 A6 01            [ 1]  389 	ld	a, #0x01
      008ADB 6B 06            [ 1]  390 	ld	(0x06, sp), a
      008ADD 84               [ 1]  391 	pop	a
      008ADE 4D               [ 1]  392 	tnz	a
      008ADF 27 05            [ 1]  393 	jreq	00153$
      008AE1                        394 00152$:
      008AE1 08 05            [ 1]  395 	sll	(0x05, sp)
      008AE3 4A               [ 1]  396 	dec	a
      008AE4 26 FB            [ 1]  397 	jrne	00152$
      008AE6                        398 00153$:
                           0001A1   399 	C$stm8s_uart2.c$224$1_0$360 ==.
                                    400 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 224: if (NewState != DISABLE)
      008AE6 0D 0A            [ 1]  401 	tnz	(0x0a, sp)
      008AE8 27 38            [ 1]  402 	jreq	00120$
                           0001A5   403 	C$stm8s_uart2.c$227$2_0$361 ==.
                                    404 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 227: if (uartreg == 0x01)
      008AEA 9F               [ 1]  405 	ld	a, xl
      008AEB 4A               [ 1]  406 	dec	a
      008AEC 26 0B            [ 1]  407 	jrne	00108$
                           0001A9   408 	C$stm8s_uart2.c$229$3_0$362 ==.
                                    409 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      008AEE C6 52 44         [ 1]  410 	ld	a, 0x5244
      008AF1 1A 05            [ 1]  411 	or	a, (0x05, sp)
      008AF3 C7 52 44         [ 1]  412 	ld	0x5244, a
      008AF6 CC 8B 6A         [ 2]  413 	jp	00122$
      008AF9                        414 00108$:
                           0001B4   415 	C$stm8s_uart2.c$231$2_0$361 ==.
                                    416 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008AF9 9F               [ 1]  417 	ld	a, xl
      008AFA A1 02            [ 1]  418 	cp	a, #0x02
      008AFC 26 0B            [ 1]  419 	jrne	00105$
                           0001B9   420 	C$stm8s_uart2.c$233$3_0$363 ==.
                                    421 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      008AFE C6 52 45         [ 1]  422 	ld	a, 0x5245
      008B01 1A 05            [ 1]  423 	or	a, (0x05, sp)
      008B03 C7 52 45         [ 1]  424 	ld	0x5245, a
      008B06 CC 8B 6A         [ 2]  425 	jp	00122$
      008B09                        426 00105$:
                           0001C4   427 	C$stm8s_uart2.c$235$2_0$361 ==.
                                    428 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008B09 9F               [ 1]  429 	ld	a, xl
      008B0A A1 03            [ 1]  430 	cp	a, #0x03
      008B0C 26 0A            [ 1]  431 	jrne	00102$
                           0001C9   432 	C$stm8s_uart2.c$237$3_0$364 ==.
                                    433 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      008B0E C6 52 47         [ 1]  434 	ld	a, 0x5247
      008B11 1A 05            [ 1]  435 	or	a, (0x05, sp)
      008B13 C7 52 47         [ 1]  436 	ld	0x5247, a
      008B16 20 52            [ 2]  437 	jra	00122$
      008B18                        438 00102$:
                           0001D3   439 	C$stm8s_uart2.c$241$3_0$365 ==.
                                    440 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      008B18 C6 52 49         [ 1]  441 	ld	a, 0x5249
      008B1B 1A 05            [ 1]  442 	or	a, (0x05, sp)
      008B1D C7 52 49         [ 1]  443 	ld	0x5249, a
      008B20 20 48            [ 2]  444 	jra	00122$
      008B22                        445 00120$:
                           0001DD   446 	C$stm8s_uart2.c$247$2_0$366 ==.
                                    447 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 247: if (uartreg == 0x01)
      008B22 9F               [ 1]  448 	ld	a, xl
      008B23 4A               [ 1]  449 	dec	a
      008B24 26 0F            [ 1]  450 	jrne	00117$
                           0001E1   451 	C$stm8s_uart2.c$249$3_0$367 ==.
                                    452 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      008B26 C6 52 44         [ 1]  453 	ld	a, 0x5244
      008B29 6B 04            [ 1]  454 	ld	(0x04, sp), a
      008B2B 7B 05            [ 1]  455 	ld	a, (0x05, sp)
      008B2D 43               [ 1]  456 	cpl	a
      008B2E 14 04            [ 1]  457 	and	a, (0x04, sp)
      008B30 C7 52 44         [ 1]  458 	ld	0x5244, a
      008B33 20 35            [ 2]  459 	jra	00122$
      008B35                        460 00117$:
                           0001F0   461 	C$stm8s_uart2.c$251$2_0$366 ==.
                                    462 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 251: else if (uartreg == 0x02)
      008B35 9F               [ 1]  463 	ld	a, xl
      008B36 A1 02            [ 1]  464 	cp	a, #0x02
      008B38 26 0F            [ 1]  465 	jrne	00114$
                           0001F5   466 	C$stm8s_uart2.c$253$3_0$368 ==.
                                    467 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      008B3A C6 52 45         [ 1]  468 	ld	a, 0x5245
      008B3D 6B 03            [ 1]  469 	ld	(0x03, sp), a
      008B3F 7B 05            [ 1]  470 	ld	a, (0x05, sp)
      008B41 43               [ 1]  471 	cpl	a
      008B42 14 03            [ 1]  472 	and	a, (0x03, sp)
      008B44 C7 52 45         [ 1]  473 	ld	0x5245, a
      008B47 20 21            [ 2]  474 	jra	00122$
      008B49                        475 00114$:
                           000204   476 	C$stm8s_uart2.c$255$2_0$366 ==.
                                    477 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 255: else if (uartreg == 0x03)
      008B49 9F               [ 1]  478 	ld	a, xl
      008B4A A1 03            [ 1]  479 	cp	a, #0x03
      008B4C 26 0F            [ 1]  480 	jrne	00111$
                           000209   481 	C$stm8s_uart2.c$257$3_0$369 ==.
                                    482 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      008B4E C6 52 47         [ 1]  483 	ld	a, 0x5247
      008B51 6B 01            [ 1]  484 	ld	(0x01, sp), a
      008B53 7B 05            [ 1]  485 	ld	a, (0x05, sp)
      008B55 43               [ 1]  486 	cpl	a
      008B56 14 01            [ 1]  487 	and	a, (0x01, sp)
      008B58 C7 52 47         [ 1]  488 	ld	0x5247, a
      008B5B 20 0D            [ 2]  489 	jra	00122$
      008B5D                        490 00111$:
                           000218   491 	C$stm8s_uart2.c$261$3_0$370 ==.
                                    492 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      008B5D C6 52 49         [ 1]  493 	ld	a, 0x5249
      008B60 6B 02            [ 1]  494 	ld	(0x02, sp), a
      008B62 7B 05            [ 1]  495 	ld	a, (0x05, sp)
      008B64 43               [ 1]  496 	cpl	a
      008B65 14 02            [ 1]  497 	and	a, (0x02, sp)
      008B67 C7 52 49         [ 1]  498 	ld	0x5249, a
      008B6A                        499 00122$:
                           000225   500 	C$stm8s_uart2.c$264$1_0$360 ==.
                                    501 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 264: }
      008B6A 5B 05            [ 2]  502 	addw	sp, #5
                           000227   503 	C$stm8s_uart2.c$264$1_0$360 ==.
                           000227   504 	XG$UART2_ITConfig$0$0 ==.
      008B6C 81               [ 4]  505 	ret
                           000228   506 	G$UART2_IrDAConfig$0$0 ==.
                           000228   507 	C$stm8s_uart2.c$272$1_0$372 ==.
                                    508 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    509 ;	-----------------------------------------
                                    510 ;	 function UART2_IrDAConfig
                                    511 ;	-----------------------------------------
      008B6D                        512 _UART2_IrDAConfig:
                           000228   513 	C$stm8s_uart2.c$276$1_0$372 ==.
                                    514 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      008B6D 0D 03            [ 1]  515 	tnz	(0x03, sp)
      008B6F 27 06            [ 1]  516 	jreq	00102$
                           00022C   517 	C$stm8s_uart2.c$278$2_0$373 ==.
                                    518 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      008B71 72 14 52 48      [ 1]  519 	bset	21064, #2
      008B75 20 04            [ 2]  520 	jra	00104$
      008B77                        521 00102$:
                           000232   522 	C$stm8s_uart2.c$282$2_0$374 ==.
                                    523 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      008B77 72 15 52 48      [ 1]  524 	bres	21064, #2
      008B7B                        525 00104$:
                           000236   526 	C$stm8s_uart2.c$284$1_0$372 ==.
                                    527 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 284: }
                           000236   528 	C$stm8s_uart2.c$284$1_0$372 ==.
                           000236   529 	XG$UART2_IrDAConfig$0$0 ==.
      008B7B 81               [ 4]  530 	ret
                           000237   531 	G$UART2_IrDACmd$0$0 ==.
                           000237   532 	C$stm8s_uart2.c$292$1_0$376 ==.
                                    533 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    534 ;	-----------------------------------------
                                    535 ;	 function UART2_IrDACmd
                                    536 ;	-----------------------------------------
      008B7C                        537 _UART2_IrDACmd:
                           000237   538 	C$stm8s_uart2.c$297$1_0$376 ==.
                                    539 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 297: if (NewState != DISABLE)
      008B7C 0D 03            [ 1]  540 	tnz	(0x03, sp)
      008B7E 27 06            [ 1]  541 	jreq	00102$
                           00023B   542 	C$stm8s_uart2.c$300$2_0$377 ==.
                                    543 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      008B80 72 12 52 48      [ 1]  544 	bset	21064, #1
      008B84 20 04            [ 2]  545 	jra	00104$
      008B86                        546 00102$:
                           000241   547 	C$stm8s_uart2.c$305$2_0$378 ==.
                                    548 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      008B86 72 13 52 48      [ 1]  549 	bres	21064, #1
      008B8A                        550 00104$:
                           000245   551 	C$stm8s_uart2.c$307$1_0$376 ==.
                                    552 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 307: }
                           000245   553 	C$stm8s_uart2.c$307$1_0$376 ==.
                           000245   554 	XG$UART2_IrDACmd$0$0 ==.
      008B8A 81               [ 4]  555 	ret
                           000246   556 	G$UART2_LINBreakDetectionConfig$0$0 ==.
                           000246   557 	C$stm8s_uart2.c$316$1_0$380 ==.
                                    558 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    559 ;	-----------------------------------------
                                    560 ;	 function UART2_LINBreakDetectionConfig
                                    561 ;	-----------------------------------------
      008B8B                        562 _UART2_LINBreakDetectionConfig:
                           000246   563 	C$stm8s_uart2.c$321$1_0$380 ==.
                                    564 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      008B8B 0D 03            [ 1]  565 	tnz	(0x03, sp)
      008B8D 27 06            [ 1]  566 	jreq	00102$
                           00024A   567 	C$stm8s_uart2.c$323$2_0$381 ==.
                                    568 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      008B8F 72 1A 52 47      [ 1]  569 	bset	21063, #5
      008B93 20 04            [ 2]  570 	jra	00104$
      008B95                        571 00102$:
                           000250   572 	C$stm8s_uart2.c$327$2_0$382 ==.
                                    573 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      008B95 72 1B 52 47      [ 1]  574 	bres	21063, #5
      008B99                        575 00104$:
                           000254   576 	C$stm8s_uart2.c$329$1_0$380 ==.
                                    577 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 329: }
                           000254   578 	C$stm8s_uart2.c$329$1_0$380 ==.
                           000254   579 	XG$UART2_LINBreakDetectionConfig$0$0 ==.
      008B99 81               [ 4]  580 	ret
                           000255   581 	G$UART2_LINConfig$0$0 ==.
                           000255   582 	C$stm8s_uart2.c$341$1_0$384 ==.
                                    583 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    584 ;	-----------------------------------------
                                    585 ;	 function UART2_LINConfig
                                    586 ;	-----------------------------------------
      008B9A                        587 _UART2_LINConfig:
                           000255   588 	C$stm8s_uart2.c$350$1_0$384 ==.
                                    589 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      008B9A 0D 03            [ 1]  590 	tnz	(0x03, sp)
      008B9C 27 06            [ 1]  591 	jreq	00102$
                           000259   592 	C$stm8s_uart2.c$352$2_0$385 ==.
                                    593 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008B9E 72 1A 52 49      [ 1]  594 	bset	21065, #5
      008BA2 20 04            [ 2]  595 	jra	00103$
      008BA4                        596 00102$:
                           00025F   597 	C$stm8s_uart2.c$356$2_0$386 ==.
                                    598 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      008BA4 72 1B 52 49      [ 1]  599 	bres	21065, #5
      008BA8                        600 00103$:
                           000263   601 	C$stm8s_uart2.c$359$1_0$384 ==.
                                    602 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      008BA8 0D 04            [ 1]  603 	tnz	(0x04, sp)
      008BAA 27 06            [ 1]  604 	jreq	00105$
                           000267   605 	C$stm8s_uart2.c$361$2_0$387 ==.
                                    606 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      008BAC 72 18 52 49      [ 1]  607 	bset	21065, #4
      008BB0 20 04            [ 2]  608 	jra	00106$
      008BB2                        609 00105$:
                           00026D   610 	C$stm8s_uart2.c$365$2_0$388 ==.
                                    611 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      008BB2 72 19 52 49      [ 1]  612 	bres	21065, #4
      008BB6                        613 00106$:
                           000271   614 	C$stm8s_uart2.c$368$1_0$384 ==.
                                    615 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      008BB6 0D 05            [ 1]  616 	tnz	(0x05, sp)
      008BB8 27 06            [ 1]  617 	jreq	00108$
                           000275   618 	C$stm8s_uart2.c$370$2_0$389 ==.
                                    619 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      008BBA 72 1E 52 49      [ 1]  620 	bset	21065, #7
      008BBE 20 04            [ 2]  621 	jra	00110$
      008BC0                        622 00108$:
                           00027B   623 	C$stm8s_uart2.c$374$2_0$390 ==.
                                    624 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      008BC0 72 1F 52 49      [ 1]  625 	bres	21065, #7
      008BC4                        626 00110$:
                           00027F   627 	C$stm8s_uart2.c$376$1_0$384 ==.
                                    628 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 376: }
                           00027F   629 	C$stm8s_uart2.c$376$1_0$384 ==.
                           00027F   630 	XG$UART2_LINConfig$0$0 ==.
      008BC4 81               [ 4]  631 	ret
                           000280   632 	G$UART2_LINCmd$0$0 ==.
                           000280   633 	C$stm8s_uart2.c$384$1_0$392 ==.
                                    634 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    635 ;	-----------------------------------------
                                    636 ;	 function UART2_LINCmd
                                    637 ;	-----------------------------------------
      008BC5                        638 _UART2_LINCmd:
                           000280   639 	C$stm8s_uart2.c$388$1_0$392 ==.
                                    640 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 388: if (NewState != DISABLE)
      008BC5 0D 03            [ 1]  641 	tnz	(0x03, sp)
      008BC7 27 06            [ 1]  642 	jreq	00102$
                           000284   643 	C$stm8s_uart2.c$391$2_0$393 ==.
                                    644 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      008BC9 72 1C 52 46      [ 1]  645 	bset	21062, #6
      008BCD 20 04            [ 2]  646 	jra	00104$
      008BCF                        647 00102$:
                           00028A   648 	C$stm8s_uart2.c$396$2_0$394 ==.
                                    649 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      008BCF 72 1D 52 46      [ 1]  650 	bres	21062, #6
      008BD3                        651 00104$:
                           00028E   652 	C$stm8s_uart2.c$398$1_0$392 ==.
                                    653 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 398: }
                           00028E   654 	C$stm8s_uart2.c$398$1_0$392 ==.
                           00028E   655 	XG$UART2_LINCmd$0$0 ==.
      008BD3 81               [ 4]  656 	ret
                           00028F   657 	G$UART2_SmartCardCmd$0$0 ==.
                           00028F   658 	C$stm8s_uart2.c$406$1_0$396 ==.
                                    659 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    660 ;	-----------------------------------------
                                    661 ;	 function UART2_SmartCardCmd
                                    662 ;	-----------------------------------------
      008BD4                        663 _UART2_SmartCardCmd:
                           00028F   664 	C$stm8s_uart2.c$411$1_0$396 ==.
                                    665 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 411: if (NewState != DISABLE)
      008BD4 0D 03            [ 1]  666 	tnz	(0x03, sp)
      008BD6 27 06            [ 1]  667 	jreq	00102$
                           000293   668 	C$stm8s_uart2.c$414$2_0$397 ==.
                                    669 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      008BD8 72 1A 52 48      [ 1]  670 	bset	21064, #5
      008BDC 20 04            [ 2]  671 	jra	00104$
      008BDE                        672 00102$:
                           000299   673 	C$stm8s_uart2.c$419$2_0$398 ==.
                                    674 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      008BDE 72 1B 52 48      [ 1]  675 	bres	21064, #5
      008BE2                        676 00104$:
                           00029D   677 	C$stm8s_uart2.c$421$1_0$396 ==.
                                    678 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 421: }
                           00029D   679 	C$stm8s_uart2.c$421$1_0$396 ==.
                           00029D   680 	XG$UART2_SmartCardCmd$0$0 ==.
      008BE2 81               [ 4]  681 	ret
                           00029E   682 	G$UART2_SmartCardNACKCmd$0$0 ==.
                           00029E   683 	C$stm8s_uart2.c$429$1_0$400 ==.
                                    684 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    685 ;	-----------------------------------------
                                    686 ;	 function UART2_SmartCardNACKCmd
                                    687 ;	-----------------------------------------
      008BE3                        688 _UART2_SmartCardNACKCmd:
                           00029E   689 	C$stm8s_uart2.c$434$1_0$400 ==.
                                    690 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 434: if (NewState != DISABLE)
      008BE3 0D 03            [ 1]  691 	tnz	(0x03, sp)
      008BE5 27 06            [ 1]  692 	jreq	00102$
                           0002A2   693 	C$stm8s_uart2.c$437$2_0$401 ==.
                                    694 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      008BE7 72 18 52 48      [ 1]  695 	bset	21064, #4
      008BEB 20 04            [ 2]  696 	jra	00104$
      008BED                        697 00102$:
                           0002A8   698 	C$stm8s_uart2.c$442$2_0$402 ==.
                                    699 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      008BED 72 19 52 48      [ 1]  700 	bres	21064, #4
      008BF1                        701 00104$:
                           0002AC   702 	C$stm8s_uart2.c$444$1_0$400 ==.
                                    703 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 444: }
                           0002AC   704 	C$stm8s_uart2.c$444$1_0$400 ==.
                           0002AC   705 	XG$UART2_SmartCardNACKCmd$0$0 ==.
      008BF1 81               [ 4]  706 	ret
                           0002AD   707 	G$UART2_WakeUpConfig$0$0 ==.
                           0002AD   708 	C$stm8s_uart2.c$452$1_0$404 ==.
                                    709 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    710 ;	-----------------------------------------
                                    711 ;	 function UART2_WakeUpConfig
                                    712 ;	-----------------------------------------
      008BF2                        713 _UART2_WakeUpConfig:
                           0002AD   714 	C$stm8s_uart2.c$456$1_0$404 ==.
                                    715 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      008BF2 72 17 52 44      [ 1]  716 	bres	21060, #3
                           0002B1   717 	C$stm8s_uart2.c$457$1_0$404 ==.
                                    718 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      008BF6 C6 52 44         [ 1]  719 	ld	a, 0x5244
      008BF9 1A 03            [ 1]  720 	or	a, (0x03, sp)
      008BFB C7 52 44         [ 1]  721 	ld	0x5244, a
                           0002B9   722 	C$stm8s_uart2.c$458$1_0$404 ==.
                                    723 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 458: }
                           0002B9   724 	C$stm8s_uart2.c$458$1_0$404 ==.
                           0002B9   725 	XG$UART2_WakeUpConfig$0$0 ==.
      008BFE 81               [ 4]  726 	ret
                           0002BA   727 	G$UART2_ReceiverWakeUpCmd$0$0 ==.
                           0002BA   728 	C$stm8s_uart2.c$466$1_0$406 ==.
                                    729 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    730 ;	-----------------------------------------
                                    731 ;	 function UART2_ReceiverWakeUpCmd
                                    732 ;	-----------------------------------------
      008BFF                        733 _UART2_ReceiverWakeUpCmd:
                           0002BA   734 	C$stm8s_uart2.c$470$1_0$406 ==.
                                    735 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 470: if (NewState != DISABLE)
      008BFF 0D 03            [ 1]  736 	tnz	(0x03, sp)
      008C01 27 06            [ 1]  737 	jreq	00102$
                           0002BE   738 	C$stm8s_uart2.c$473$2_0$407 ==.
                                    739 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      008C03 72 12 52 45      [ 1]  740 	bset	21061, #1
      008C07 20 04            [ 2]  741 	jra	00104$
      008C09                        742 00102$:
                           0002C4   743 	C$stm8s_uart2.c$478$2_0$408 ==.
                                    744 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      008C09 72 13 52 45      [ 1]  745 	bres	21061, #1
      008C0D                        746 00104$:
                           0002C8   747 	C$stm8s_uart2.c$480$1_0$406 ==.
                                    748 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 480: }
                           0002C8   749 	C$stm8s_uart2.c$480$1_0$406 ==.
                           0002C8   750 	XG$UART2_ReceiverWakeUpCmd$0$0 ==.
      008C0D 81               [ 4]  751 	ret
                           0002C9   752 	G$UART2_ReceiveData8$0$0 ==.
                           0002C9   753 	C$stm8s_uart2.c$487$1_0$410 ==.
                                    754 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                    755 ;	-----------------------------------------
                                    756 ;	 function UART2_ReceiveData8
                                    757 ;	-----------------------------------------
      008C0E                        758 _UART2_ReceiveData8:
                           0002C9   759 	C$stm8s_uart2.c$489$1_0$410 ==.
                                    760 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      008C0E C6 52 41         [ 1]  761 	ld	a, 0x5241
                           0002CC   762 	C$stm8s_uart2.c$490$1_0$410 ==.
                                    763 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 490: }
                           0002CC   764 	C$stm8s_uart2.c$490$1_0$410 ==.
                           0002CC   765 	XG$UART2_ReceiveData8$0$0 ==.
      008C11 81               [ 4]  766 	ret
                           0002CD   767 	G$UART2_ReceiveData9$0$0 ==.
                           0002CD   768 	C$stm8s_uart2.c$497$1_0$412 ==.
                                    769 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                    770 ;	-----------------------------------------
                                    771 ;	 function UART2_ReceiveData9
                                    772 ;	-----------------------------------------
      008C12                        773 _UART2_ReceiveData9:
      008C12 52 02            [ 2]  774 	sub	sp, #2
                           0002CF   775 	C$stm8s_uart2.c$501$1_0$412 ==.
                                    776 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      008C14 C6 52 44         [ 1]  777 	ld	a, 0x5244
      008C17 A4 80            [ 1]  778 	and	a, #0x80
      008C19 97               [ 1]  779 	ld	xl, a
      008C1A 4F               [ 1]  780 	clr	a
      008C1B 95               [ 1]  781 	ld	xh, a
      008C1C 58               [ 2]  782 	sllw	x
                           0002D8   783 	C$stm8s_uart2.c$503$1_0$412 ==.
                                    784 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      008C1D C6 52 41         [ 1]  785 	ld	a, 0x5241
      008C20 6B 02            [ 1]  786 	ld	(0x02, sp), a
      008C22 0F 01            [ 1]  787 	clr	(0x01, sp)
      008C24 9F               [ 1]  788 	ld	a, xl
      008C25 1A 02            [ 1]  789 	or	a, (0x02, sp)
      008C27 02               [ 1]  790 	rlwa	x
      008C28 1A 01            [ 1]  791 	or	a, (0x01, sp)
      008C2A A4 01            [ 1]  792 	and	a, #0x01
      008C2C 95               [ 1]  793 	ld	xh, a
                           0002E8   794 	C$stm8s_uart2.c$504$1_0$412 ==.
                                    795 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 504: }
      008C2D 5B 02            [ 2]  796 	addw	sp, #2
                           0002EA   797 	C$stm8s_uart2.c$504$1_0$412 ==.
                           0002EA   798 	XG$UART2_ReceiveData9$0$0 ==.
      008C2F 81               [ 4]  799 	ret
                           0002EB   800 	G$UART2_SendData8$0$0 ==.
                           0002EB   801 	C$stm8s_uart2.c$511$1_0$414 ==.
                                    802 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                    803 ;	-----------------------------------------
                                    804 ;	 function UART2_SendData8
                                    805 ;	-----------------------------------------
      008C30                        806 _UART2_SendData8:
                           0002EB   807 	C$stm8s_uart2.c$514$1_0$414 ==.
                                    808 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 514: UART2->DR = Data;
      008C30 AE 52 41         [ 2]  809 	ldw	x, #0x5241
      008C33 7B 03            [ 1]  810 	ld	a, (0x03, sp)
      008C35 F7               [ 1]  811 	ld	(x), a
                           0002F1   812 	C$stm8s_uart2.c$515$1_0$414 ==.
                                    813 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 515: }
                           0002F1   814 	C$stm8s_uart2.c$515$1_0$414 ==.
                           0002F1   815 	XG$UART2_SendData8$0$0 ==.
      008C36 81               [ 4]  816 	ret
                           0002F2   817 	G$UART2_SendData9$0$0 ==.
                           0002F2   818 	C$stm8s_uart2.c$522$1_0$416 ==.
                                    819 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                    820 ;	-----------------------------------------
                                    821 ;	 function UART2_SendData9
                                    822 ;	-----------------------------------------
      008C37                        823 _UART2_SendData9:
      008C37 88               [ 1]  824 	push	a
                           0002F3   825 	C$stm8s_uart2.c$525$1_0$416 ==.
                                    826 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      008C38 72 1D 52 44      [ 1]  827 	bres	21060, #6
                           0002F7   828 	C$stm8s_uart2.c$528$1_0$416 ==.
                                    829 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      008C3C C6 52 44         [ 1]  830 	ld	a, 0x5244
      008C3F 6B 01            [ 1]  831 	ld	(0x01, sp), a
      008C41 1E 04            [ 2]  832 	ldw	x, (0x04, sp)
      008C43 54               [ 2]  833 	srlw	x
      008C44 54               [ 2]  834 	srlw	x
      008C45 9F               [ 1]  835 	ld	a, xl
      008C46 A4 40            [ 1]  836 	and	a, #0x40
      008C48 1A 01            [ 1]  837 	or	a, (0x01, sp)
      008C4A C7 52 44         [ 1]  838 	ld	0x5244, a
                           000308   839 	C$stm8s_uart2.c$531$1_0$416 ==.
                                    840 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      008C4D 7B 05            [ 1]  841 	ld	a, (0x05, sp)
      008C4F C7 52 41         [ 1]  842 	ld	0x5241, a
                           00030D   843 	C$stm8s_uart2.c$532$1_0$416 ==.
                                    844 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 532: }
      008C52 84               [ 1]  845 	pop	a
                           00030E   846 	C$stm8s_uart2.c$532$1_0$416 ==.
                           00030E   847 	XG$UART2_SendData9$0$0 ==.
      008C53 81               [ 4]  848 	ret
                           00030F   849 	G$UART2_SendBreak$0$0 ==.
                           00030F   850 	C$stm8s_uart2.c$539$1_0$418 ==.
                                    851 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                    852 ;	-----------------------------------------
                                    853 ;	 function UART2_SendBreak
                                    854 ;	-----------------------------------------
      008C54                        855 _UART2_SendBreak:
                           00030F   856 	C$stm8s_uart2.c$541$1_0$418 ==.
                                    857 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      008C54 72 10 52 45      [ 1]  858 	bset	21061, #0
                           000313   859 	C$stm8s_uart2.c$542$1_0$418 ==.
                                    860 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 542: }
                           000313   861 	C$stm8s_uart2.c$542$1_0$418 ==.
                           000313   862 	XG$UART2_SendBreak$0$0 ==.
      008C58 81               [ 4]  863 	ret
                           000314   864 	G$UART2_SetAddress$0$0 ==.
                           000314   865 	C$stm8s_uart2.c$549$1_0$420 ==.
                                    866 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                    867 ;	-----------------------------------------
                                    868 ;	 function UART2_SetAddress
                                    869 ;	-----------------------------------------
      008C59                        870 _UART2_SetAddress:
                           000314   871 	C$stm8s_uart2.c$555$1_0$420 ==.
                                    872 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      008C59 C6 52 47         [ 1]  873 	ld	a, 0x5247
      008C5C A4 F0            [ 1]  874 	and	a, #0xf0
      008C5E C7 52 47         [ 1]  875 	ld	0x5247, a
                           00031C   876 	C$stm8s_uart2.c$557$1_0$420 ==.
                                    877 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      008C61 C6 52 47         [ 1]  878 	ld	a, 0x5247
      008C64 1A 03            [ 1]  879 	or	a, (0x03, sp)
      008C66 C7 52 47         [ 1]  880 	ld	0x5247, a
                           000324   881 	C$stm8s_uart2.c$558$1_0$420 ==.
                                    882 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 558: }
                           000324   883 	C$stm8s_uart2.c$558$1_0$420 ==.
                           000324   884 	XG$UART2_SetAddress$0$0 ==.
      008C69 81               [ 4]  885 	ret
                           000325   886 	G$UART2_SetGuardTime$0$0 ==.
                           000325   887 	C$stm8s_uart2.c$566$1_0$422 ==.
                                    888 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                    889 ;	-----------------------------------------
                                    890 ;	 function UART2_SetGuardTime
                                    891 ;	-----------------------------------------
      008C6A                        892 _UART2_SetGuardTime:
                           000325   893 	C$stm8s_uart2.c$569$1_0$422 ==.
                                    894 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      008C6A AE 52 4A         [ 2]  895 	ldw	x, #0x524a
      008C6D 7B 03            [ 1]  896 	ld	a, (0x03, sp)
      008C6F F7               [ 1]  897 	ld	(x), a
                           00032B   898 	C$stm8s_uart2.c$570$1_0$422 ==.
                                    899 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 570: }
                           00032B   900 	C$stm8s_uart2.c$570$1_0$422 ==.
                           00032B   901 	XG$UART2_SetGuardTime$0$0 ==.
      008C70 81               [ 4]  902 	ret
                           00032C   903 	G$UART2_SetPrescaler$0$0 ==.
                           00032C   904 	C$stm8s_uart2.c$594$1_0$424 ==.
                                    905 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                    906 ;	-----------------------------------------
                                    907 ;	 function UART2_SetPrescaler
                                    908 ;	-----------------------------------------
      008C71                        909 _UART2_SetPrescaler:
                           00032C   910 	C$stm8s_uart2.c$597$1_0$424 ==.
                                    911 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      008C71 AE 52 4B         [ 2]  912 	ldw	x, #0x524b
      008C74 7B 03            [ 1]  913 	ld	a, (0x03, sp)
      008C76 F7               [ 1]  914 	ld	(x), a
                           000332   915 	C$stm8s_uart2.c$598$1_0$424 ==.
                                    916 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 598: }
                           000332   917 	C$stm8s_uart2.c$598$1_0$424 ==.
                           000332   918 	XG$UART2_SetPrescaler$0$0 ==.
      008C77 81               [ 4]  919 	ret
                           000333   920 	G$UART2_GetFlagStatus$0$0 ==.
                           000333   921 	C$stm8s_uart2.c$606$1_0$426 ==.
                                    922 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                    923 ;	-----------------------------------------
                                    924 ;	 function UART2_GetFlagStatus
                                    925 ;	-----------------------------------------
      008C78                        926 _UART2_GetFlagStatus:
      008C78 52 04            [ 2]  927 	sub	sp, #4
                           000335   928 	C$stm8s_uart2.c$614$1_0$426 ==.
                                    929 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      008C7A 1E 07            [ 2]  930 	ldw	x, (0x07, sp)
      008C7C A3 02 10         [ 2]  931 	cpw	x, #0x0210
      008C7F 26 14            [ 1]  932 	jrne	00121$
                           00033C   933 	C$stm8s_uart2.c$616$2_0$427 ==.
                                    934 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008C81 C6 52 47         [ 1]  935 	ld	a, 0x5247
      008C84 6B 01            [ 1]  936 	ld	(0x01, sp), a
      008C86 7B 08            [ 1]  937 	ld	a, (0x08, sp)
      008C88 14 01            [ 1]  938 	and	a, (0x01, sp)
      008C8A 27 05            [ 1]  939 	jreq	00102$
                           000347   940 	C$stm8s_uart2.c$619$3_0$428 ==.
                                    941 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 619: status = SET;
      008C8C A6 01            [ 1]  942 	ld	a, #0x01
      008C8E CC 8C DE         [ 2]  943 	jp	00122$
      008C91                        944 00102$:
                           00034C   945 	C$stm8s_uart2.c$624$3_0$429 ==.
                                    946 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 624: status = RESET;
      008C91 4F               [ 1]  947 	clr	a
      008C92 CC 8C DE         [ 2]  948 	jp	00122$
      008C95                        949 00121$:
                           000350   950 	C$stm8s_uart2.c$627$1_0$426 ==.
                                    951 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      008C95 1E 07            [ 2]  952 	ldw	x, (0x07, sp)
      008C97 A3 01 01         [ 2]  953 	cpw	x, #0x0101
      008C9A 26 12            [ 1]  954 	jrne	00118$
                           000357   955 	C$stm8s_uart2.c$629$2_0$430 ==.
                                    956 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008C9C C6 52 45         [ 1]  957 	ld	a, 0x5245
      008C9F 6B 02            [ 1]  958 	ld	(0x02, sp), a
      008CA1 7B 08            [ 1]  959 	ld	a, (0x08, sp)
      008CA3 14 02            [ 1]  960 	and	a, (0x02, sp)
      008CA5 27 04            [ 1]  961 	jreq	00105$
                           000362   962 	C$stm8s_uart2.c$632$3_0$431 ==.
                                    963 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 632: status = SET;
      008CA7 A6 01            [ 1]  964 	ld	a, #0x01
      008CA9 20 33            [ 2]  965 	jra	00122$
      008CAB                        966 00105$:
                           000366   967 	C$stm8s_uart2.c$637$3_0$432 ==.
                                    968 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 637: status = RESET;
      008CAB 4F               [ 1]  969 	clr	a
      008CAC 20 30            [ 2]  970 	jra	00122$
      008CAE                        971 00118$:
                           000369   972 	C$stm8s_uart2.c$640$1_0$426 ==.
                                    973 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      008CAE 1E 07            [ 2]  974 	ldw	x, (0x07, sp)
      008CB0 A3 03 02         [ 2]  975 	cpw	x, #0x0302
      008CB3 27 07            [ 1]  976 	jreq	00113$
      008CB5 1E 07            [ 2]  977 	ldw	x, (0x07, sp)
      008CB7 A3 03 01         [ 2]  978 	cpw	x, #0x0301
      008CBA 26 12            [ 1]  979 	jrne	00114$
      008CBC                        980 00113$:
                           000377   981 	C$stm8s_uart2.c$642$2_0$433 ==.
                                    982 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008CBC C6 52 49         [ 1]  983 	ld	a, 0x5249
      008CBF 6B 04            [ 1]  984 	ld	(0x04, sp), a
      008CC1 7B 08            [ 1]  985 	ld	a, (0x08, sp)
      008CC3 14 04            [ 1]  986 	and	a, (0x04, sp)
      008CC5 27 04            [ 1]  987 	jreq	00108$
                           000382   988 	C$stm8s_uart2.c$645$3_0$434 ==.
                                    989 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 645: status = SET;
      008CC7 A6 01            [ 1]  990 	ld	a, #0x01
      008CC9 20 13            [ 2]  991 	jra	00122$
      008CCB                        992 00108$:
                           000386   993 	C$stm8s_uart2.c$650$3_0$435 ==.
                                    994 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 650: status = RESET;
      008CCB 4F               [ 1]  995 	clr	a
      008CCC 20 10            [ 2]  996 	jra	00122$
      008CCE                        997 00114$:
                           000389   998 	C$stm8s_uart2.c$655$2_0$436 ==.
                                    999 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008CCE C6 52 40         [ 1] 1000 	ld	a, 0x5240
      008CD1 6B 03            [ 1] 1001 	ld	(0x03, sp), a
      008CD3 7B 08            [ 1] 1002 	ld	a, (0x08, sp)
      008CD5 14 03            [ 1] 1003 	and	a, (0x03, sp)
      008CD7 27 04            [ 1] 1004 	jreq	00111$
                           000394  1005 	C$stm8s_uart2.c$658$3_0$437 ==.
                                   1006 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 658: status = SET;
      008CD9 A6 01            [ 1] 1007 	ld	a, #0x01
      008CDB 20 01            [ 2] 1008 	jra	00122$
      008CDD                       1009 00111$:
                           000398  1010 	C$stm8s_uart2.c$663$3_0$438 ==.
                                   1011 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 663: status = RESET;
      008CDD 4F               [ 1] 1012 	clr	a
      008CDE                       1013 00122$:
                           000399  1014 	C$stm8s_uart2.c$668$1_0$426 ==.
                                   1015 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 668: return  status;
                           000399  1016 	C$stm8s_uart2.c$669$1_0$426 ==.
                                   1017 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 669: }
      008CDE 5B 04            [ 2] 1018 	addw	sp, #4
                           00039B  1019 	C$stm8s_uart2.c$669$1_0$426 ==.
                           00039B  1020 	XG$UART2_GetFlagStatus$0$0 ==.
      008CE0 81               [ 4] 1021 	ret
                           00039C  1022 	G$UART2_ClearFlag$0$0 ==.
                           00039C  1023 	C$stm8s_uart2.c$699$1_0$440 ==.
                                   1024 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function UART2_ClearFlag
                                   1027 ;	-----------------------------------------
      008CE1                       1028 _UART2_ClearFlag:
                           00039C  1029 	C$stm8s_uart2.c$704$1_0$440 ==.
                                   1030 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      008CE1 1E 03            [ 2] 1031 	ldw	x, (0x03, sp)
      008CE3 A3 00 20         [ 2] 1032 	cpw	x, #0x0020
      008CE6 26 06            [ 1] 1033 	jrne	00108$
                           0003A3  1034 	C$stm8s_uart2.c$706$2_0$441 ==.
                                   1035 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      008CE8 35 DF 52 40      [ 1] 1036 	mov	0x5240+0, #0xdf
      008CEC 20 1E            [ 2] 1037 	jra	00110$
      008CEE                       1038 00108$:
                           0003A9  1039 	C$stm8s_uart2.c$709$1_0$440 ==.
                                   1040 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      008CEE 1E 03            [ 2] 1041 	ldw	x, (0x03, sp)
      008CF0 A3 02 10         [ 2] 1042 	cpw	x, #0x0210
      008CF3 26 06            [ 1] 1043 	jrne	00105$
                           0003B0  1044 	C$stm8s_uart2.c$711$2_0$442 ==.
                                   1045 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      008CF5 72 19 52 47      [ 1] 1046 	bres	21063, #4
      008CF9 20 11            [ 2] 1047 	jra	00110$
      008CFB                       1048 00105$:
                           0003B6  1049 	C$stm8s_uart2.c$714$1_0$440 ==.
                                   1050 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      008CFB 1E 03            [ 2] 1051 	ldw	x, (0x03, sp)
      008CFD A3 03 02         [ 2] 1052 	cpw	x, #0x0302
      008D00 26 06            [ 1] 1053 	jrne	00102$
                           0003BD  1054 	C$stm8s_uart2.c$716$2_0$443 ==.
                                   1055 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008D02 72 13 52 49      [ 1] 1056 	bres	21065, #1
      008D06 20 04            [ 2] 1057 	jra	00110$
      008D08                       1058 00102$:
                           0003C3  1059 	C$stm8s_uart2.c$721$2_0$444 ==.
                                   1060 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      008D08 72 11 52 49      [ 1] 1061 	bres	21065, #0
      008D0C                       1062 00110$:
                           0003C7  1063 	C$stm8s_uart2.c$723$1_0$440 ==.
                                   1064 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 723: }
                           0003C7  1065 	C$stm8s_uart2.c$723$1_0$440 ==.
                           0003C7  1066 	XG$UART2_ClearFlag$0$0 ==.
      008D0C 81               [ 4] 1067 	ret
                           0003C8  1068 	G$UART2_GetITStatus$0$0 ==.
                           0003C8  1069 	C$stm8s_uart2.c$738$1_0$446 ==.
                                   1070 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function UART2_GetITStatus
                                   1073 ;	-----------------------------------------
      008D0D                       1074 _UART2_GetITStatus:
      008D0D 52 02            [ 2] 1075 	sub	sp, #2
                           0003CA  1076 	C$stm8s_uart2.c$750$1_0$446 ==.
                                   1077 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008D0F 7B 06            [ 1] 1078 	ld	a, (0x06, sp)
      008D11 97               [ 1] 1079 	ld	xl, a
      008D12 A4 0F            [ 1] 1080 	and	a, #0x0f
      008D14 88               [ 1] 1081 	push	a
      008D15 A6 01            [ 1] 1082 	ld	a, #0x01
      008D17 6B 02            [ 1] 1083 	ld	(0x02, sp), a
      008D19 84               [ 1] 1084 	pop	a
      008D1A 4D               [ 1] 1085 	tnz	a
      008D1B 27 05            [ 1] 1086 	jreq	00184$
      008D1D                       1087 00183$:
      008D1D 08 01            [ 1] 1088 	sll	(0x01, sp)
      008D1F 4A               [ 1] 1089 	dec	a
      008D20 26 FB            [ 1] 1090 	jrne	00183$
      008D22                       1091 00184$:
                           0003DD  1092 	C$stm8s_uart2.c$752$1_0$446 ==.
                                   1093 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      008D22 9F               [ 1] 1094 	ld	a, xl
      008D23 4E               [ 1] 1095 	swap	a
      008D24 A4 0F            [ 1] 1096 	and	a, #0x0f
                           0003E1  1097 	C$stm8s_uart2.c$754$1_0$446 ==.
                                   1098 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      008D26 88               [ 1] 1099 	push	a
      008D27 A6 01            [ 1] 1100 	ld	a, #0x01
      008D29 6B 03            [ 1] 1101 	ld	(0x03, sp), a
      008D2B 84               [ 1] 1102 	pop	a
      008D2C 4D               [ 1] 1103 	tnz	a
      008D2D 27 05            [ 1] 1104 	jreq	00186$
      008D2F                       1105 00185$:
      008D2F 08 02            [ 1] 1106 	sll	(0x02, sp)
      008D31 4A               [ 1] 1107 	dec	a
      008D32 26 FB            [ 1] 1108 	jrne	00185$
      008D34                       1109 00186$:
                           0003EF  1110 	C$stm8s_uart2.c$757$1_0$446 ==.
                                   1111 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      008D34 1E 05            [ 2] 1112 	ldw	x, (0x05, sp)
      008D36 A3 01 00         [ 2] 1113 	cpw	x, #0x0100
      008D39 26 1A            [ 1] 1114 	jrne	00124$
                           0003F6  1115 	C$stm8s_uart2.c$760$2_0$447 ==.
                                   1116 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      008D3B C6 52 44         [ 1] 1117 	ld	a, 0x5244
      008D3E 14 02            [ 1] 1118 	and	a, (0x02, sp)
      008D40 97               [ 1] 1119 	ld	xl, a
                           0003FC  1120 	C$stm8s_uart2.c$763$2_0$447 ==.
                                   1121 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008D41 C6 52 40         [ 1] 1122 	ld	a, 0x5240
      008D44 14 01            [ 1] 1123 	and	a, (0x01, sp)
      008D46 27 09            [ 1] 1124 	jreq	00102$
      008D48 9F               [ 1] 1125 	ld	a, xl
      008D49 4D               [ 1] 1126 	tnz	a
      008D4A 27 05            [ 1] 1127 	jreq	00102$
                           000407  1128 	C$stm8s_uart2.c$766$3_0$448 ==.
                                   1129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 766: pendingbitstatus = SET;
      008D4C A6 01            [ 1] 1130 	ld	a, #0x01
      008D4E CC 8D A9         [ 2] 1131 	jp	00125$
      008D51                       1132 00102$:
                           00040C  1133 	C$stm8s_uart2.c$771$3_0$449 ==.
                                   1134 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 771: pendingbitstatus = RESET;
      008D51 4F               [ 1] 1135 	clr	a
      008D52 CC 8D A9         [ 2] 1136 	jp	00125$
      008D55                       1137 00124$:
                           000410  1138 	C$stm8s_uart2.c$774$1_0$446 ==.
                                   1139 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      008D55 1E 05            [ 2] 1140 	ldw	x, (0x05, sp)
      008D57 A3 03 46         [ 2] 1141 	cpw	x, #0x0346
      008D5A 26 18            [ 1] 1142 	jrne	00121$
                           000417  1143 	C$stm8s_uart2.c$777$2_0$450 ==.
                                   1144 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      008D5C C6 52 47         [ 1] 1145 	ld	a, 0x5247
      008D5F 14 02            [ 1] 1146 	and	a, (0x02, sp)
      008D61 97               [ 1] 1147 	ld	xl, a
                           00041D  1148 	C$stm8s_uart2.c$779$2_0$450 ==.
                                   1149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      008D62 C6 52 47         [ 1] 1150 	ld	a, 0x5247
      008D65 14 01            [ 1] 1151 	and	a, (0x01, sp)
      008D67 27 08            [ 1] 1152 	jreq	00106$
      008D69 9F               [ 1] 1153 	ld	a, xl
      008D6A 4D               [ 1] 1154 	tnz	a
      008D6B 27 04            [ 1] 1155 	jreq	00106$
                           000428  1156 	C$stm8s_uart2.c$782$3_0$451 ==.
                                   1157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 782: pendingbitstatus = SET;
      008D6D A6 01            [ 1] 1158 	ld	a, #0x01
      008D6F 20 38            [ 2] 1159 	jra	00125$
      008D71                       1160 00106$:
                           00042C  1161 	C$stm8s_uart2.c$787$3_0$452 ==.
                                   1162 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 787: pendingbitstatus = RESET;
      008D71 4F               [ 1] 1163 	clr	a
      008D72 20 35            [ 2] 1164 	jra	00125$
      008D74                       1165 00121$:
                           00042F  1166 	C$stm8s_uart2.c$790$1_0$446 ==.
                                   1167 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      008D74 1E 05            [ 2] 1168 	ldw	x, (0x05, sp)
      008D76 A3 04 12         [ 2] 1169 	cpw	x, #0x0412
      008D79 26 18            [ 1] 1170 	jrne	00118$
                           000436  1171 	C$stm8s_uart2.c$793$2_0$453 ==.
                                   1172 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      008D7B C6 52 49         [ 1] 1173 	ld	a, 0x5249
      008D7E 14 02            [ 1] 1174 	and	a, (0x02, sp)
      008D80 97               [ 1] 1175 	ld	xl, a
                           00043C  1176 	C$stm8s_uart2.c$795$2_0$453 ==.
                                   1177 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      008D81 C6 52 49         [ 1] 1178 	ld	a, 0x5249
      008D84 14 01            [ 1] 1179 	and	a, (0x01, sp)
      008D86 27 08            [ 1] 1180 	jreq	00110$
      008D88 9F               [ 1] 1181 	ld	a, xl
      008D89 4D               [ 1] 1182 	tnz	a
      008D8A 27 04            [ 1] 1183 	jreq	00110$
                           000447  1184 	C$stm8s_uart2.c$798$3_0$454 ==.
                                   1185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 798: pendingbitstatus = SET;
      008D8C A6 01            [ 1] 1186 	ld	a, #0x01
      008D8E 20 19            [ 2] 1187 	jra	00125$
      008D90                       1188 00110$:
                           00044B  1189 	C$stm8s_uart2.c$803$3_0$455 ==.
                                   1190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 803: pendingbitstatus = RESET;
      008D90 4F               [ 1] 1191 	clr	a
      008D91 20 16            [ 2] 1192 	jra	00125$
      008D93                       1193 00118$:
                           00044E  1194 	C$stm8s_uart2.c$809$2_0$456 ==.
                                   1195 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      008D93 C6 52 45         [ 1] 1196 	ld	a, 0x5245
      008D96 14 02            [ 1] 1197 	and	a, (0x02, sp)
      008D98 97               [ 1] 1198 	ld	xl, a
                           000454  1199 	C$stm8s_uart2.c$811$2_0$456 ==.
                                   1200 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008D99 C6 52 40         [ 1] 1201 	ld	a, 0x5240
      008D9C 14 01            [ 1] 1202 	and	a, (0x01, sp)
      008D9E 27 08            [ 1] 1203 	jreq	00114$
      008DA0 9F               [ 1] 1204 	ld	a, xl
      008DA1 4D               [ 1] 1205 	tnz	a
      008DA2 27 04            [ 1] 1206 	jreq	00114$
                           00045F  1207 	C$stm8s_uart2.c$814$3_0$457 ==.
                                   1208 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 814: pendingbitstatus = SET;
      008DA4 A6 01            [ 1] 1209 	ld	a, #0x01
      008DA6 20 01            [ 2] 1210 	jra	00125$
      008DA8                       1211 00114$:
                           000463  1212 	C$stm8s_uart2.c$819$3_0$458 ==.
                                   1213 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 819: pendingbitstatus = RESET;
      008DA8 4F               [ 1] 1214 	clr	a
      008DA9                       1215 00125$:
                           000464  1216 	C$stm8s_uart2.c$823$1_0$446 ==.
                                   1217 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 823: return  pendingbitstatus;
                           000464  1218 	C$stm8s_uart2.c$824$1_0$446 ==.
                                   1219 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 824: }
      008DA9 5B 02            [ 2] 1220 	addw	sp, #2
                           000466  1221 	C$stm8s_uart2.c$824$1_0$446 ==.
                           000466  1222 	XG$UART2_GetITStatus$0$0 ==.
      008DAB 81               [ 4] 1223 	ret
                           000467  1224 	G$UART2_ClearITPendingBit$0$0 ==.
                           000467  1225 	C$stm8s_uart2.c$852$1_0$460 ==.
                                   1226 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function UART2_ClearITPendingBit
                                   1229 ;	-----------------------------------------
      008DAC                       1230 _UART2_ClearITPendingBit:
                           000467  1231 	C$stm8s_uart2.c$857$1_0$460 ==.
                                   1232 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      008DAC 1E 03            [ 2] 1233 	ldw	x, (0x03, sp)
      008DAE A3 02 55         [ 2] 1234 	cpw	x, #0x0255
      008DB1 26 06            [ 1] 1235 	jrne	00105$
                           00046E  1236 	C$stm8s_uart2.c$859$2_0$461 ==.
                                   1237 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      008DB3 35 DF 52 40      [ 1] 1238 	mov	0x5240+0, #0xdf
      008DB7 20 11            [ 2] 1239 	jra	00107$
      008DB9                       1240 00105$:
                           000474  1241 	C$stm8s_uart2.c$862$1_0$460 ==.
                                   1242 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      008DB9 1E 03            [ 2] 1243 	ldw	x, (0x03, sp)
      008DBB A3 03 46         [ 2] 1244 	cpw	x, #0x0346
      008DBE 26 06            [ 1] 1245 	jrne	00102$
                           00047B  1246 	C$stm8s_uart2.c$864$2_0$462 ==.
                                   1247 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      008DC0 72 19 52 47      [ 1] 1248 	bres	21063, #4
      008DC4 20 04            [ 2] 1249 	jra	00107$
      008DC6                       1250 00102$:
                           000481  1251 	C$stm8s_uart2.c$869$2_0$463 ==.
                                   1252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008DC6 72 13 52 49      [ 1] 1253 	bres	21065, #1
      008DCA                       1254 00107$:
                           000485  1255 	C$stm8s_uart2.c$871$1_0$460 ==.
                                   1256 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_uart2.c: 871: }
                           000485  1257 	C$stm8s_uart2.c$871$1_0$460 ==.
                           000485  1258 	XG$UART2_ClearITPendingBit$0$0 ==.
      008DCA 81               [ 4] 1259 	ret
                                   1260 	.area CODE
                                   1261 	.area CONST
                                   1262 	.area INITIALIZER
                                   1263 	.area CABS (ABS)
