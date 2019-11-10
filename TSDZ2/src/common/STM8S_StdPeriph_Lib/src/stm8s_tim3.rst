                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim3
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM3_DeInit
                                     12 	.globl _TIM3_TimeBaseInit
                                     13 	.globl _TIM3_OC1Init
                                     14 	.globl _TIM3_OC2Init
                                     15 	.globl _TIM3_ICInit
                                     16 	.globl _TIM3_PWMIConfig
                                     17 	.globl _TIM3_Cmd
                                     18 	.globl _TIM3_ITConfig
                                     19 	.globl _TIM3_UpdateDisableConfig
                                     20 	.globl _TIM3_UpdateRequestConfig
                                     21 	.globl _TIM3_SelectOnePulseMode
                                     22 	.globl _TIM3_PrescalerConfig
                                     23 	.globl _TIM3_ForcedOC1Config
                                     24 	.globl _TIM3_ForcedOC2Config
                                     25 	.globl _TIM3_ARRPreloadConfig
                                     26 	.globl _TIM3_OC1PreloadConfig
                                     27 	.globl _TIM3_OC2PreloadConfig
                                     28 	.globl _TIM3_GenerateEvent
                                     29 	.globl _TIM3_OC1PolarityConfig
                                     30 	.globl _TIM3_OC2PolarityConfig
                                     31 	.globl _TIM3_CCxCmd
                                     32 	.globl _TIM3_SelectOCxM
                                     33 	.globl _TIM3_SetCounter
                                     34 	.globl _TIM3_SetAutoreload
                                     35 	.globl _TIM3_SetCompare1
                                     36 	.globl _TIM3_SetCompare2
                                     37 	.globl _TIM3_SetIC1Prescaler
                                     38 	.globl _TIM3_SetIC2Prescaler
                                     39 	.globl _TIM3_GetCapture1
                                     40 	.globl _TIM3_GetCapture2
                                     41 	.globl _TIM3_GetCounter
                                     42 	.globl _TIM3_GetPrescaler
                                     43 	.globl _TIM3_GetFlagStatus
                                     44 	.globl _TIM3_ClearFlag
                                     45 	.globl _TIM3_GetITStatus
                                     46 	.globl _TIM3_ClearITPendingBit
                                     47 ;--------------------------------------------------------
                                     48 ; ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area DATA
                                     51 ;--------------------------------------------------------
                                     52 ; ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area INITIALIZED
                                     55 ;--------------------------------------------------------
                                     56 ; absolute external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area DABS (ABS)
                                     59 
                                     60 ; default segment ordering for linker
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area CONST
                                     65 	.area INITIALIZER
                                     66 	.area CODE
                                     67 
                                     68 ;--------------------------------------------------------
                                     69 ; global & static initialisations
                                     70 ;--------------------------------------------------------
                                     71 	.area HOME
                                     72 	.area GSINIT
                                     73 	.area GSFINAL
                                     74 	.area GSINIT
                                     75 ;--------------------------------------------------------
                                     76 ; Home
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
                                     79 	.area HOME
                                     80 ;--------------------------------------------------------
                                     81 ; code
                                     82 ;--------------------------------------------------------
                                     83 	.area CODE
                           000000    84 	G$TIM3_DeInit$0$0 ==.
                           000000    85 	C$stm8s_tim3.c$51$0_0$348 ==.
                                     86 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 51: void TIM3_DeInit(void)
                                     87 ;	-----------------------------------------
                                     88 ;	 function TIM3_DeInit
                                     89 ;	-----------------------------------------
      009C18                         90 _TIM3_DeInit:
                           000000    91 	C$stm8s_tim3.c$53$1_0$348 ==.
                                     92 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
      009C18 35 00 53 20      [ 1]   93 	mov	0x5320+0, #0x00
                           000004    94 	C$stm8s_tim3.c$54$1_0$348 ==.
                                     95 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
      009C1C 35 00 53 21      [ 1]   96 	mov	0x5321+0, #0x00
                           000008    97 	C$stm8s_tim3.c$55$1_0$348 ==.
                                     98 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
      009C20 35 00 53 23      [ 1]   99 	mov	0x5323+0, #0x00
                           00000C   100 	C$stm8s_tim3.c$58$1_0$348 ==.
                                    101 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      009C24 35 00 53 27      [ 1]  102 	mov	0x5327+0, #0x00
                           000010   103 	C$stm8s_tim3.c$61$1_0$348 ==.
                                    104 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      009C28 35 00 53 27      [ 1]  105 	mov	0x5327+0, #0x00
                           000014   106 	C$stm8s_tim3.c$62$1_0$348 ==.
                                    107 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
      009C2C 35 00 53 25      [ 1]  108 	mov	0x5325+0, #0x00
                           000018   109 	C$stm8s_tim3.c$63$1_0$348 ==.
                                    110 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
      009C30 35 00 53 26      [ 1]  111 	mov	0x5326+0, #0x00
                           00001C   112 	C$stm8s_tim3.c$64$1_0$348 ==.
                                    113 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
      009C34 35 00 53 28      [ 1]  114 	mov	0x5328+0, #0x00
                           000020   115 	C$stm8s_tim3.c$65$1_0$348 ==.
                                    116 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
      009C38 35 00 53 29      [ 1]  117 	mov	0x5329+0, #0x00
                           000024   118 	C$stm8s_tim3.c$66$1_0$348 ==.
                                    119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
      009C3C 35 00 53 2A      [ 1]  120 	mov	0x532a+0, #0x00
                           000028   121 	C$stm8s_tim3.c$67$1_0$348 ==.
                                    122 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
      009C40 35 FF 53 2B      [ 1]  123 	mov	0x532b+0, #0xff
                           00002C   124 	C$stm8s_tim3.c$68$1_0$348 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
      009C44 35 FF 53 2C      [ 1]  126 	mov	0x532c+0, #0xff
                           000030   127 	C$stm8s_tim3.c$69$1_0$348 ==.
                                    128 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
      009C48 35 00 53 2D      [ 1]  129 	mov	0x532d+0, #0x00
                           000034   130 	C$stm8s_tim3.c$70$1_0$348 ==.
                                    131 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
      009C4C 35 00 53 2E      [ 1]  132 	mov	0x532e+0, #0x00
                           000038   133 	C$stm8s_tim3.c$71$1_0$348 ==.
                                    134 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
      009C50 35 00 53 2F      [ 1]  135 	mov	0x532f+0, #0x00
                           00003C   136 	C$stm8s_tim3.c$72$1_0$348 ==.
                                    137 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
      009C54 35 00 53 30      [ 1]  138 	mov	0x5330+0, #0x00
                           000040   139 	C$stm8s_tim3.c$73$1_0$348 ==.
                                    140 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
      009C58 35 00 53 22      [ 1]  141 	mov	0x5322+0, #0x00
                           000044   142 	C$stm8s_tim3.c$74$1_0$348 ==.
                                    143 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 74: }
                           000044   144 	C$stm8s_tim3.c$74$1_0$348 ==.
                           000044   145 	XG$TIM3_DeInit$0$0 ==.
      009C5C 81               [ 4]  146 	ret
                           000045   147 	G$TIM3_TimeBaseInit$0$0 ==.
                           000045   148 	C$stm8s_tim3.c$82$1_0$350 ==.
                                    149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
                                    150 ;	-----------------------------------------
                                    151 ;	 function TIM3_TimeBaseInit
                                    152 ;	-----------------------------------------
      009C5D                        153 _TIM3_TimeBaseInit:
      009C5D 52 02            [ 2]  154 	sub	sp, #2
                           000047   155 	C$stm8s_tim3.c$86$1_0$350 ==.
                                    156 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
      009C5F AE 53 2A         [ 2]  157 	ldw	x, #0x532a
      009C62 7B 05            [ 1]  158 	ld	a, (0x05, sp)
      009C64 F7               [ 1]  159 	ld	(x), a
                           00004D   160 	C$stm8s_tim3.c$88$1_0$350 ==.
                                    161 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
      009C65 7B 06            [ 1]  162 	ld	a, (0x06, sp)
      009C67 6B 02            [ 1]  163 	ld	(0x02, sp), a
      009C69 0F 01            [ 1]  164 	clr	(0x01, sp)
      009C6B 7B 02            [ 1]  165 	ld	a, (0x02, sp)
      009C6D C7 53 2B         [ 1]  166 	ld	0x532b, a
                           000058   167 	C$stm8s_tim3.c$89$1_0$350 ==.
                                    168 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
      009C70 7B 07            [ 1]  169 	ld	a, (0x07, sp)
      009C72 C7 53 2C         [ 1]  170 	ld	0x532c, a
                           00005D   171 	C$stm8s_tim3.c$90$1_0$350 ==.
                                    172 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 90: }
      009C75 5B 02            [ 2]  173 	addw	sp, #2
                           00005F   174 	C$stm8s_tim3.c$90$1_0$350 ==.
                           00005F   175 	XG$TIM3_TimeBaseInit$0$0 ==.
      009C77 81               [ 4]  176 	ret
                           000060   177 	G$TIM3_OC1Init$0$0 ==.
                           000060   178 	C$stm8s_tim3.c$100$1_0$352 ==.
                                    179 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    180 ;	-----------------------------------------
                                    181 ;	 function TIM3_OC1Init
                                    182 ;	-----------------------------------------
      009C78                        183 _TIM3_OC1Init:
      009C78 52 02            [ 2]  184 	sub	sp, #2
                           000062   185 	C$stm8s_tim3.c$111$1_0$352 ==.
                                    186 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
      009C7A C6 53 27         [ 1]  187 	ld	a, 0x5327
      009C7D A4 FC            [ 1]  188 	and	a, #0xfc
      009C7F C7 53 27         [ 1]  189 	ld	0x5327, a
                           00006A   190 	C$stm8s_tim3.c$113$1_0$352 ==.
                                    191 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
      009C82 C6 53 27         [ 1]  192 	ld	a, 0x5327
      009C85 6B 01            [ 1]  193 	ld	(0x01, sp), a
      009C87 7B 06            [ 1]  194 	ld	a, (0x06, sp)
      009C89 A4 01            [ 1]  195 	and	a, #0x01
      009C8B 6B 02            [ 1]  196 	ld	(0x02, sp), a
      009C8D 7B 09            [ 1]  197 	ld	a, (0x09, sp)
      009C8F A4 02            [ 1]  198 	and	a, #0x02
      009C91 1A 02            [ 1]  199 	or	a, (0x02, sp)
      009C93 1A 01            [ 1]  200 	or	a, (0x01, sp)
      009C95 C7 53 27         [ 1]  201 	ld	0x5327, a
                           000080   202 	C$stm8s_tim3.c$116$1_0$352 ==.
                                    203 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009C98 C6 53 25         [ 1]  204 	ld	a, 0x5325
      009C9B A4 8F            [ 1]  205 	and	a, #0x8f
      009C9D 1A 05            [ 1]  206 	or	a, (0x05, sp)
      009C9F C7 53 25         [ 1]  207 	ld	0x5325, a
                           00008A   208 	C$stm8s_tim3.c$119$1_0$352 ==.
                                    209 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
      009CA2 7B 07            [ 1]  210 	ld	a, (0x07, sp)
      009CA4 C7 53 2D         [ 1]  211 	ld	0x532d, a
                           00008F   212 	C$stm8s_tim3.c$120$1_0$352 ==.
                                    213 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
      009CA7 7B 08            [ 1]  214 	ld	a, (0x08, sp)
      009CA9 C7 53 2E         [ 1]  215 	ld	0x532e, a
                           000094   216 	C$stm8s_tim3.c$121$1_0$352 ==.
                                    217 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 121: }
      009CAC 5B 02            [ 2]  218 	addw	sp, #2
                           000096   219 	C$stm8s_tim3.c$121$1_0$352 ==.
                           000096   220 	XG$TIM3_OC1Init$0$0 ==.
      009CAE 81               [ 4]  221 	ret
                           000097   222 	G$TIM3_OC2Init$0$0 ==.
                           000097   223 	C$stm8s_tim3.c$131$1_0$354 ==.
                                    224 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    225 ;	-----------------------------------------
                                    226 ;	 function TIM3_OC2Init
                                    227 ;	-----------------------------------------
      009CAF                        228 _TIM3_OC2Init:
      009CAF 52 02            [ 2]  229 	sub	sp, #2
                           000099   230 	C$stm8s_tim3.c$143$1_0$354 ==.
                                    231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
      009CB1 C6 53 27         [ 1]  232 	ld	a, 0x5327
      009CB4 A4 CF            [ 1]  233 	and	a, #0xcf
      009CB6 C7 53 27         [ 1]  234 	ld	0x5327, a
                           0000A1   235 	C$stm8s_tim3.c$145$1_0$354 ==.
                                    236 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
      009CB9 C6 53 27         [ 1]  237 	ld	a, 0x5327
      009CBC 6B 01            [ 1]  238 	ld	(0x01, sp), a
      009CBE 7B 06            [ 1]  239 	ld	a, (0x06, sp)
      009CC0 A4 10            [ 1]  240 	and	a, #0x10
      009CC2 6B 02            [ 1]  241 	ld	(0x02, sp), a
      009CC4 7B 09            [ 1]  242 	ld	a, (0x09, sp)
      009CC6 A4 20            [ 1]  243 	and	a, #0x20
      009CC8 1A 02            [ 1]  244 	or	a, (0x02, sp)
      009CCA 1A 01            [ 1]  245 	or	a, (0x01, sp)
      009CCC C7 53 27         [ 1]  246 	ld	0x5327, a
                           0000B7   247 	C$stm8s_tim3.c$149$1_0$354 ==.
                                    248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009CCF C6 53 26         [ 1]  249 	ld	a, 0x5326
      009CD2 A4 8F            [ 1]  250 	and	a, #0x8f
      009CD4 1A 05            [ 1]  251 	or	a, (0x05, sp)
      009CD6 C7 53 26         [ 1]  252 	ld	0x5326, a
                           0000C1   253 	C$stm8s_tim3.c$153$1_0$354 ==.
                                    254 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
      009CD9 7B 07            [ 1]  255 	ld	a, (0x07, sp)
      009CDB C7 53 2F         [ 1]  256 	ld	0x532f, a
                           0000C6   257 	C$stm8s_tim3.c$154$1_0$354 ==.
                                    258 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
      009CDE 7B 08            [ 1]  259 	ld	a, (0x08, sp)
      009CE0 C7 53 30         [ 1]  260 	ld	0x5330, a
                           0000CB   261 	C$stm8s_tim3.c$155$1_0$354 ==.
                                    262 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 155: }
      009CE3 5B 02            [ 2]  263 	addw	sp, #2
                           0000CD   264 	C$stm8s_tim3.c$155$1_0$354 ==.
                           0000CD   265 	XG$TIM3_OC2Init$0$0 ==.
      009CE5 81               [ 4]  266 	ret
                           0000CE   267 	G$TIM3_ICInit$0$0 ==.
                           0000CE   268 	C$stm8s_tim3.c$166$1_0$356 ==.
                                    269 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
                                    270 ;	-----------------------------------------
                                    271 ;	 function TIM3_ICInit
                                    272 ;	-----------------------------------------
      009CE6                        273 _TIM3_ICInit:
                           0000CE   274 	C$stm8s_tim3.c$179$1_0$356 ==.
                                    275 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
      009CE6 7B 03            [ 1]  276 	ld	a, (0x03, sp)
      009CE8 4A               [ 1]  277 	dec	a
      009CE9 27 17            [ 1]  278 	jreq	00102$
                           0000D3   279 	C$stm8s_tim3.c$182$2_0$357 ==.
                                    280 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
      009CEB 7B 07            [ 1]  281 	ld	a, (0x07, sp)
      009CED 88               [ 1]  282 	push	a
      009CEE 7B 06            [ 1]  283 	ld	a, (0x06, sp)
      009CF0 88               [ 1]  284 	push	a
      009CF1 7B 06            [ 1]  285 	ld	a, (0x06, sp)
      009CF3 88               [ 1]  286 	push	a
      009CF4 CD 9F B7         [ 4]  287 	call	_TI1_Config
      009CF7 5B 03            [ 2]  288 	addw	sp, #3
                           0000E1   289 	C$stm8s_tim3.c$187$2_0$357 ==.
                                    290 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009CF9 7B 06            [ 1]  291 	ld	a, (0x06, sp)
      009CFB 88               [ 1]  292 	push	a
      009CFC CD 9E FE         [ 4]  293 	call	_TIM3_SetIC1Prescaler
      009CFF 84               [ 1]  294 	pop	a
      009D00 20 15            [ 2]  295 	jra	00104$
      009D02                        296 00102$:
                           0000EA   297 	C$stm8s_tim3.c$192$2_0$358 ==.
                                    298 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
      009D02 7B 07            [ 1]  299 	ld	a, (0x07, sp)
      009D04 88               [ 1]  300 	push	a
      009D05 7B 06            [ 1]  301 	ld	a, (0x06, sp)
      009D07 88               [ 1]  302 	push	a
      009D08 7B 06            [ 1]  303 	ld	a, (0x06, sp)
      009D0A 88               [ 1]  304 	push	a
      009D0B CD 9F E3         [ 4]  305 	call	_TI2_Config
      009D0E 5B 03            [ 2]  306 	addw	sp, #3
                           0000F8   307 	C$stm8s_tim3.c$197$2_0$358 ==.
                                    308 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009D10 7B 06            [ 1]  309 	ld	a, (0x06, sp)
      009D12 88               [ 1]  310 	push	a
      009D13 CD 9F 09         [ 4]  311 	call	_TIM3_SetIC2Prescaler
      009D16 84               [ 1]  312 	pop	a
      009D17                        313 00104$:
                           0000FF   314 	C$stm8s_tim3.c$199$1_0$356 ==.
                                    315 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 199: }
                           0000FF   316 	C$stm8s_tim3.c$199$1_0$356 ==.
                           0000FF   317 	XG$TIM3_ICInit$0$0 ==.
      009D17 81               [ 4]  318 	ret
                           000100   319 	G$TIM3_PWMIConfig$0$0 ==.
                           000100   320 	C$stm8s_tim3.c$210$1_0$360 ==.
                                    321 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
                                    322 ;	-----------------------------------------
                                    323 ;	 function TIM3_PWMIConfig
                                    324 ;	-----------------------------------------
      009D18                        325 _TIM3_PWMIConfig:
      009D18 52 02            [ 2]  326 	sub	sp, #2
                           000102   327 	C$stm8s_tim3.c$226$1_0$360 ==.
                                    328 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
      009D1A 7B 06            [ 1]  329 	ld	a, (0x06, sp)
      009D1C A1 44            [ 1]  330 	cp	a, #0x44
      009D1E 27 06            [ 1]  331 	jreq	00102$
                           000108   332 	C$stm8s_tim3.c$228$2_0$361 ==.
                                    333 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
      009D20 A6 44            [ 1]  334 	ld	a, #0x44
      009D22 6B 01            [ 1]  335 	ld	(0x01, sp), a
      009D24 20 02            [ 2]  336 	jra	00103$
      009D26                        337 00102$:
                           00010E   338 	C$stm8s_tim3.c$232$2_0$362 ==.
                                    339 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
      009D26 0F 01            [ 1]  340 	clr	(0x01, sp)
      009D28                        341 00103$:
                           000110   342 	C$stm8s_tim3.c$236$1_0$360 ==.
                                    343 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
      009D28 7B 07            [ 1]  344 	ld	a, (0x07, sp)
      009D2A 4A               [ 1]  345 	dec	a
      009D2B 26 06            [ 1]  346 	jrne	00105$
                           000115   347 	C$stm8s_tim3.c$238$2_0$363 ==.
                                    348 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
      009D2D A6 02            [ 1]  349 	ld	a, #0x02
      009D2F 6B 02            [ 1]  350 	ld	(0x02, sp), a
      009D31 20 04            [ 2]  351 	jra	00106$
      009D33                        352 00105$:
                           00011B   353 	C$stm8s_tim3.c$242$2_0$364 ==.
                                    354 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
      009D33 A6 01            [ 1]  355 	ld	a, #0x01
      009D35 6B 02            [ 1]  356 	ld	(0x02, sp), a
      009D37                        357 00106$:
                           00011F   358 	C$stm8s_tim3.c$245$1_0$360 ==.
                                    359 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
      009D37 7B 05            [ 1]  360 	ld	a, (0x05, sp)
      009D39 4A               [ 1]  361 	dec	a
      009D3A 27 2C            [ 1]  362 	jreq	00108$
                           000124   363 	C$stm8s_tim3.c$248$2_0$365 ==.
                                    364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      009D3C 7B 09            [ 1]  365 	ld	a, (0x09, sp)
      009D3E 88               [ 1]  366 	push	a
      009D3F 7B 08            [ 1]  367 	ld	a, (0x08, sp)
      009D41 88               [ 1]  368 	push	a
      009D42 7B 08            [ 1]  369 	ld	a, (0x08, sp)
      009D44 88               [ 1]  370 	push	a
      009D45 CD 9F B7         [ 4]  371 	call	_TI1_Config
      009D48 5B 03            [ 2]  372 	addw	sp, #3
                           000132   373 	C$stm8s_tim3.c$252$2_0$365 ==.
                                    374 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009D4A 7B 08            [ 1]  375 	ld	a, (0x08, sp)
      009D4C 88               [ 1]  376 	push	a
      009D4D CD 9E FE         [ 4]  377 	call	_TIM3_SetIC1Prescaler
      009D50 84               [ 1]  378 	pop	a
                           000139   379 	C$stm8s_tim3.c$255$2_0$365 ==.
                                    380 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
      009D51 7B 09            [ 1]  381 	ld	a, (0x09, sp)
      009D53 88               [ 1]  382 	push	a
      009D54 7B 03            [ 1]  383 	ld	a, (0x03, sp)
      009D56 88               [ 1]  384 	push	a
      009D57 7B 03            [ 1]  385 	ld	a, (0x03, sp)
      009D59 88               [ 1]  386 	push	a
      009D5A CD 9F E3         [ 4]  387 	call	_TI2_Config
      009D5D 5B 03            [ 2]  388 	addw	sp, #3
                           000147   389 	C$stm8s_tim3.c$258$2_0$365 ==.
                                    390 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009D5F 7B 08            [ 1]  391 	ld	a, (0x08, sp)
      009D61 88               [ 1]  392 	push	a
      009D62 CD 9F 09         [ 4]  393 	call	_TIM3_SetIC2Prescaler
      009D65 84               [ 1]  394 	pop	a
      009D66 20 2A            [ 2]  395 	jra	00110$
      009D68                        396 00108$:
                           000150   397 	C$stm8s_tim3.c$263$2_0$366 ==.
                                    398 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      009D68 7B 09            [ 1]  399 	ld	a, (0x09, sp)
      009D6A 88               [ 1]  400 	push	a
      009D6B 7B 08            [ 1]  401 	ld	a, (0x08, sp)
      009D6D 88               [ 1]  402 	push	a
      009D6E 7B 08            [ 1]  403 	ld	a, (0x08, sp)
      009D70 88               [ 1]  404 	push	a
      009D71 CD 9F E3         [ 4]  405 	call	_TI2_Config
      009D74 5B 03            [ 2]  406 	addw	sp, #3
                           00015E   407 	C$stm8s_tim3.c$267$2_0$366 ==.
                                    408 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      009D76 7B 08            [ 1]  409 	ld	a, (0x08, sp)
      009D78 88               [ 1]  410 	push	a
      009D79 CD 9F 09         [ 4]  411 	call	_TIM3_SetIC2Prescaler
      009D7C 84               [ 1]  412 	pop	a
                           000165   413 	C$stm8s_tim3.c$270$2_0$366 ==.
                                    414 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
      009D7D 7B 09            [ 1]  415 	ld	a, (0x09, sp)
      009D7F 88               [ 1]  416 	push	a
      009D80 7B 03            [ 1]  417 	ld	a, (0x03, sp)
      009D82 88               [ 1]  418 	push	a
      009D83 7B 03            [ 1]  419 	ld	a, (0x03, sp)
      009D85 88               [ 1]  420 	push	a
      009D86 CD 9F B7         [ 4]  421 	call	_TI1_Config
      009D89 5B 03            [ 2]  422 	addw	sp, #3
                           000173   423 	C$stm8s_tim3.c$273$2_0$366 ==.
                                    424 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      009D8B 7B 08            [ 1]  425 	ld	a, (0x08, sp)
      009D8D 88               [ 1]  426 	push	a
      009D8E CD 9E FE         [ 4]  427 	call	_TIM3_SetIC1Prescaler
      009D91 84               [ 1]  428 	pop	a
      009D92                        429 00110$:
                           00017A   430 	C$stm8s_tim3.c$275$1_0$360 ==.
                                    431 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 275: }
      009D92 5B 02            [ 2]  432 	addw	sp, #2
                           00017C   433 	C$stm8s_tim3.c$275$1_0$360 ==.
                           00017C   434 	XG$TIM3_PWMIConfig$0$0 ==.
      009D94 81               [ 4]  435 	ret
                           00017D   436 	G$TIM3_Cmd$0$0 ==.
                           00017D   437 	C$stm8s_tim3.c$283$1_0$368 ==.
                                    438 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
                                    439 ;	-----------------------------------------
                                    440 ;	 function TIM3_Cmd
                                    441 ;	-----------------------------------------
      009D95                        442 _TIM3_Cmd:
                           00017D   443 	C$stm8s_tim3.c$289$1_0$368 ==.
                                    444 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 289: if (NewState != DISABLE)
      009D95 0D 03            [ 1]  445 	tnz	(0x03, sp)
      009D97 27 06            [ 1]  446 	jreq	00102$
                           000181   447 	C$stm8s_tim3.c$291$2_0$369 ==.
                                    448 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      009D99 72 10 53 20      [ 1]  449 	bset	21280, #0
      009D9D 20 04            [ 2]  450 	jra	00104$
      009D9F                        451 00102$:
                           000187   452 	C$stm8s_tim3.c$295$2_0$370 ==.
                                    453 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
      009D9F 72 11 53 20      [ 1]  454 	bres	21280, #0
      009DA3                        455 00104$:
                           00018B   456 	C$stm8s_tim3.c$297$1_0$368 ==.
                                    457 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 297: }
                           00018B   458 	C$stm8s_tim3.c$297$1_0$368 ==.
                           00018B   459 	XG$TIM3_Cmd$0$0 ==.
      009DA3 81               [ 4]  460 	ret
                           00018C   461 	G$TIM3_ITConfig$0$0 ==.
                           00018C   462 	C$stm8s_tim3.c$311$1_0$372 ==.
                                    463 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
                                    464 ;	-----------------------------------------
                                    465 ;	 function TIM3_ITConfig
                                    466 ;	-----------------------------------------
      009DA4                        467 _TIM3_ITConfig:
      009DA4 88               [ 1]  468 	push	a
                           00018D   469 	C$stm8s_tim3.c$317$1_0$372 ==.
                                    470 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 317: if (NewState != DISABLE)
      009DA5 0D 05            [ 1]  471 	tnz	(0x05, sp)
      009DA7 27 0A            [ 1]  472 	jreq	00102$
                           000191   473 	C$stm8s_tim3.c$320$2_0$373 ==.
                                    474 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      009DA9 C6 53 21         [ 1]  475 	ld	a, 0x5321
      009DAC 1A 04            [ 1]  476 	or	a, (0x04, sp)
      009DAE C7 53 21         [ 1]  477 	ld	0x5321, a
      009DB1 20 0D            [ 2]  478 	jra	00104$
      009DB3                        479 00102$:
                           00019B   480 	C$stm8s_tim3.c$325$2_0$374 ==.
                                    481 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
      009DB3 C6 53 21         [ 1]  482 	ld	a, 0x5321
      009DB6 6B 01            [ 1]  483 	ld	(0x01, sp), a
      009DB8 7B 04            [ 1]  484 	ld	a, (0x04, sp)
      009DBA 43               [ 1]  485 	cpl	a
      009DBB 14 01            [ 1]  486 	and	a, (0x01, sp)
      009DBD C7 53 21         [ 1]  487 	ld	0x5321, a
      009DC0                        488 00104$:
                           0001A8   489 	C$stm8s_tim3.c$327$1_0$372 ==.
                                    490 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 327: }
      009DC0 84               [ 1]  491 	pop	a
                           0001A9   492 	C$stm8s_tim3.c$327$1_0$372 ==.
                           0001A9   493 	XG$TIM3_ITConfig$0$0 ==.
      009DC1 81               [ 4]  494 	ret
                           0001AA   495 	G$TIM3_UpdateDisableConfig$0$0 ==.
                           0001AA   496 	C$stm8s_tim3.c$335$1_0$376 ==.
                                    497 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
                                    498 ;	-----------------------------------------
                                    499 ;	 function TIM3_UpdateDisableConfig
                                    500 ;	-----------------------------------------
      009DC2                        501 _TIM3_UpdateDisableConfig:
                           0001AA   502 	C$stm8s_tim3.c$341$1_0$376 ==.
                                    503 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 341: if (NewState != DISABLE)
      009DC2 0D 03            [ 1]  504 	tnz	(0x03, sp)
      009DC4 27 06            [ 1]  505 	jreq	00102$
                           0001AE   506 	C$stm8s_tim3.c$343$2_0$377 ==.
                                    507 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      009DC6 72 12 53 20      [ 1]  508 	bset	21280, #1
      009DCA 20 04            [ 2]  509 	jra	00104$
      009DCC                        510 00102$:
                           0001B4   511 	C$stm8s_tim3.c$347$2_0$378 ==.
                                    512 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
      009DCC 72 13 53 20      [ 1]  513 	bres	21280, #1
      009DD0                        514 00104$:
                           0001B8   515 	C$stm8s_tim3.c$349$1_0$376 ==.
                                    516 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 349: }
                           0001B8   517 	C$stm8s_tim3.c$349$1_0$376 ==.
                           0001B8   518 	XG$TIM3_UpdateDisableConfig$0$0 ==.
      009DD0 81               [ 4]  519 	ret
                           0001B9   520 	G$TIM3_UpdateRequestConfig$0$0 ==.
                           0001B9   521 	C$stm8s_tim3.c$359$1_0$380 ==.
                                    522 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
                                    523 ;	-----------------------------------------
                                    524 ;	 function TIM3_UpdateRequestConfig
                                    525 ;	-----------------------------------------
      009DD1                        526 _TIM3_UpdateRequestConfig:
                           0001B9   527 	C$stm8s_tim3.c$365$1_0$380 ==.
                                    528 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
      009DD1 0D 03            [ 1]  529 	tnz	(0x03, sp)
      009DD3 27 06            [ 1]  530 	jreq	00102$
                           0001BD   531 	C$stm8s_tim3.c$367$2_0$381 ==.
                                    532 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      009DD5 72 14 53 20      [ 1]  533 	bset	21280, #2
      009DD9 20 04            [ 2]  534 	jra	00104$
      009DDB                        535 00102$:
                           0001C3   536 	C$stm8s_tim3.c$371$2_0$382 ==.
                                    537 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
      009DDB 72 15 53 20      [ 1]  538 	bres	21280, #2
      009DDF                        539 00104$:
                           0001C7   540 	C$stm8s_tim3.c$373$1_0$380 ==.
                                    541 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 373: }
                           0001C7   542 	C$stm8s_tim3.c$373$1_0$380 ==.
                           0001C7   543 	XG$TIM3_UpdateRequestConfig$0$0 ==.
      009DDF 81               [ 4]  544 	ret
                           0001C8   545 	G$TIM3_SelectOnePulseMode$0$0 ==.
                           0001C8   546 	C$stm8s_tim3.c$383$1_0$384 ==.
                                    547 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
                                    548 ;	-----------------------------------------
                                    549 ;	 function TIM3_SelectOnePulseMode
                                    550 ;	-----------------------------------------
      009DE0                        551 _TIM3_SelectOnePulseMode:
                           0001C8   552 	C$stm8s_tim3.c$389$1_0$384 ==.
                                    553 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
      009DE0 0D 03            [ 1]  554 	tnz	(0x03, sp)
      009DE2 27 06            [ 1]  555 	jreq	00102$
                           0001CC   556 	C$stm8s_tim3.c$391$2_0$385 ==.
                                    557 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      009DE4 72 16 53 20      [ 1]  558 	bset	21280, #3
      009DE8 20 04            [ 2]  559 	jra	00104$
      009DEA                        560 00102$:
                           0001D2   561 	C$stm8s_tim3.c$395$2_0$386 ==.
                                    562 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
      009DEA 72 17 53 20      [ 1]  563 	bres	21280, #3
      009DEE                        564 00104$:
                           0001D6   565 	C$stm8s_tim3.c$397$1_0$384 ==.
                                    566 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 397: }
                           0001D6   567 	C$stm8s_tim3.c$397$1_0$384 ==.
                           0001D6   568 	XG$TIM3_SelectOnePulseMode$0$0 ==.
      009DEE 81               [ 4]  569 	ret
                           0001D7   570 	G$TIM3_PrescalerConfig$0$0 ==.
                           0001D7   571 	C$stm8s_tim3.c$427$1_0$388 ==.
                                    572 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
                                    573 ;	-----------------------------------------
                                    574 ;	 function TIM3_PrescalerConfig
                                    575 ;	-----------------------------------------
      009DEF                        576 _TIM3_PrescalerConfig:
                           0001D7   577 	C$stm8s_tim3.c$435$1_0$388 ==.
                                    578 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
      009DEF AE 53 2A         [ 2]  579 	ldw	x, #0x532a
      009DF2 7B 03            [ 1]  580 	ld	a, (0x03, sp)
      009DF4 F7               [ 1]  581 	ld	(x), a
                           0001DD   582 	C$stm8s_tim3.c$438$1_0$388 ==.
                                    583 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
      009DF5 AE 53 24         [ 2]  584 	ldw	x, #0x5324
      009DF8 7B 04            [ 1]  585 	ld	a, (0x04, sp)
      009DFA F7               [ 1]  586 	ld	(x), a
                           0001E3   587 	C$stm8s_tim3.c$439$1_0$388 ==.
                                    588 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 439: }
                           0001E3   589 	C$stm8s_tim3.c$439$1_0$388 ==.
                           0001E3   590 	XG$TIM3_PrescalerConfig$0$0 ==.
      009DFB 81               [ 4]  591 	ret
                           0001E4   592 	G$TIM3_ForcedOC1Config$0$0 ==.
                           0001E4   593 	C$stm8s_tim3.c$450$1_0$390 ==.
                                    594 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    595 ;	-----------------------------------------
                                    596 ;	 function TIM3_ForcedOC1Config
                                    597 ;	-----------------------------------------
      009DFC                        598 _TIM3_ForcedOC1Config:
                           0001E4   599 	C$stm8s_tim3.c$456$1_0$390 ==.
                                    600 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
      009DFC C6 53 25         [ 1]  601 	ld	a, 0x5325
      009DFF A4 8F            [ 1]  602 	and	a, #0x8f
      009E01 1A 03            [ 1]  603 	or	a, (0x03, sp)
      009E03 C7 53 25         [ 1]  604 	ld	0x5325, a
                           0001EE   605 	C$stm8s_tim3.c$457$1_0$390 ==.
                                    606 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 457: }
                           0001EE   607 	C$stm8s_tim3.c$457$1_0$390 ==.
                           0001EE   608 	XG$TIM3_ForcedOC1Config$0$0 ==.
      009E06 81               [ 4]  609 	ret
                           0001EF   610 	G$TIM3_ForcedOC2Config$0$0 ==.
                           0001EF   611 	C$stm8s_tim3.c$468$1_0$392 ==.
                                    612 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    613 ;	-----------------------------------------
                                    614 ;	 function TIM3_ForcedOC2Config
                                    615 ;	-----------------------------------------
      009E07                        616 _TIM3_ForcedOC2Config:
                           0001EF   617 	C$stm8s_tim3.c$474$1_0$392 ==.
                                    618 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
      009E07 C6 53 26         [ 1]  619 	ld	a, 0x5326
      009E0A A4 8F            [ 1]  620 	and	a, #0x8f
      009E0C 1A 03            [ 1]  621 	or	a, (0x03, sp)
      009E0E C7 53 26         [ 1]  622 	ld	0x5326, a
                           0001F9   623 	C$stm8s_tim3.c$475$1_0$392 ==.
                                    624 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 475: }
                           0001F9   625 	C$stm8s_tim3.c$475$1_0$392 ==.
                           0001F9   626 	XG$TIM3_ForcedOC2Config$0$0 ==.
      009E11 81               [ 4]  627 	ret
                           0001FA   628 	G$TIM3_ARRPreloadConfig$0$0 ==.
                           0001FA   629 	C$stm8s_tim3.c$483$1_0$394 ==.
                                    630 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
                                    631 ;	-----------------------------------------
                                    632 ;	 function TIM3_ARRPreloadConfig
                                    633 ;	-----------------------------------------
      009E12                        634 _TIM3_ARRPreloadConfig:
                           0001FA   635 	C$stm8s_tim3.c$489$1_0$394 ==.
                                    636 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 489: if (NewState != DISABLE)
      009E12 0D 03            [ 1]  637 	tnz	(0x03, sp)
      009E14 27 06            [ 1]  638 	jreq	00102$
                           0001FE   639 	C$stm8s_tim3.c$491$2_0$395 ==.
                                    640 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      009E16 72 1E 53 20      [ 1]  641 	bset	21280, #7
      009E1A 20 04            [ 2]  642 	jra	00104$
      009E1C                        643 00102$:
                           000204   644 	C$stm8s_tim3.c$495$2_0$396 ==.
                                    645 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
      009E1C 72 1F 53 20      [ 1]  646 	bres	21280, #7
      009E20                        647 00104$:
                           000208   648 	C$stm8s_tim3.c$497$1_0$394 ==.
                                    649 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 497: }
                           000208   650 	C$stm8s_tim3.c$497$1_0$394 ==.
                           000208   651 	XG$TIM3_ARRPreloadConfig$0$0 ==.
      009E20 81               [ 4]  652 	ret
                           000209   653 	G$TIM3_OC1PreloadConfig$0$0 ==.
                           000209   654 	C$stm8s_tim3.c$505$1_0$398 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
                                    656 ;	-----------------------------------------
                                    657 ;	 function TIM3_OC1PreloadConfig
                                    658 ;	-----------------------------------------
      009E21                        659 _TIM3_OC1PreloadConfig:
                           000209   660 	C$stm8s_tim3.c$511$1_0$398 ==.
                                    661 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 511: if (NewState != DISABLE)
      009E21 0D 03            [ 1]  662 	tnz	(0x03, sp)
      009E23 27 06            [ 1]  663 	jreq	00102$
                           00020D   664 	C$stm8s_tim3.c$513$2_0$399 ==.
                                    665 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      009E25 72 16 53 25      [ 1]  666 	bset	21285, #3
      009E29 20 04            [ 2]  667 	jra	00104$
      009E2B                        668 00102$:
                           000213   669 	C$stm8s_tim3.c$517$2_0$400 ==.
                                    670 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      009E2B 72 17 53 25      [ 1]  671 	bres	21285, #3
      009E2F                        672 00104$:
                           000217   673 	C$stm8s_tim3.c$519$1_0$398 ==.
                                    674 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 519: }
                           000217   675 	C$stm8s_tim3.c$519$1_0$398 ==.
                           000217   676 	XG$TIM3_OC1PreloadConfig$0$0 ==.
      009E2F 81               [ 4]  677 	ret
                           000218   678 	G$TIM3_OC2PreloadConfig$0$0 ==.
                           000218   679 	C$stm8s_tim3.c$527$1_0$402 ==.
                                    680 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
                                    681 ;	-----------------------------------------
                                    682 ;	 function TIM3_OC2PreloadConfig
                                    683 ;	-----------------------------------------
      009E30                        684 _TIM3_OC2PreloadConfig:
                           000218   685 	C$stm8s_tim3.c$533$1_0$402 ==.
                                    686 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 533: if (NewState != DISABLE)
      009E30 0D 03            [ 1]  687 	tnz	(0x03, sp)
      009E32 27 06            [ 1]  688 	jreq	00102$
                           00021C   689 	C$stm8s_tim3.c$535$2_0$403 ==.
                                    690 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      009E34 72 16 53 26      [ 1]  691 	bset	21286, #3
      009E38 20 04            [ 2]  692 	jra	00104$
      009E3A                        693 00102$:
                           000222   694 	C$stm8s_tim3.c$539$2_0$404 ==.
                                    695 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      009E3A 72 17 53 26      [ 1]  696 	bres	21286, #3
      009E3E                        697 00104$:
                           000226   698 	C$stm8s_tim3.c$541$1_0$402 ==.
                                    699 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 541: }
                           000226   700 	C$stm8s_tim3.c$541$1_0$402 ==.
                           000226   701 	XG$TIM3_OC2PreloadConfig$0$0 ==.
      009E3E 81               [ 4]  702 	ret
                           000227   703 	G$TIM3_GenerateEvent$0$0 ==.
                           000227   704 	C$stm8s_tim3.c$552$1_0$406 ==.
                                    705 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
                                    706 ;	-----------------------------------------
                                    707 ;	 function TIM3_GenerateEvent
                                    708 ;	-----------------------------------------
      009E3F                        709 _TIM3_GenerateEvent:
                           000227   710 	C$stm8s_tim3.c$558$1_0$406 ==.
                                    711 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
      009E3F AE 53 24         [ 2]  712 	ldw	x, #0x5324
      009E42 7B 03            [ 1]  713 	ld	a, (0x03, sp)
      009E44 F7               [ 1]  714 	ld	(x), a
                           00022D   715 	C$stm8s_tim3.c$559$1_0$406 ==.
                                    716 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 559: }
                           00022D   717 	C$stm8s_tim3.c$559$1_0$406 ==.
                           00022D   718 	XG$TIM3_GenerateEvent$0$0 ==.
      009E45 81               [ 4]  719 	ret
                           00022E   720 	G$TIM3_OC1PolarityConfig$0$0 ==.
                           00022E   721 	C$stm8s_tim3.c$569$1_0$408 ==.
                                    722 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                    723 ;	-----------------------------------------
                                    724 ;	 function TIM3_OC1PolarityConfig
                                    725 ;	-----------------------------------------
      009E46                        726 _TIM3_OC1PolarityConfig:
                           00022E   727 	C$stm8s_tim3.c$575$1_0$408 ==.
                                    728 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      009E46 0D 03            [ 1]  729 	tnz	(0x03, sp)
      009E48 27 06            [ 1]  730 	jreq	00102$
                           000232   731 	C$stm8s_tim3.c$577$2_0$409 ==.
                                    732 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      009E4A 72 12 53 27      [ 1]  733 	bset	21287, #1
      009E4E 20 04            [ 2]  734 	jra	00104$
      009E50                        735 00102$:
                           000238   736 	C$stm8s_tim3.c$581$2_0$410 ==.
                                    737 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      009E50 72 13 53 27      [ 1]  738 	bres	21287, #1
      009E54                        739 00104$:
                           00023C   740 	C$stm8s_tim3.c$583$1_0$408 ==.
                                    741 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 583: }
                           00023C   742 	C$stm8s_tim3.c$583$1_0$408 ==.
                           00023C   743 	XG$TIM3_OC1PolarityConfig$0$0 ==.
      009E54 81               [ 4]  744 	ret
                           00023D   745 	G$TIM3_OC2PolarityConfig$0$0 ==.
                           00023D   746 	C$stm8s_tim3.c$593$1_0$412 ==.
                                    747 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                    748 ;	-----------------------------------------
                                    749 ;	 function TIM3_OC2PolarityConfig
                                    750 ;	-----------------------------------------
      009E55                        751 _TIM3_OC2PolarityConfig:
                           00023D   752 	C$stm8s_tim3.c$599$1_0$412 ==.
                                    753 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      009E55 0D 03            [ 1]  754 	tnz	(0x03, sp)
      009E57 27 06            [ 1]  755 	jreq	00102$
                           000241   756 	C$stm8s_tim3.c$601$2_0$413 ==.
                                    757 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      009E59 72 1A 53 27      [ 1]  758 	bset	21287, #5
      009E5D 20 04            [ 2]  759 	jra	00104$
      009E5F                        760 00102$:
                           000247   761 	C$stm8s_tim3.c$605$2_0$414 ==.
                                    762 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      009E5F 72 1B 53 27      [ 1]  763 	bres	21287, #5
      009E63                        764 00104$:
                           00024B   765 	C$stm8s_tim3.c$607$1_0$412 ==.
                                    766 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 607: }
                           00024B   767 	C$stm8s_tim3.c$607$1_0$412 ==.
                           00024B   768 	XG$TIM3_OC2PolarityConfig$0$0 ==.
      009E63 81               [ 4]  769 	ret
                           00024C   770 	G$TIM3_CCxCmd$0$0 ==.
                           00024C   771 	C$stm8s_tim3.c$619$1_0$416 ==.
                                    772 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
                                    773 ;	-----------------------------------------
                                    774 ;	 function TIM3_CCxCmd
                                    775 ;	-----------------------------------------
      009E64                        776 _TIM3_CCxCmd:
                           00024C   777 	C$stm8s_tim3.c$625$1_0$416 ==.
                                    778 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
      009E64 0D 03            [ 1]  779 	tnz	(0x03, sp)
      009E66 26 10            [ 1]  780 	jrne	00108$
                           000250   781 	C$stm8s_tim3.c$628$2_0$417 ==.
                                    782 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 628: if (NewState != DISABLE)
      009E68 0D 04            [ 1]  783 	tnz	(0x04, sp)
      009E6A 27 06            [ 1]  784 	jreq	00102$
                           000254   785 	C$stm8s_tim3.c$630$3_0$418 ==.
                                    786 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      009E6C 72 10 53 27      [ 1]  787 	bset	21287, #0
      009E70 20 14            [ 2]  788 	jra	00110$
      009E72                        789 00102$:
                           00025A   790 	C$stm8s_tim3.c$634$3_0$419 ==.
                                    791 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      009E72 72 11 53 27      [ 1]  792 	bres	21287, #0
      009E76 20 0E            [ 2]  793 	jra	00110$
      009E78                        794 00108$:
                           000260   795 	C$stm8s_tim3.c$641$2_0$420 ==.
                                    796 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 641: if (NewState != DISABLE)
      009E78 0D 04            [ 1]  797 	tnz	(0x04, sp)
      009E7A 27 06            [ 1]  798 	jreq	00105$
                           000264   799 	C$stm8s_tim3.c$643$3_0$421 ==.
                                    800 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      009E7C 72 18 53 27      [ 1]  801 	bset	21287, #4
      009E80 20 04            [ 2]  802 	jra	00110$
      009E82                        803 00105$:
                           00026A   804 	C$stm8s_tim3.c$647$3_0$422 ==.
                                    805 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      009E82 72 19 53 27      [ 1]  806 	bres	21287, #4
      009E86                        807 00110$:
                           00026E   808 	C$stm8s_tim3.c$650$1_0$416 ==.
                                    809 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 650: }
                           00026E   810 	C$stm8s_tim3.c$650$1_0$416 ==.
                           00026E   811 	XG$TIM3_CCxCmd$0$0 ==.
      009E86 81               [ 4]  812 	ret
                           00026F   813 	G$TIM3_SelectOCxM$0$0 ==.
                           00026F   814 	C$stm8s_tim3.c$671$1_0$424 ==.
                                    815 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
                                    816 ;	-----------------------------------------
                                    817 ;	 function TIM3_SelectOCxM
                                    818 ;	-----------------------------------------
      009E87                        819 _TIM3_SelectOCxM:
                           00026F   820 	C$stm8s_tim3.c$677$1_0$424 ==.
                                    821 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
      009E87 0D 03            [ 1]  822 	tnz	(0x03, sp)
      009E89 26 10            [ 1]  823 	jrne	00102$
                           000273   824 	C$stm8s_tim3.c$680$2_0$425 ==.
                                    825 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      009E8B 72 11 53 27      [ 1]  826 	bres	21287, #0
                           000277   827 	C$stm8s_tim3.c$683$2_0$425 ==.
                                    828 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009E8F C6 53 25         [ 1]  829 	ld	a, 0x5325
      009E92 A4 8F            [ 1]  830 	and	a, #0x8f
      009E94 1A 04            [ 1]  831 	or	a, (0x04, sp)
      009E96 C7 53 25         [ 1]  832 	ld	0x5325, a
      009E99 20 0E            [ 2]  833 	jra	00104$
      009E9B                        834 00102$:
                           000283   835 	C$stm8s_tim3.c$688$2_0$426 ==.
                                    836 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      009E9B 72 19 53 27      [ 1]  837 	bres	21287, #4
                           000287   838 	C$stm8s_tim3.c$691$2_0$426 ==.
                                    839 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      009E9F C6 53 26         [ 1]  840 	ld	a, 0x5326
      009EA2 A4 8F            [ 1]  841 	and	a, #0x8f
      009EA4 1A 04            [ 1]  842 	or	a, (0x04, sp)
      009EA6 C7 53 26         [ 1]  843 	ld	0x5326, a
      009EA9                        844 00104$:
                           000291   845 	C$stm8s_tim3.c$693$1_0$424 ==.
                                    846 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 693: }
                           000291   847 	C$stm8s_tim3.c$693$1_0$424 ==.
                           000291   848 	XG$TIM3_SelectOCxM$0$0 ==.
      009EA9 81               [ 4]  849 	ret
                           000292   850 	G$TIM3_SetCounter$0$0 ==.
                           000292   851 	C$stm8s_tim3.c$701$1_0$428 ==.
                                    852 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
                                    853 ;	-----------------------------------------
                                    854 ;	 function TIM3_SetCounter
                                    855 ;	-----------------------------------------
      009EAA                        856 _TIM3_SetCounter:
      009EAA 52 02            [ 2]  857 	sub	sp, #2
                           000294   858 	C$stm8s_tim3.c$704$1_0$428 ==.
                                    859 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
      009EAC 7B 05            [ 1]  860 	ld	a, (0x05, sp)
      009EAE 6B 02            [ 1]  861 	ld	(0x02, sp), a
      009EB0 0F 01            [ 1]  862 	clr	(0x01, sp)
      009EB2 7B 02            [ 1]  863 	ld	a, (0x02, sp)
      009EB4 C7 53 28         [ 1]  864 	ld	0x5328, a
                           00029F   865 	C$stm8s_tim3.c$705$1_0$428 ==.
                                    866 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
      009EB7 7B 06            [ 1]  867 	ld	a, (0x06, sp)
      009EB9 C7 53 29         [ 1]  868 	ld	0x5329, a
                           0002A4   869 	C$stm8s_tim3.c$706$1_0$428 ==.
                                    870 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 706: }
      009EBC 5B 02            [ 2]  871 	addw	sp, #2
                           0002A6   872 	C$stm8s_tim3.c$706$1_0$428 ==.
                           0002A6   873 	XG$TIM3_SetCounter$0$0 ==.
      009EBE 81               [ 4]  874 	ret
                           0002A7   875 	G$TIM3_SetAutoreload$0$0 ==.
                           0002A7   876 	C$stm8s_tim3.c$714$1_0$430 ==.
                                    877 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
                                    878 ;	-----------------------------------------
                                    879 ;	 function TIM3_SetAutoreload
                                    880 ;	-----------------------------------------
      009EBF                        881 _TIM3_SetAutoreload:
      009EBF 52 02            [ 2]  882 	sub	sp, #2
                           0002A9   883 	C$stm8s_tim3.c$717$1_0$430 ==.
                                    884 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
      009EC1 7B 05            [ 1]  885 	ld	a, (0x05, sp)
      009EC3 6B 02            [ 1]  886 	ld	(0x02, sp), a
      009EC5 0F 01            [ 1]  887 	clr	(0x01, sp)
      009EC7 7B 02            [ 1]  888 	ld	a, (0x02, sp)
      009EC9 C7 53 2B         [ 1]  889 	ld	0x532b, a
                           0002B4   890 	C$stm8s_tim3.c$718$1_0$430 ==.
                                    891 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
      009ECC 7B 06            [ 1]  892 	ld	a, (0x06, sp)
      009ECE C7 53 2C         [ 1]  893 	ld	0x532c, a
                           0002B9   894 	C$stm8s_tim3.c$719$1_0$430 ==.
                                    895 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 719: }
      009ED1 5B 02            [ 2]  896 	addw	sp, #2
                           0002BB   897 	C$stm8s_tim3.c$719$1_0$430 ==.
                           0002BB   898 	XG$TIM3_SetAutoreload$0$0 ==.
      009ED3 81               [ 4]  899 	ret
                           0002BC   900 	G$TIM3_SetCompare1$0$0 ==.
                           0002BC   901 	C$stm8s_tim3.c$727$1_0$432 ==.
                                    902 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
                                    903 ;	-----------------------------------------
                                    904 ;	 function TIM3_SetCompare1
                                    905 ;	-----------------------------------------
      009ED4                        906 _TIM3_SetCompare1:
      009ED4 52 02            [ 2]  907 	sub	sp, #2
                           0002BE   908 	C$stm8s_tim3.c$730$1_0$432 ==.
                                    909 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
      009ED6 7B 05            [ 1]  910 	ld	a, (0x05, sp)
      009ED8 6B 02            [ 1]  911 	ld	(0x02, sp), a
      009EDA 0F 01            [ 1]  912 	clr	(0x01, sp)
      009EDC 7B 02            [ 1]  913 	ld	a, (0x02, sp)
      009EDE C7 53 2D         [ 1]  914 	ld	0x532d, a
                           0002C9   915 	C$stm8s_tim3.c$731$1_0$432 ==.
                                    916 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
      009EE1 7B 06            [ 1]  917 	ld	a, (0x06, sp)
      009EE3 C7 53 2E         [ 1]  918 	ld	0x532e, a
                           0002CE   919 	C$stm8s_tim3.c$732$1_0$432 ==.
                                    920 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 732: }
      009EE6 5B 02            [ 2]  921 	addw	sp, #2
                           0002D0   922 	C$stm8s_tim3.c$732$1_0$432 ==.
                           0002D0   923 	XG$TIM3_SetCompare1$0$0 ==.
      009EE8 81               [ 4]  924 	ret
                           0002D1   925 	G$TIM3_SetCompare2$0$0 ==.
                           0002D1   926 	C$stm8s_tim3.c$740$1_0$434 ==.
                                    927 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
                                    928 ;	-----------------------------------------
                                    929 ;	 function TIM3_SetCompare2
                                    930 ;	-----------------------------------------
      009EE9                        931 _TIM3_SetCompare2:
      009EE9 52 02            [ 2]  932 	sub	sp, #2
                           0002D3   933 	C$stm8s_tim3.c$743$1_0$434 ==.
                                    934 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
      009EEB 7B 05            [ 1]  935 	ld	a, (0x05, sp)
      009EED 6B 02            [ 1]  936 	ld	(0x02, sp), a
      009EEF 0F 01            [ 1]  937 	clr	(0x01, sp)
      009EF1 7B 02            [ 1]  938 	ld	a, (0x02, sp)
      009EF3 C7 53 2F         [ 1]  939 	ld	0x532f, a
                           0002DE   940 	C$stm8s_tim3.c$744$1_0$434 ==.
                                    941 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
      009EF6 7B 06            [ 1]  942 	ld	a, (0x06, sp)
      009EF8 C7 53 30         [ 1]  943 	ld	0x5330, a
                           0002E3   944 	C$stm8s_tim3.c$745$1_0$434 ==.
                                    945 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 745: }
      009EFB 5B 02            [ 2]  946 	addw	sp, #2
                           0002E5   947 	C$stm8s_tim3.c$745$1_0$434 ==.
                           0002E5   948 	XG$TIM3_SetCompare2$0$0 ==.
      009EFD 81               [ 4]  949 	ret
                           0002E6   950 	G$TIM3_SetIC1Prescaler$0$0 ==.
                           0002E6   951 	C$stm8s_tim3.c$757$1_0$436 ==.
                                    952 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
                                    953 ;	-----------------------------------------
                                    954 ;	 function TIM3_SetIC1Prescaler
                                    955 ;	-----------------------------------------
      009EFE                        956 _TIM3_SetIC1Prescaler:
                           0002E6   957 	C$stm8s_tim3.c$763$1_0$436 ==.
                                    958 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
      009EFE C6 53 25         [ 1]  959 	ld	a, 0x5325
      009F01 A4 F3            [ 1]  960 	and	a, #0xf3
      009F03 1A 03            [ 1]  961 	or	a, (0x03, sp)
      009F05 C7 53 25         [ 1]  962 	ld	0x5325, a
                           0002F0   963 	C$stm8s_tim3.c$764$1_0$436 ==.
                                    964 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 764: }
                           0002F0   965 	C$stm8s_tim3.c$764$1_0$436 ==.
                           0002F0   966 	XG$TIM3_SetIC1Prescaler$0$0 ==.
      009F08 81               [ 4]  967 	ret
                           0002F1   968 	G$TIM3_SetIC2Prescaler$0$0 ==.
                           0002F1   969 	C$stm8s_tim3.c$776$1_0$438 ==.
                                    970 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
                                    971 ;	-----------------------------------------
                                    972 ;	 function TIM3_SetIC2Prescaler
                                    973 ;	-----------------------------------------
      009F09                        974 _TIM3_SetIC2Prescaler:
                           0002F1   975 	C$stm8s_tim3.c$782$1_0$438 ==.
                                    976 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
      009F09 C6 53 26         [ 1]  977 	ld	a, 0x5326
      009F0C A4 F3            [ 1]  978 	and	a, #0xf3
      009F0E 1A 03            [ 1]  979 	or	a, (0x03, sp)
      009F10 C7 53 26         [ 1]  980 	ld	0x5326, a
                           0002FB   981 	C$stm8s_tim3.c$783$1_0$438 ==.
                                    982 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 783: }
                           0002FB   983 	C$stm8s_tim3.c$783$1_0$438 ==.
                           0002FB   984 	XG$TIM3_SetIC2Prescaler$0$0 ==.
      009F13 81               [ 4]  985 	ret
                           0002FC   986 	G$TIM3_GetCapture1$0$0 ==.
                           0002FC   987 	C$stm8s_tim3.c$790$1_0$440 ==.
                                    988 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
                                    989 ;	-----------------------------------------
                                    990 ;	 function TIM3_GetCapture1
                                    991 ;	-----------------------------------------
      009F14                        992 _TIM3_GetCapture1:
      009F14 52 02            [ 2]  993 	sub	sp, #2
                           0002FE   994 	C$stm8s_tim3.c$796$1_0$440 ==.
                                    995 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
      009F16 C6 53 2D         [ 1]  996 	ld	a, 0x532d
      009F19 95               [ 1]  997 	ld	xh, a
                           000302   998 	C$stm8s_tim3.c$797$1_0$440 ==.
                                    999 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
      009F1A C6 53 2E         [ 1] 1000 	ld	a, 0x532e
                           000305  1001 	C$stm8s_tim3.c$799$1_0$440 ==.
                                   1002 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 799: tmpccr1 = (uint16_t)(tmpccr1l);
      009F1D 97               [ 1] 1003 	ld	xl, a
      009F1E 4F               [ 1] 1004 	clr	a
                           000307  1005 	C$stm8s_tim3.c$800$1_0$440 ==.
                                   1006 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      009F1F 0F 02            [ 1] 1007 	clr	(0x02, sp)
      009F21 89               [ 2] 1008 	pushw	x
      009F22 1A 01            [ 1] 1009 	or	a, (1, sp)
      009F24 85               [ 2] 1010 	popw	x
      009F25 01               [ 1] 1011 	rrwa	x
      009F26 1A 02            [ 1] 1012 	or	a, (0x02, sp)
      009F28 97               [ 1] 1013 	ld	xl, a
                           000311  1014 	C$stm8s_tim3.c$802$1_0$440 ==.
                                   1015 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
                           000311  1016 	C$stm8s_tim3.c$803$1_0$440 ==.
                                   1017 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 803: }
      009F29 5B 02            [ 2] 1018 	addw	sp, #2
                           000313  1019 	C$stm8s_tim3.c$803$1_0$440 ==.
                           000313  1020 	XG$TIM3_GetCapture1$0$0 ==.
      009F2B 81               [ 4] 1021 	ret
                           000314  1022 	G$TIM3_GetCapture2$0$0 ==.
                           000314  1023 	C$stm8s_tim3.c$810$1_0$442 ==.
                                   1024 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function TIM3_GetCapture2
                                   1027 ;	-----------------------------------------
      009F2C                       1028 _TIM3_GetCapture2:
      009F2C 52 02            [ 2] 1029 	sub	sp, #2
                           000316  1030 	C$stm8s_tim3.c$816$1_0$442 ==.
                                   1031 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
      009F2E C6 53 2F         [ 1] 1032 	ld	a, 0x532f
      009F31 95               [ 1] 1033 	ld	xh, a
                           00031A  1034 	C$stm8s_tim3.c$817$1_0$442 ==.
                                   1035 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
      009F32 C6 53 30         [ 1] 1036 	ld	a, 0x5330
                           00031D  1037 	C$stm8s_tim3.c$819$1_0$442 ==.
                                   1038 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 819: tmpccr2 = (uint16_t)(tmpccr2l);
      009F35 97               [ 1] 1039 	ld	xl, a
      009F36 4F               [ 1] 1040 	clr	a
                           00031F  1041 	C$stm8s_tim3.c$820$1_0$442 ==.
                                   1042 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      009F37 0F 02            [ 1] 1043 	clr	(0x02, sp)
      009F39 89               [ 2] 1044 	pushw	x
      009F3A 1A 01            [ 1] 1045 	or	a, (1, sp)
      009F3C 85               [ 2] 1046 	popw	x
      009F3D 01               [ 1] 1047 	rrwa	x
      009F3E 1A 02            [ 1] 1048 	or	a, (0x02, sp)
      009F40 97               [ 1] 1049 	ld	xl, a
                           000329  1050 	C$stm8s_tim3.c$822$1_0$442 ==.
                                   1051 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
                           000329  1052 	C$stm8s_tim3.c$823$1_0$442 ==.
                                   1053 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 823: }
      009F41 5B 02            [ 2] 1054 	addw	sp, #2
                           00032B  1055 	C$stm8s_tim3.c$823$1_0$442 ==.
                           00032B  1056 	XG$TIM3_GetCapture2$0$0 ==.
      009F43 81               [ 4] 1057 	ret
                           00032C  1058 	G$TIM3_GetCounter$0$0 ==.
                           00032C  1059 	C$stm8s_tim3.c$830$1_0$444 ==.
                                   1060 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function TIM3_GetCounter
                                   1063 ;	-----------------------------------------
      009F44                       1064 _TIM3_GetCounter:
      009F44 52 04            [ 2] 1065 	sub	sp, #4
                           00032E  1066 	C$stm8s_tim3.c$834$1_0$444 ==.
                                   1067 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
      009F46 C6 53 28         [ 1] 1068 	ld	a, 0x5328
      009F49 95               [ 1] 1069 	ld	xh, a
      009F4A 4F               [ 1] 1070 	clr	a
      009F4B 6B 02            [ 1] 1071 	ld	(0x02, sp), a
                           000335  1072 	C$stm8s_tim3.c$836$1_0$444 ==.
                                   1073 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
      009F4D C6 53 29         [ 1] 1074 	ld	a, 0x5329
      009F50 6B 04            [ 1] 1075 	ld	(0x04, sp), a
      009F52 0F 03            [ 1] 1076 	clr	(0x03, sp)
      009F54 7B 02            [ 1] 1077 	ld	a, (0x02, sp)
      009F56 1A 04            [ 1] 1078 	or	a, (0x04, sp)
      009F58 02               [ 1] 1079 	rlwa	x
      009F59 1A 03            [ 1] 1080 	or	a, (0x03, sp)
      009F5B 95               [ 1] 1081 	ld	xh, a
                           000344  1082 	C$stm8s_tim3.c$837$1_0$444 ==.
                                   1083 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 837: }
      009F5C 5B 04            [ 2] 1084 	addw	sp, #4
                           000346  1085 	C$stm8s_tim3.c$837$1_0$444 ==.
                           000346  1086 	XG$TIM3_GetCounter$0$0 ==.
      009F5E 81               [ 4] 1087 	ret
                           000347  1088 	G$TIM3_GetPrescaler$0$0 ==.
                           000347  1089 	C$stm8s_tim3.c$844$1_0$446 ==.
                                   1090 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
                                   1091 ;	-----------------------------------------
                                   1092 ;	 function TIM3_GetPrescaler
                                   1093 ;	-----------------------------------------
      009F5F                       1094 _TIM3_GetPrescaler:
                           000347  1095 	C$stm8s_tim3.c$847$1_0$446 ==.
                                   1096 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
      009F5F C6 53 2A         [ 1] 1097 	ld	a, 0x532a
                           00034A  1098 	C$stm8s_tim3.c$848$1_0$446 ==.
                                   1099 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 848: }
                           00034A  1100 	C$stm8s_tim3.c$848$1_0$446 ==.
                           00034A  1101 	XG$TIM3_GetPrescaler$0$0 ==.
      009F62 81               [ 4] 1102 	ret
                           00034B  1103 	G$TIM3_GetFlagStatus$0$0 ==.
                           00034B  1104 	C$stm8s_tim3.c$861$1_0$448 ==.
                                   1105 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1106 ;	-----------------------------------------
                                   1107 ;	 function TIM3_GetFlagStatus
                                   1108 ;	-----------------------------------------
      009F63                       1109 _TIM3_GetFlagStatus:
      009F63 52 03            [ 2] 1110 	sub	sp, #3
                           00034D  1111 	C$stm8s_tim3.c$869$1_0$448 ==.
                                   1112 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
      009F65 C6 53 22         [ 1] 1113 	ld	a, 0x5322
      009F68 6B 03            [ 1] 1114 	ld	(0x03, sp), a
      009F6A 7B 07            [ 1] 1115 	ld	a, (0x07, sp)
      009F6C 14 03            [ 1] 1116 	and	a, (0x03, sp)
      009F6E 6B 01            [ 1] 1117 	ld	(0x01, sp), a
                           000358  1118 	C$stm8s_tim3.c$870$1_0$448 ==.
                                   1119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
      009F70 7B 06            [ 1] 1120 	ld	a, (0x06, sp)
      009F72 6B 03            [ 1] 1121 	ld	(0x03, sp), a
      009F74 0F 02            [ 1] 1122 	clr	(0x02, sp)
                           00035E  1123 	C$stm8s_tim3.c$872$1_0$448 ==.
                                   1124 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
      009F76 C6 53 23         [ 1] 1125 	ld	a, 0x5323
      009F79 14 03            [ 1] 1126 	and	a, (0x03, sp)
      009F7B 1A 01            [ 1] 1127 	or	a, (0x01, sp)
      009F7D 27 04            [ 1] 1128 	jreq	00102$
                           000367  1129 	C$stm8s_tim3.c$874$2_0$449 ==.
                                   1130 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 874: bitstatus = SET;
      009F7F A6 01            [ 1] 1131 	ld	a, #0x01
      009F81 20 01            [ 2] 1132 	jra	00103$
      009F83                       1133 00102$:
                           00036B  1134 	C$stm8s_tim3.c$878$2_0$450 ==.
                                   1135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 878: bitstatus = RESET;
      009F83 4F               [ 1] 1136 	clr	a
      009F84                       1137 00103$:
                           00036C  1138 	C$stm8s_tim3.c$880$1_0$448 ==.
                                   1139 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
                           00036C  1140 	C$stm8s_tim3.c$881$1_0$448 ==.
                                   1141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 881: }
      009F84 5B 03            [ 2] 1142 	addw	sp, #3
                           00036E  1143 	C$stm8s_tim3.c$881$1_0$448 ==.
                           00036E  1144 	XG$TIM3_GetFlagStatus$0$0 ==.
      009F86 81               [ 4] 1145 	ret
                           00036F  1146 	G$TIM3_ClearFlag$0$0 ==.
                           00036F  1147 	C$stm8s_tim3.c$894$1_0$452 ==.
                                   1148 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
                                   1149 ;	-----------------------------------------
                                   1150 ;	 function TIM3_ClearFlag
                                   1151 ;	-----------------------------------------
      009F87                       1152 _TIM3_ClearFlag:
                           00036F  1153 	C$stm8s_tim3.c$900$1_0$452 ==.
                                   1154 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
      009F87 7B 04            [ 1] 1155 	ld	a, (0x04, sp)
      009F89 43               [ 1] 1156 	cpl	a
      009F8A C7 53 22         [ 1] 1157 	ld	0x5322, a
                           000375  1158 	C$stm8s_tim3.c$901$1_0$452 ==.
                                   1159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
      009F8D 7B 03            [ 1] 1160 	ld	a, (0x03, sp)
      009F8F 43               [ 1] 1161 	cpl	a
      009F90 C7 53 23         [ 1] 1162 	ld	0x5323, a
                           00037B  1163 	C$stm8s_tim3.c$902$1_0$452 ==.
                                   1164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 902: }
                           00037B  1165 	C$stm8s_tim3.c$902$1_0$452 ==.
                           00037B  1166 	XG$TIM3_ClearFlag$0$0 ==.
      009F93 81               [ 4] 1167 	ret
                           00037C  1168 	G$TIM3_GetITStatus$0$0 ==.
                           00037C  1169 	C$stm8s_tim3.c$913$1_0$454 ==.
                                   1170 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function TIM3_GetITStatus
                                   1173 ;	-----------------------------------------
      009F94                       1174 _TIM3_GetITStatus:
      009F94 88               [ 1] 1175 	push	a
                           00037D  1176 	C$stm8s_tim3.c$921$1_0$454 ==.
                                   1177 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
      009F95 C6 53 22         [ 1] 1178 	ld	a, 0x5322
      009F98 14 04            [ 1] 1179 	and	a, (0x04, sp)
      009F9A 6B 01            [ 1] 1180 	ld	(0x01, sp), a
                           000384  1181 	C$stm8s_tim3.c$923$1_0$454 ==.
                                   1182 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
      009F9C C6 53 21         [ 1] 1183 	ld	a, 0x5321
      009F9F 14 04            [ 1] 1184 	and	a, (0x04, sp)
                           000389  1185 	C$stm8s_tim3.c$925$1_0$454 ==.
                                   1186 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
      009FA1 0D 01            [ 1] 1187 	tnz	(0x01, sp)
      009FA3 27 07            [ 1] 1188 	jreq	00102$
      009FA5 4D               [ 1] 1189 	tnz	a
      009FA6 27 04            [ 1] 1190 	jreq	00102$
                           000390  1191 	C$stm8s_tim3.c$927$2_0$455 ==.
                                   1192 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 927: bitstatus = SET;
      009FA8 A6 01            [ 1] 1193 	ld	a, #0x01
      009FAA 20 01            [ 2] 1194 	jra	00103$
      009FAC                       1195 00102$:
                           000394  1196 	C$stm8s_tim3.c$931$2_0$456 ==.
                                   1197 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 931: bitstatus = RESET;
      009FAC 4F               [ 1] 1198 	clr	a
      009FAD                       1199 00103$:
                           000395  1200 	C$stm8s_tim3.c$933$1_0$454 ==.
                                   1201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
                           000395  1202 	C$stm8s_tim3.c$934$1_0$454 ==.
                                   1203 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 934: }
      009FAD 5B 01            [ 2] 1204 	addw	sp, #1
                           000397  1205 	C$stm8s_tim3.c$934$1_0$454 ==.
                           000397  1206 	XG$TIM3_GetITStatus$0$0 ==.
      009FAF 81               [ 4] 1207 	ret
                           000398  1208 	G$TIM3_ClearITPendingBit$0$0 ==.
                           000398  1209 	C$stm8s_tim3.c$945$1_0$458 ==.
                                   1210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function TIM3_ClearITPendingBit
                                   1213 ;	-----------------------------------------
      009FB0                       1214 _TIM3_ClearITPendingBit:
                           000398  1215 	C$stm8s_tim3.c$951$1_0$458 ==.
                                   1216 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
      009FB0 7B 03            [ 1] 1217 	ld	a, (0x03, sp)
      009FB2 43               [ 1] 1218 	cpl	a
      009FB3 C7 53 22         [ 1] 1219 	ld	0x5322, a
                           00039E  1220 	C$stm8s_tim3.c$952$1_0$458 ==.
                                   1221 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 952: }
                           00039E  1222 	C$stm8s_tim3.c$952$1_0$458 ==.
                           00039E  1223 	XG$TIM3_ClearITPendingBit$0$0 ==.
      009FB6 81               [ 4] 1224 	ret
                           00039F  1225 	Fstm8s_tim3$TI1_Config$0$0 ==.
                           00039F  1226 	C$stm8s_tim3.c$970$1_0$460 ==.
                                   1227 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function TI1_Config
                                   1230 ;	-----------------------------------------
      009FB7                       1231 _TI1_Config:
      009FB7 88               [ 1] 1232 	push	a
                           0003A0  1233 	C$stm8s_tim3.c$975$1_0$460 ==.
                                   1234 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      009FB8 72 11 53 27      [ 1] 1235 	bres	21287, #0
                           0003A4  1236 	C$stm8s_tim3.c$978$1_0$460 ==.
                                   1237 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
      009FBC C6 53 25         [ 1] 1238 	ld	a, 0x5325
      009FBF A4 0C            [ 1] 1239 	and	a, #0x0c
      009FC1 6B 01            [ 1] 1240 	ld	(0x01, sp), a
      009FC3 7B 06            [ 1] 1241 	ld	a, (0x06, sp)
      009FC5 4E               [ 1] 1242 	swap	a
      009FC6 A4 F0            [ 1] 1243 	and	a, #0xf0
      009FC8 1A 05            [ 1] 1244 	or	a, (0x05, sp)
      009FCA 1A 01            [ 1] 1245 	or	a, (0x01, sp)
      009FCC C7 53 25         [ 1] 1246 	ld	0x5325, a
                           0003B7  1247 	C$stm8s_tim3.c$981$1_0$460 ==.
                                   1248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      009FCF 0D 04            [ 1] 1249 	tnz	(0x04, sp)
      009FD1 27 06            [ 1] 1250 	jreq	00102$
                           0003BB  1251 	C$stm8s_tim3.c$983$2_0$461 ==.
                                   1252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      009FD3 72 12 53 27      [ 1] 1253 	bset	21287, #1
      009FD7 20 04            [ 2] 1254 	jra	00103$
      009FD9                       1255 00102$:
                           0003C1  1256 	C$stm8s_tim3.c$987$2_0$462 ==.
                                   1257 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      009FD9 72 13 53 27      [ 1] 1258 	bres	21287, #1
      009FDD                       1259 00103$:
                           0003C5  1260 	C$stm8s_tim3.c$990$1_0$460 ==.
                                   1261 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      009FDD 72 10 53 27      [ 1] 1262 	bset	21287, #0
                           0003C9  1263 	C$stm8s_tim3.c$991$1_0$460 ==.
                                   1264 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 991: }
      009FE1 84               [ 1] 1265 	pop	a
                           0003CA  1266 	C$stm8s_tim3.c$991$1_0$460 ==.
                           0003CA  1267 	XFstm8s_tim3$TI1_Config$0$0 ==.
      009FE2 81               [ 4] 1268 	ret
                           0003CB  1269 	Fstm8s_tim3$TI2_Config$0$0 ==.
                           0003CB  1270 	C$stm8s_tim3.c$1009$1_0$464 ==.
                                   1271 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
                                   1272 ;	-----------------------------------------
                                   1273 ;	 function TI2_Config
                                   1274 ;	-----------------------------------------
      009FE3                       1275 _TI2_Config:
      009FE3 88               [ 1] 1276 	push	a
                           0003CC  1277 	C$stm8s_tim3.c$1014$1_0$464 ==.
                                   1278 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      009FE4 72 19 53 27      [ 1] 1279 	bres	21287, #4
                           0003D0  1280 	C$stm8s_tim3.c$1017$1_0$464 ==.
                                   1281 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
      009FE8 C6 53 26         [ 1] 1282 	ld	a, 0x5326
      009FEB A4 0C            [ 1] 1283 	and	a, #0x0c
      009FED 6B 01            [ 1] 1284 	ld	(0x01, sp), a
                           0003D7  1285 	C$stm8s_tim3.c$1019$1_0$464 ==.
                                   1286 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
      009FEF 7B 06            [ 1] 1287 	ld	a, (0x06, sp)
      009FF1 4E               [ 1] 1288 	swap	a
      009FF2 A4 F0            [ 1] 1289 	and	a, #0xf0
      009FF4 1A 05            [ 1] 1290 	or	a, (0x05, sp)
      009FF6 1A 01            [ 1] 1291 	or	a, (0x01, sp)
      009FF8 C7 53 26         [ 1] 1292 	ld	0x5326, a
                           0003E3  1293 	C$stm8s_tim3.c$1022$1_0$464 ==.
                                   1294 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      009FFB 0D 04            [ 1] 1295 	tnz	(0x04, sp)
      009FFD 27 06            [ 1] 1296 	jreq	00102$
                           0003E7  1297 	C$stm8s_tim3.c$1024$2_0$465 ==.
                                   1298 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      009FFF 72 1A 53 27      [ 1] 1299 	bset	21287, #5
      00A003 20 04            [ 2] 1300 	jra	00103$
      00A005                       1301 00102$:
                           0003ED  1302 	C$stm8s_tim3.c$1028$2_0$466 ==.
                                   1303 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      00A005 72 1B 53 27      [ 1] 1304 	bres	21287, #5
      00A009                       1305 00103$:
                           0003F1  1306 	C$stm8s_tim3.c$1032$1_0$464 ==.
                                   1307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      00A009 72 18 53 27      [ 1] 1308 	bset	21287, #4
                           0003F5  1309 	C$stm8s_tim3.c$1033$1_0$464 ==.
                                   1310 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_tim3.c: 1033: }
      00A00D 84               [ 1] 1311 	pop	a
                           0003F6  1312 	C$stm8s_tim3.c$1033$1_0$464 ==.
                           0003F6  1313 	XFstm8s_tim3$TI2_Config$0$0 ==.
      00A00E 81               [ 4] 1314 	ret
                                   1315 	.area CODE
                                   1316 	.area CONST
                                   1317 	.area INITIALIZER
                                   1318 	.area CABS (ABS)
