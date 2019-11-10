                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_Write
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_ReadOutputData
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_ReadInputPin
                                     20 	.globl _GPIO_ExternalPullUpConfig
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                           000000    58 	G$GPIO_DeInit$0$0 ==.
                           000000    59 	C$stm8s_gpio.c$53$0_0$346 ==.
                                     60 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     61 ;	-----------------------------------------
                                     62 ;	 function GPIO_DeInit
                                     63 ;	-----------------------------------------
      00886A                         64 _GPIO_DeInit:
                           000000    65 	C$stm8s_gpio.c$55$1_0$346 ==.
                                     66 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00886A 16 03            [ 2]   67 	ldw	y, (0x03, sp)
      00886C 90 7F            [ 1]   68 	clr	(y)
                           000004    69 	C$stm8s_gpio.c$56$1_0$346 ==.
                                     70 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00886E 93               [ 1]   71 	ldw	x, y
      00886F 5C               [ 1]   72 	incw	x
      008870 5C               [ 1]   73 	incw	x
      008871 7F               [ 1]   74 	clr	(x)
                           000008    75 	C$stm8s_gpio.c$57$1_0$346 ==.
                                     76 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008872 93               [ 1]   77 	ldw	x, y
      008873 6F 03            [ 1]   78 	clr	(0x0003, x)
                           00000B    79 	C$stm8s_gpio.c$58$1_0$346 ==.
                                     80 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008875 93               [ 1]   81 	ldw	x, y
      008876 6F 04            [ 1]   82 	clr	(0x0004, x)
                           00000E    83 	C$stm8s_gpio.c$59$1_0$346 ==.
                                     84 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 59: }
                           00000E    85 	C$stm8s_gpio.c$59$1_0$346 ==.
                           00000E    86 	XG$GPIO_DeInit$0$0 ==.
      008878 81               [ 4]   87 	ret
                           00000F    88 	G$GPIO_Init$0$0 ==.
                           00000F    89 	C$stm8s_gpio.c$71$1_0$348 ==.
                                     90 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     91 ;	-----------------------------------------
                                     92 ;	 function GPIO_Init
                                     93 ;	-----------------------------------------
      008879                         94 _GPIO_Init:
      008879 52 07            [ 2]   95 	sub	sp, #7
                           000011    96 	C$stm8s_gpio.c$74$1_0$348 ==.
                                     97 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 74: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00887B 16 0A            [ 2]   98 	ldw	y, (0x0a, sp)
      00887D 93               [ 1]   99 	ldw	x, y
      00887E 1C 00 04         [ 2]  100 	addw	x, #0x0004
      008881 1F 06            [ 2]  101 	ldw	(0x06, sp), x
      008883 F6               [ 1]  102 	ld	a, (x)
      008884 88               [ 1]  103 	push	a
      008885 7B 0D            [ 1]  104 	ld	a, (0x0d, sp)
      008887 43               [ 1]  105 	cpl	a
      008888 6B 04            [ 1]  106 	ld	(0x04, sp), a
      00888A 84               [ 1]  107 	pop	a
      00888B 14 03            [ 1]  108 	and	a, (0x03, sp)
      00888D 1E 06            [ 2]  109 	ldw	x, (0x06, sp)
      00888F F7               [ 1]  110 	ld	(x), a
                           000026   111 	C$stm8s_gpio.c$80$1_0$348 ==.
                                    112 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 80: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008890 0D 0D            [ 1]  113 	tnz	(0x0d, sp)
      008892 2A 1D            [ 1]  114 	jrpl	00105$
                           00002A   115 	C$stm8s_gpio.c$82$2_0$349 ==.
                                    116 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 82: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008894 7B 0D            [ 1]  117 	ld	a, (0x0d, sp)
      008896 A5 10            [ 1]  118 	bcp	a, #0x10
      008898 27 08            [ 1]  119 	jreq	00102$
                           000030   120 	C$stm8s_gpio.c$84$3_0$350 ==.
                                    121 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 84: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00889A 90 F6            [ 1]  122 	ld	a, (y)
      00889C 1A 0C            [ 1]  123 	or	a, (0x0c, sp)
      00889E 90 F7            [ 1]  124 	ld	(y), a
      0088A0 20 06            [ 2]  125 	jra	00103$
      0088A2                        126 00102$:
                           000038   127 	C$stm8s_gpio.c$88$3_0$351 ==.
                                    128 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 88: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0088A2 90 F6            [ 1]  129 	ld	a, (y)
      0088A4 14 03            [ 1]  130 	and	a, (0x03, sp)
      0088A6 90 F7            [ 1]  131 	ld	(y), a
      0088A8                        132 00103$:
                           00003E   133 	C$stm8s_gpio.c$91$2_0$349 ==.
                                    134 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 91: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0088A8 93               [ 1]  135 	ldw	x, y
      0088A9 5C               [ 1]  136 	incw	x
      0088AA 5C               [ 1]  137 	incw	x
      0088AB F6               [ 1]  138 	ld	a, (x)
      0088AC 1A 0C            [ 1]  139 	or	a, (0x0c, sp)
      0088AE F7               [ 1]  140 	ld	(x), a
      0088AF 20 0B            [ 2]  141 	jra	00106$
      0088B1                        142 00105$:
                           000047   143 	C$stm8s_gpio.c$96$2_0$352 ==.
                                    144 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 96: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      0088B1 93               [ 1]  145 	ldw	x, y
      0088B2 5C               [ 1]  146 	incw	x
      0088B3 5C               [ 1]  147 	incw	x
      0088B4 1F 04            [ 2]  148 	ldw	(0x04, sp), x
      0088B6 F6               [ 1]  149 	ld	a, (x)
      0088B7 14 03            [ 1]  150 	and	a, (0x03, sp)
      0088B9 1E 04            [ 2]  151 	ldw	x, (0x04, sp)
      0088BB F7               [ 1]  152 	ld	(x), a
      0088BC                        153 00106$:
                           000052   154 	C$stm8s_gpio.c$103$1_0$348 ==.
                                    155 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 103: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      0088BC 7B 0D            [ 1]  156 	ld	a, (0x0d, sp)
      0088BE A5 40            [ 1]  157 	bcp	a, #0x40
      0088C0 27 0A            [ 1]  158 	jreq	00108$
                           000058   159 	C$stm8s_gpio.c$105$2_0$353 ==.
                                    160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 105: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0088C2 93               [ 1]  161 	ldw	x, y
      0088C3 1C 00 03         [ 2]  162 	addw	x, #0x0003
      0088C6 F6               [ 1]  163 	ld	a, (x)
      0088C7 1A 0C            [ 1]  164 	or	a, (0x0c, sp)
      0088C9 F7               [ 1]  165 	ld	(x), a
      0088CA 20 0C            [ 2]  166 	jra	00109$
      0088CC                        167 00108$:
                           000062   168 	C$stm8s_gpio.c$109$2_0$354 ==.
                                    169 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 109: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0088CC 93               [ 1]  170 	ldw	x, y
      0088CD 1C 00 03         [ 2]  171 	addw	x, #0x0003
      0088D0 1F 01            [ 2]  172 	ldw	(0x01, sp), x
      0088D2 F6               [ 1]  173 	ld	a, (x)
      0088D3 14 03            [ 1]  174 	and	a, (0x03, sp)
      0088D5 1E 01            [ 2]  175 	ldw	x, (0x01, sp)
      0088D7 F7               [ 1]  176 	ld	(x), a
      0088D8                        177 00109$:
                           00006E   178 	C$stm8s_gpio.c$116$1_0$348 ==.
                                    179 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 116: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      0088D8 7B 0D            [ 1]  180 	ld	a, (0x0d, sp)
      0088DA A5 20            [ 1]  181 	bcp	a, #0x20
      0088DC 27 0A            [ 1]  182 	jreq	00111$
                           000074   183 	C$stm8s_gpio.c$118$2_0$355 ==.
                                    184 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 118: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      0088DE 1E 06            [ 2]  185 	ldw	x, (0x06, sp)
      0088E0 F6               [ 1]  186 	ld	a, (x)
      0088E1 1A 0C            [ 1]  187 	or	a, (0x0c, sp)
      0088E3 1E 06            [ 2]  188 	ldw	x, (0x06, sp)
      0088E5 F7               [ 1]  189 	ld	(x), a
      0088E6 20 08            [ 2]  190 	jra	00113$
      0088E8                        191 00111$:
                           00007E   192 	C$stm8s_gpio.c$122$2_0$356 ==.
                                    193 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 122: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0088E8 1E 06            [ 2]  194 	ldw	x, (0x06, sp)
      0088EA F6               [ 1]  195 	ld	a, (x)
      0088EB 14 03            [ 1]  196 	and	a, (0x03, sp)
      0088ED 1E 06            [ 2]  197 	ldw	x, (0x06, sp)
      0088EF F7               [ 1]  198 	ld	(x), a
      0088F0                        199 00113$:
                           000086   200 	C$stm8s_gpio.c$124$1_0$348 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 124: }
      0088F0 5B 07            [ 2]  202 	addw	sp, #7
                           000088   203 	C$stm8s_gpio.c$124$1_0$348 ==.
                           000088   204 	XG$GPIO_Init$0$0 ==.
      0088F2 81               [ 4]  205 	ret
                           000089   206 	G$GPIO_Write$0$0 ==.
                           000089   207 	C$stm8s_gpio.c$134$1_0$358 ==.
                                    208 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 134: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    209 ;	-----------------------------------------
                                    210 ;	 function GPIO_Write
                                    211 ;	-----------------------------------------
      0088F3                        212 _GPIO_Write:
                           000089   213 	C$stm8s_gpio.c$136$1_0$358 ==.
                                    214 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 136: GPIOx->ODR = PortVal;
      0088F3 1E 03            [ 2]  215 	ldw	x, (0x03, sp)
      0088F5 7B 05            [ 1]  216 	ld	a, (0x05, sp)
      0088F7 F7               [ 1]  217 	ld	(x), a
                           00008E   218 	C$stm8s_gpio.c$137$1_0$358 ==.
                                    219 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 137: }
                           00008E   220 	C$stm8s_gpio.c$137$1_0$358 ==.
                           00008E   221 	XG$GPIO_Write$0$0 ==.
      0088F8 81               [ 4]  222 	ret
                           00008F   223 	G$GPIO_WriteHigh$0$0 ==.
                           00008F   224 	C$stm8s_gpio.c$147$1_0$360 ==.
                                    225 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 147: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    226 ;	-----------------------------------------
                                    227 ;	 function GPIO_WriteHigh
                                    228 ;	-----------------------------------------
      0088F9                        229 _GPIO_WriteHigh:
                           00008F   230 	C$stm8s_gpio.c$149$1_0$360 ==.
                                    231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 149: GPIOx->ODR |= (uint8_t)PortPins;
      0088F9 1E 03            [ 2]  232 	ldw	x, (0x03, sp)
      0088FB F6               [ 1]  233 	ld	a, (x)
      0088FC 1A 05            [ 1]  234 	or	a, (0x05, sp)
      0088FE F7               [ 1]  235 	ld	(x), a
                           000095   236 	C$stm8s_gpio.c$150$1_0$360 ==.
                                    237 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 150: }
                           000095   238 	C$stm8s_gpio.c$150$1_0$360 ==.
                           000095   239 	XG$GPIO_WriteHigh$0$0 ==.
      0088FF 81               [ 4]  240 	ret
                           000096   241 	G$GPIO_WriteLow$0$0 ==.
                           000096   242 	C$stm8s_gpio.c$160$1_0$362 ==.
                                    243 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 160: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    244 ;	-----------------------------------------
                                    245 ;	 function GPIO_WriteLow
                                    246 ;	-----------------------------------------
      008900                        247 _GPIO_WriteLow:
      008900 88               [ 1]  248 	push	a
                           000097   249 	C$stm8s_gpio.c$162$1_0$362 ==.
                                    250 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 162: GPIOx->ODR &= (uint8_t)(~PortPins);
      008901 1E 04            [ 2]  251 	ldw	x, (0x04, sp)
      008903 F6               [ 1]  252 	ld	a, (x)
      008904 6B 01            [ 1]  253 	ld	(0x01, sp), a
      008906 7B 06            [ 1]  254 	ld	a, (0x06, sp)
      008908 43               [ 1]  255 	cpl	a
      008909 14 01            [ 1]  256 	and	a, (0x01, sp)
      00890B F7               [ 1]  257 	ld	(x), a
                           0000A2   258 	C$stm8s_gpio.c$163$1_0$362 ==.
                                    259 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 163: }
      00890C 84               [ 1]  260 	pop	a
                           0000A3   261 	C$stm8s_gpio.c$163$1_0$362 ==.
                           0000A3   262 	XG$GPIO_WriteLow$0$0 ==.
      00890D 81               [ 4]  263 	ret
                           0000A4   264 	G$GPIO_WriteReverse$0$0 ==.
                           0000A4   265 	C$stm8s_gpio.c$173$1_0$364 ==.
                                    266 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 173: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    267 ;	-----------------------------------------
                                    268 ;	 function GPIO_WriteReverse
                                    269 ;	-----------------------------------------
      00890E                        270 _GPIO_WriteReverse:
                           0000A4   271 	C$stm8s_gpio.c$175$1_0$364 ==.
                                    272 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 175: GPIOx->ODR ^= (uint8_t)PortPins;
      00890E 1E 03            [ 2]  273 	ldw	x, (0x03, sp)
      008910 F6               [ 1]  274 	ld	a, (x)
      008911 18 05            [ 1]  275 	xor	a, (0x05, sp)
      008913 F7               [ 1]  276 	ld	(x), a
                           0000AA   277 	C$stm8s_gpio.c$176$1_0$364 ==.
                                    278 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 176: }
                           0000AA   279 	C$stm8s_gpio.c$176$1_0$364 ==.
                           0000AA   280 	XG$GPIO_WriteReverse$0$0 ==.
      008914 81               [ 4]  281 	ret
                           0000AB   282 	G$GPIO_ReadOutputData$0$0 ==.
                           0000AB   283 	C$stm8s_gpio.c$184$1_0$366 ==.
                                    284 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 184: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    285 ;	-----------------------------------------
                                    286 ;	 function GPIO_ReadOutputData
                                    287 ;	-----------------------------------------
      008915                        288 _GPIO_ReadOutputData:
                           0000AB   289 	C$stm8s_gpio.c$186$1_0$366 ==.
                                    290 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 186: return ((uint8_t)GPIOx->ODR);
      008915 1E 03            [ 2]  291 	ldw	x, (0x03, sp)
      008917 F6               [ 1]  292 	ld	a, (x)
                           0000AE   293 	C$stm8s_gpio.c$187$1_0$366 ==.
                                    294 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 187: }
                           0000AE   295 	C$stm8s_gpio.c$187$1_0$366 ==.
                           0000AE   296 	XG$GPIO_ReadOutputData$0$0 ==.
      008918 81               [ 4]  297 	ret
                           0000AF   298 	G$GPIO_ReadInputData$0$0 ==.
                           0000AF   299 	C$stm8s_gpio.c$195$1_0$368 ==.
                                    300 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 195: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    301 ;	-----------------------------------------
                                    302 ;	 function GPIO_ReadInputData
                                    303 ;	-----------------------------------------
      008919                        304 _GPIO_ReadInputData:
                           0000AF   305 	C$stm8s_gpio.c$197$1_0$368 ==.
                                    306 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 197: return ((uint8_t)GPIOx->IDR);
      008919 1E 03            [ 2]  307 	ldw	x, (0x03, sp)
      00891B E6 01            [ 1]  308 	ld	a, (0x1, x)
                           0000B3   309 	C$stm8s_gpio.c$198$1_0$368 ==.
                                    310 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 198: }
                           0000B3   311 	C$stm8s_gpio.c$198$1_0$368 ==.
                           0000B3   312 	XG$GPIO_ReadInputData$0$0 ==.
      00891D 81               [ 4]  313 	ret
                           0000B4   314 	G$GPIO_ReadInputPin$0$0 ==.
                           0000B4   315 	C$stm8s_gpio.c$206$1_0$370 ==.
                                    316 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 206: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    317 ;	-----------------------------------------
                                    318 ;	 function GPIO_ReadInputPin
                                    319 ;	-----------------------------------------
      00891E                        320 _GPIO_ReadInputPin:
                           0000B4   321 	C$stm8s_gpio.c$208$1_0$370 ==.
                                    322 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 208: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      00891E 1E 03            [ 2]  323 	ldw	x, (0x03, sp)
      008920 E6 01            [ 1]  324 	ld	a, (0x1, x)
      008922 14 05            [ 1]  325 	and	a, (0x05, sp)
                           0000BA   326 	C$stm8s_gpio.c$209$1_0$370 ==.
                                    327 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 209: }
                           0000BA   328 	C$stm8s_gpio.c$209$1_0$370 ==.
                           0000BA   329 	XG$GPIO_ReadInputPin$0$0 ==.
      008924 81               [ 4]  330 	ret
                           0000BB   331 	G$GPIO_ExternalPullUpConfig$0$0 ==.
                           0000BB   332 	C$stm8s_gpio.c$218$1_0$372 ==.
                                    333 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 218: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    334 ;	-----------------------------------------
                                    335 ;	 function GPIO_ExternalPullUpConfig
                                    336 ;	-----------------------------------------
      008925                        337 _GPIO_ExternalPullUpConfig:
      008925 88               [ 1]  338 	push	a
                           0000BC   339 	C$stm8s_gpio.c$224$1_0$372 ==.
                                    340 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 224: if (NewState != DISABLE) /* External Pull-Up Set*/
      008926 0D 07            [ 1]  341 	tnz	(0x07, sp)
      008928 27 0B            [ 1]  342 	jreq	00102$
                           0000C0   343 	C$stm8s_gpio.c$226$2_0$373 ==.
                                    344 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 226: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00892A 1E 04            [ 2]  345 	ldw	x, (0x04, sp)
      00892C 1C 00 03         [ 2]  346 	addw	x, #0x0003
      00892F F6               [ 1]  347 	ld	a, (x)
      008930 1A 06            [ 1]  348 	or	a, (0x06, sp)
      008932 F7               [ 1]  349 	ld	(x), a
      008933 20 0E            [ 2]  350 	jra	00104$
      008935                        351 00102$:
                           0000CB   352 	C$stm8s_gpio.c$229$2_0$374 ==.
                                    353 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 229: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008935 1E 04            [ 2]  354 	ldw	x, (0x04, sp)
      008937 1C 00 03         [ 2]  355 	addw	x, #0x0003
      00893A F6               [ 1]  356 	ld	a, (x)
      00893B 6B 01            [ 1]  357 	ld	(0x01, sp), a
      00893D 7B 06            [ 1]  358 	ld	a, (0x06, sp)
      00893F 43               [ 1]  359 	cpl	a
      008940 14 01            [ 1]  360 	and	a, (0x01, sp)
      008942 F7               [ 1]  361 	ld	(x), a
      008943                        362 00104$:
                           0000D9   363 	C$stm8s_gpio.c$231$1_0$372 ==.
                                    364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_gpio.c: 231: }
      008943 84               [ 1]  365 	pop	a
                           0000DA   366 	C$stm8s_gpio.c$231$1_0$372 ==.
                           0000DA   367 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      008944 81               [ 4]  368 	ret
                                    369 	.area CODE
                                    370 	.area CONST
                                    371 	.area INITIALIZER
                                    372 	.area CABS (ABS)
