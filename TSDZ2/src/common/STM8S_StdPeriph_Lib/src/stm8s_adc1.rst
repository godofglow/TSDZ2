                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_DeInit
                                     12 	.globl _ADC1_Init
                                     13 	.globl _ADC1_Cmd
                                     14 	.globl _ADC1_ScanModeCmd
                                     15 	.globl _ADC1_DataBufferCmd
                                     16 	.globl _ADC1_ITConfig
                                     17 	.globl _ADC1_PrescalerConfig
                                     18 	.globl _ADC1_SchmittTriggerConfig
                                     19 	.globl _ADC1_ConversionConfig
                                     20 	.globl _ADC1_ExternalTriggerConfig
                                     21 	.globl _ADC1_StartConversion
                                     22 	.globl _ADC1_GetConversionValue
                                     23 	.globl _ADC1_AWDChannelConfig
                                     24 	.globl _ADC1_SetHighThreshold
                                     25 	.globl _ADC1_SetLowThreshold
                                     26 	.globl _ADC1_GetBufferValue
                                     27 	.globl _ADC1_GetAWDChannelStatus
                                     28 	.globl _ADC1_GetFlagStatus
                                     29 	.globl _ADC1_ClearFlag
                                     30 	.globl _ADC1_GetITStatus
                                     31 	.globl _ADC1_ClearITPendingBit
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                           000000    69 	G$ADC1_DeInit$0$0 ==.
                           000000    70 	C$stm8s_adc1.c$52$0_0$346 ==.
                                     71 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 52: void ADC1_DeInit(void)
                                     72 ;	-----------------------------------------
                                     73 ;	 function ADC1_DeInit
                                     74 ;	-----------------------------------------
      00A0AF                         75 _ADC1_DeInit:
                           000000    76 	C$stm8s_adc1.c$54$1_0$346 ==.
                                     77 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
      00A0AF 35 00 54 00      [ 1]   78 	mov	0x5400+0, #0x00
                           000004    79 	C$stm8s_adc1.c$55$1_0$346 ==.
                                     80 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
      00A0B3 35 00 54 01      [ 1]   81 	mov	0x5401+0, #0x00
                           000008    82 	C$stm8s_adc1.c$56$1_0$346 ==.
                                     83 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
      00A0B7 35 00 54 02      [ 1]   84 	mov	0x5402+0, #0x00
                           00000C    85 	C$stm8s_adc1.c$57$1_0$346 ==.
                                     86 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
      00A0BB 35 00 54 03      [ 1]   87 	mov	0x5403+0, #0x00
                           000010    88 	C$stm8s_adc1.c$58$1_0$346 ==.
                                     89 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
      00A0BF 35 00 54 06      [ 1]   90 	mov	0x5406+0, #0x00
                           000014    91 	C$stm8s_adc1.c$59$1_0$346 ==.
                                     92 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
      00A0C3 35 00 54 07      [ 1]   93 	mov	0x5407+0, #0x00
                           000018    94 	C$stm8s_adc1.c$60$1_0$346 ==.
                                     95 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
      00A0C7 35 FF 54 08      [ 1]   96 	mov	0x5408+0, #0xff
                           00001C    97 	C$stm8s_adc1.c$61$1_0$346 ==.
                                     98 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
      00A0CB 35 03 54 09      [ 1]   99 	mov	0x5409+0, #0x03
                           000020   100 	C$stm8s_adc1.c$62$1_0$346 ==.
                                    101 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
      00A0CF 35 00 54 0A      [ 1]  102 	mov	0x540a+0, #0x00
                           000024   103 	C$stm8s_adc1.c$63$1_0$346 ==.
                                    104 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
      00A0D3 35 00 54 0B      [ 1]  105 	mov	0x540b+0, #0x00
                           000028   106 	C$stm8s_adc1.c$64$1_0$346 ==.
                                    107 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
      00A0D7 35 00 54 0E      [ 1]  108 	mov	0x540e+0, #0x00
                           00002C   109 	C$stm8s_adc1.c$65$1_0$346 ==.
                                    110 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
      00A0DB 35 00 54 0F      [ 1]  111 	mov	0x540f+0, #0x00
                           000030   112 	C$stm8s_adc1.c$66$1_0$346 ==.
                                    113 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 66: }
                           000030   114 	C$stm8s_adc1.c$66$1_0$346 ==.
                           000030   115 	XG$ADC1_DeInit$0$0 ==.
      00A0DF 81               [ 4]  116 	ret
                           000031   117 	G$ADC1_Init$0$0 ==.
                           000031   118 	C$stm8s_adc1.c$88$1_0$348 ==.
                                    119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                    120 ;	-----------------------------------------
                                    121 ;	 function ADC1_Init
                                    122 ;	-----------------------------------------
      00A0E0                        123 _ADC1_Init:
                           000031   124 	C$stm8s_adc1.c$93$1_0$348 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 93: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
      00A0E0 7B 08            [ 1]  126 	ld	a, (0x08, sp)
      00A0E2 88               [ 1]  127 	push	a
      00A0E3 7B 05            [ 1]  128 	ld	a, (0x05, sp)
      00A0E5 88               [ 1]  129 	push	a
      00A0E6 7B 05            [ 1]  130 	ld	a, (0x05, sp)
      00A0E8 88               [ 1]  131 	push	a
      00A0E9 CD A2 1C         [ 4]  132 	call	_ADC1_ConversionConfig
      00A0EC 5B 03            [ 2]  133 	addw	sp, #3
                           00003F   134 	C$stm8s_adc1.c$95$1_0$348 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 95: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
      00A0EE 7B 05            [ 1]  136 	ld	a, (0x05, sp)
      00A0F0 88               [ 1]  137 	push	a
      00A0F1 CD A1 5F         [ 4]  138 	call	_ADC1_PrescalerConfig
      00A0F4 84               [ 1]  139 	pop	a
                           000046   140 	C$stm8s_adc1.c$100$1_0$348 ==.
                                    141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 100: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
      00A0F5 7B 07            [ 1]  142 	ld	a, (0x07, sp)
      00A0F7 88               [ 1]  143 	push	a
      00A0F8 7B 07            [ 1]  144 	ld	a, (0x07, sp)
      00A0FA 88               [ 1]  145 	push	a
      00A0FB CD A2 48         [ 4]  146 	call	_ADC1_ExternalTriggerConfig
      00A0FE 5B 02            [ 2]  147 	addw	sp, #2
                           000051   148 	C$stm8s_adc1.c$105$1_0$348 ==.
                                    149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 105: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
      00A100 7B 0A            [ 1]  150 	ld	a, (0x0a, sp)
      00A102 88               [ 1]  151 	push	a
      00A103 7B 0A            [ 1]  152 	ld	a, (0x0a, sp)
      00A105 88               [ 1]  153 	push	a
      00A106 CD A1 70         [ 4]  154 	call	_ADC1_SchmittTriggerConfig
      00A109 5B 02            [ 2]  155 	addw	sp, #2
                           00005C   156 	C$stm8s_adc1.c$108$1_0$348 ==.
                                    157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 108: ADC1->CR1 |= ADC1_CR1_ADON;
      00A10B 72 10 54 01      [ 1]  158 	bset	21505, #0
                           000060   159 	C$stm8s_adc1.c$109$1_0$348 ==.
                                    160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 109: }
                           000060   161 	C$stm8s_adc1.c$109$1_0$348 ==.
                           000060   162 	XG$ADC1_Init$0$0 ==.
      00A10F 81               [ 4]  163 	ret
                           000061   164 	G$ADC1_Cmd$0$0 ==.
                           000061   165 	C$stm8s_adc1.c$116$1_0$350 ==.
                                    166 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 116: void ADC1_Cmd(FunctionalState NewState)
                                    167 ;	-----------------------------------------
                                    168 ;	 function ADC1_Cmd
                                    169 ;	-----------------------------------------
      00A110                        170 _ADC1_Cmd:
                           000061   171 	C$stm8s_adc1.c$121$1_0$350 ==.
                                    172 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 121: if (NewState != DISABLE)
      00A110 0D 03            [ 1]  173 	tnz	(0x03, sp)
      00A112 27 06            [ 1]  174 	jreq	00102$
                           000065   175 	C$stm8s_adc1.c$123$2_0$351 ==.
                                    176 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 123: ADC1->CR1 |= ADC1_CR1_ADON;
      00A114 72 10 54 01      [ 1]  177 	bset	21505, #0
      00A118 20 04            [ 2]  178 	jra	00104$
      00A11A                        179 00102$:
                           00006B   180 	C$stm8s_adc1.c$127$2_0$352 ==.
                                    181 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 127: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
      00A11A 72 11 54 01      [ 1]  182 	bres	21505, #0
      00A11E                        183 00104$:
                           00006F   184 	C$stm8s_adc1.c$129$1_0$350 ==.
                                    185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 129: }
                           00006F   186 	C$stm8s_adc1.c$129$1_0$350 ==.
                           00006F   187 	XG$ADC1_Cmd$0$0 ==.
      00A11E 81               [ 4]  188 	ret
                           000070   189 	G$ADC1_ScanModeCmd$0$0 ==.
                           000070   190 	C$stm8s_adc1.c$136$1_0$354 ==.
                                    191 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 136: void ADC1_ScanModeCmd(FunctionalState NewState)
                                    192 ;	-----------------------------------------
                                    193 ;	 function ADC1_ScanModeCmd
                                    194 ;	-----------------------------------------
      00A11F                        195 _ADC1_ScanModeCmd:
                           000070   196 	C$stm8s_adc1.c$141$1_0$354 ==.
                                    197 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 141: if (NewState != DISABLE)
      00A11F 0D 03            [ 1]  198 	tnz	(0x03, sp)
      00A121 27 06            [ 1]  199 	jreq	00102$
                           000074   200 	C$stm8s_adc1.c$143$2_0$355 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 143: ADC1->CR2 |= ADC1_CR2_SCAN;
      00A123 72 12 54 02      [ 1]  202 	bset	21506, #1
      00A127 20 04            [ 2]  203 	jra	00104$
      00A129                        204 00102$:
                           00007A   205 	C$stm8s_adc1.c$147$2_0$356 ==.
                                    206 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 147: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
      00A129 72 13 54 02      [ 1]  207 	bres	21506, #1
      00A12D                        208 00104$:
                           00007E   209 	C$stm8s_adc1.c$149$1_0$354 ==.
                                    210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 149: }
                           00007E   211 	C$stm8s_adc1.c$149$1_0$354 ==.
                           00007E   212 	XG$ADC1_ScanModeCmd$0$0 ==.
      00A12D 81               [ 4]  213 	ret
                           00007F   214 	G$ADC1_DataBufferCmd$0$0 ==.
                           00007F   215 	C$stm8s_adc1.c$156$1_0$358 ==.
                                    216 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 156: void ADC1_DataBufferCmd(FunctionalState NewState)
                                    217 ;	-----------------------------------------
                                    218 ;	 function ADC1_DataBufferCmd
                                    219 ;	-----------------------------------------
      00A12E                        220 _ADC1_DataBufferCmd:
                           00007F   221 	C$stm8s_adc1.c$161$1_0$358 ==.
                                    222 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 161: if (NewState != DISABLE)
      00A12E 0D 03            [ 1]  223 	tnz	(0x03, sp)
      00A130 27 06            [ 1]  224 	jreq	00102$
                           000083   225 	C$stm8s_adc1.c$163$2_0$359 ==.
                                    226 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 163: ADC1->CR3 |= ADC1_CR3_DBUF;
      00A132 72 1E 54 03      [ 1]  227 	bset	21507, #7
      00A136 20 04            [ 2]  228 	jra	00104$
      00A138                        229 00102$:
                           000089   230 	C$stm8s_adc1.c$167$2_0$360 ==.
                                    231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 167: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
      00A138 72 1F 54 03      [ 1]  232 	bres	21507, #7
      00A13C                        233 00104$:
                           00008D   234 	C$stm8s_adc1.c$169$1_0$358 ==.
                                    235 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 169: }
                           00008D   236 	C$stm8s_adc1.c$169$1_0$358 ==.
                           00008D   237 	XG$ADC1_DataBufferCmd$0$0 ==.
      00A13C 81               [ 4]  238 	ret
                           00008E   239 	G$ADC1_ITConfig$0$0 ==.
                           00008E   240 	C$stm8s_adc1.c$180$1_0$362 ==.
                                    241 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 180: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
                                    242 ;	-----------------------------------------
                                    243 ;	 function ADC1_ITConfig
                                    244 ;	-----------------------------------------
      00A13D                        245 _ADC1_ITConfig:
      00A13D 88               [ 1]  246 	push	a
                           00008F   247 	C$stm8s_adc1.c$182$1_0$362 ==.
                                    248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 182: if (NewState != DISABLE)
      00A13E 0D 06            [ 1]  249 	tnz	(0x06, sp)
      00A140 27 0E            [ 1]  250 	jreq	00102$
                           000093   251 	C$stm8s_adc1.c$185$2_0$363 ==.
                                    252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 185: ADC1->CSR |= (uint8_t)ADC1_IT;
      00A142 C6 54 00         [ 1]  253 	ld	a, 0x5400
      00A145 6B 01            [ 1]  254 	ld	(0x01, sp), a
      00A147 7B 05            [ 1]  255 	ld	a, (0x05, sp)
      00A149 1A 01            [ 1]  256 	or	a, (0x01, sp)
      00A14B C7 54 00         [ 1]  257 	ld	0x5400, a
      00A14E 20 0D            [ 2]  258 	jra	00104$
      00A150                        259 00102$:
                           0000A1   260 	C$stm8s_adc1.c$190$2_0$364 ==.
                                    261 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 190: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
      00A150 C6 54 00         [ 1]  262 	ld	a, 0x5400
      00A153 1E 04            [ 2]  263 	ldw	x, (0x04, sp)
      00A155 53               [ 2]  264 	cplw	x
      00A156 89               [ 2]  265 	pushw	x
      00A157 14 02            [ 1]  266 	and	a, (2, sp)
      00A159 85               [ 2]  267 	popw	x
      00A15A C7 54 00         [ 1]  268 	ld	0x5400, a
      00A15D                        269 00104$:
                           0000AE   270 	C$stm8s_adc1.c$192$1_0$362 ==.
                                    271 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 192: }
      00A15D 84               [ 1]  272 	pop	a
                           0000AF   273 	C$stm8s_adc1.c$192$1_0$362 ==.
                           0000AF   274 	XG$ADC1_ITConfig$0$0 ==.
      00A15E 81               [ 4]  275 	ret
                           0000B0   276 	G$ADC1_PrescalerConfig$0$0 ==.
                           0000B0   277 	C$stm8s_adc1.c$200$1_0$366 ==.
                                    278 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 200: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
                                    279 ;	-----------------------------------------
                                    280 ;	 function ADC1_PrescalerConfig
                                    281 ;	-----------------------------------------
      00A15F                        282 _ADC1_PrescalerConfig:
                           0000B0   283 	C$stm8s_adc1.c$203$1_0$366 ==.
                                    284 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 203: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
      00A15F C6 54 01         [ 1]  285 	ld	a, 0x5401
      00A162 A4 8F            [ 1]  286 	and	a, #0x8f
      00A164 C7 54 01         [ 1]  287 	ld	0x5401, a
                           0000B8   288 	C$stm8s_adc1.c$205$1_0$366 ==.
                                    289 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 205: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
      00A167 C6 54 01         [ 1]  290 	ld	a, 0x5401
      00A16A 1A 03            [ 1]  291 	or	a, (0x03, sp)
      00A16C C7 54 01         [ 1]  292 	ld	0x5401, a
                           0000C0   293 	C$stm8s_adc1.c$206$1_0$366 ==.
                                    294 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 206: }
                           0000C0   295 	C$stm8s_adc1.c$206$1_0$366 ==.
                           0000C0   296 	XG$ADC1_PrescalerConfig$0$0 ==.
      00A16F 81               [ 4]  297 	ret
                           0000C1   298 	G$ADC1_SchmittTriggerConfig$0$0 ==.
                           0000C1   299 	C$stm8s_adc1.c$216$1_0$368 ==.
                                    300 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 216: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                    301 ;	-----------------------------------------
                                    302 ;	 function ADC1_SchmittTriggerConfig
                                    303 ;	-----------------------------------------
      00A170                        304 _ADC1_SchmittTriggerConfig:
      00A170 52 04            [ 2]  305 	sub	sp, #4
                           0000C3   306 	C$stm8s_adc1.c$218$1_0$368 ==.
                                    307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 218: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
      00A172 7B 07            [ 1]  308 	ld	a, (0x07, sp)
      00A174 4C               [ 1]  309 	inc	a
      00A175 26 26            [ 1]  310 	jrne	00114$
                           0000C8   311 	C$stm8s_adc1.c$220$2_0$369 ==.
                                    312 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 220: if (NewState != DISABLE)
      00A177 0D 08            [ 1]  313 	tnz	(0x08, sp)
      00A179 27 11            [ 1]  314 	jreq	00102$
                           0000CC   315 	C$stm8s_adc1.c$222$3_0$370 ==.
                                    316 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 222: ADC1->TDRL &= (uint8_t)0x0;
      00A17B C6 54 07         [ 1]  317 	ld	a, 0x5407
      00A17E 35 00 54 07      [ 1]  318 	mov	0x5407+0, #0x00
                           0000D3   319 	C$stm8s_adc1.c$223$3_0$370 ==.
                                    320 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 223: ADC1->TDRH &= (uint8_t)0x0;
      00A182 C6 54 06         [ 1]  321 	ld	a, 0x5406
      00A185 35 00 54 06      [ 1]  322 	mov	0x5406+0, #0x00
      00A189 CC A2 19         [ 2]  323 	jp	00116$
      00A18C                        324 00102$:
                           0000DD   325 	C$stm8s_adc1.c$227$3_0$371 ==.
                                    326 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 227: ADC1->TDRL |= (uint8_t)0xFF;
      00A18C C6 54 07         [ 1]  327 	ld	a, 0x5407
      00A18F 35 FF 54 07      [ 1]  328 	mov	0x5407+0, #0xff
                           0000E4   329 	C$stm8s_adc1.c$228$3_0$371 ==.
                                    330 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 228: ADC1->TDRH |= (uint8_t)0xFF;
      00A193 C6 54 06         [ 1]  331 	ld	a, 0x5406
      00A196 35 FF 54 06      [ 1]  332 	mov	0x5406+0, #0xff
      00A19A CC A2 19         [ 2]  333 	jp	00116$
      00A19D                        334 00114$:
                           0000EE   335 	C$stm8s_adc1.c$231$1_0$368 ==.
                                    336 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 231: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
      00A19D 7B 07            [ 1]  337 	ld	a, (0x07, sp)
      00A19F A1 08            [ 1]  338 	cp	a, #0x08
      00A1A1 24 37            [ 1]  339 	jrnc	00111$
                           0000F4   340 	C$stm8s_adc1.c$233$2_0$372 ==.
                                    341 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 233: if (NewState != DISABLE)
      00A1A3 0D 08            [ 1]  342 	tnz	(0x08, sp)
      00A1A5 27 1A            [ 1]  343 	jreq	00105$
                           0000F8   344 	C$stm8s_adc1.c$235$3_0$373 ==.
                                    345 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 235: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      00A1A7 C6 54 07         [ 1]  346 	ld	a, 0x5407
      00A1AA 6B 03            [ 1]  347 	ld	(0x03, sp), a
      00A1AC A6 01            [ 1]  348 	ld	a, #0x01
      00A1AE 88               [ 1]  349 	push	a
      00A1AF 7B 08            [ 1]  350 	ld	a, (0x08, sp)
      00A1B1 27 05            [ 1]  351 	jreq	00145$
      00A1B3                        352 00144$:
      00A1B3 08 01            [ 1]  353 	sll	(1, sp)
      00A1B5 4A               [ 1]  354 	dec	a
      00A1B6 26 FB            [ 1]  355 	jrne	00144$
      00A1B8                        356 00145$:
      00A1B8 84               [ 1]  357 	pop	a
      00A1B9 43               [ 1]  358 	cpl	a
      00A1BA 14 03            [ 1]  359 	and	a, (0x03, sp)
      00A1BC C7 54 07         [ 1]  360 	ld	0x5407, a
      00A1BF 20 58            [ 2]  361 	jra	00116$
      00A1C1                        362 00105$:
                           000112   363 	C$stm8s_adc1.c$239$3_0$374 ==.
                                    364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 239: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
      00A1C1 C6 54 07         [ 1]  365 	ld	a, 0x5407
      00A1C4 88               [ 1]  366 	push	a
      00A1C5 A6 01            [ 1]  367 	ld	a, #0x01
      00A1C7 6B 03            [ 1]  368 	ld	(0x03, sp), a
      00A1C9 7B 08            [ 1]  369 	ld	a, (0x08, sp)
      00A1CB 27 05            [ 1]  370 	jreq	00147$
      00A1CD                        371 00146$:
      00A1CD 08 03            [ 1]  372 	sll	(0x03, sp)
      00A1CF 4A               [ 1]  373 	dec	a
      00A1D0 26 FB            [ 1]  374 	jrne	00146$
      00A1D2                        375 00147$:
      00A1D2 84               [ 1]  376 	pop	a
      00A1D3 1A 02            [ 1]  377 	or	a, (0x02, sp)
      00A1D5 C7 54 07         [ 1]  378 	ld	0x5407, a
      00A1D8 20 3F            [ 2]  379 	jra	00116$
      00A1DA                        380 00111$:
                           00012B   381 	C$stm8s_adc1.c$244$2_0$375 ==.
                                    382 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 244: if (NewState != DISABLE)
      00A1DA 0D 08            [ 1]  383 	tnz	(0x08, sp)
      00A1DC 27 1F            [ 1]  384 	jreq	00108$
                           00012F   385 	C$stm8s_adc1.c$246$3_0$376 ==.
                                    386 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 246: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      00A1DE C6 54 06         [ 1]  387 	ld	a, 0x5406
      00A1E1 6B 04            [ 1]  388 	ld	(0x04, sp), a
      00A1E3 7B 07            [ 1]  389 	ld	a, (0x07, sp)
      00A1E5 A0 08            [ 1]  390 	sub	a, #0x08
      00A1E7 97               [ 1]  391 	ld	xl, a
      00A1E8 A6 01            [ 1]  392 	ld	a, #0x01
      00A1EA 88               [ 1]  393 	push	a
      00A1EB 9F               [ 1]  394 	ld	a, xl
      00A1EC 4D               [ 1]  395 	tnz	a
      00A1ED 27 05            [ 1]  396 	jreq	00150$
      00A1EF                        397 00149$:
      00A1EF 08 01            [ 1]  398 	sll	(1, sp)
      00A1F1 4A               [ 1]  399 	dec	a
      00A1F2 26 FB            [ 1]  400 	jrne	00149$
      00A1F4                        401 00150$:
      00A1F4 84               [ 1]  402 	pop	a
      00A1F5 43               [ 1]  403 	cpl	a
      00A1F6 14 04            [ 1]  404 	and	a, (0x04, sp)
      00A1F8 C7 54 06         [ 1]  405 	ld	0x5406, a
      00A1FB 20 1C            [ 2]  406 	jra	00116$
      00A1FD                        407 00108$:
                           00014E   408 	C$stm8s_adc1.c$250$3_0$377 ==.
                                    409 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 250: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
      00A1FD C6 54 06         [ 1]  410 	ld	a, 0x5406
      00A200 97               [ 1]  411 	ld	xl, a
      00A201 7B 07            [ 1]  412 	ld	a, (0x07, sp)
      00A203 A0 08            [ 1]  413 	sub	a, #0x08
      00A205 88               [ 1]  414 	push	a
      00A206 A6 01            [ 1]  415 	ld	a, #0x01
      00A208 6B 02            [ 1]  416 	ld	(0x02, sp), a
      00A20A 84               [ 1]  417 	pop	a
      00A20B 4D               [ 1]  418 	tnz	a
      00A20C 27 05            [ 1]  419 	jreq	00152$
      00A20E                        420 00151$:
      00A20E 08 01            [ 1]  421 	sll	(0x01, sp)
      00A210 4A               [ 1]  422 	dec	a
      00A211 26 FB            [ 1]  423 	jrne	00151$
      00A213                        424 00152$:
      00A213 9F               [ 1]  425 	ld	a, xl
      00A214 1A 01            [ 1]  426 	or	a, (0x01, sp)
      00A216 C7 54 06         [ 1]  427 	ld	0x5406, a
      00A219                        428 00116$:
                           00016A   429 	C$stm8s_adc1.c$253$1_0$368 ==.
                                    430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 253: }
      00A219 5B 04            [ 2]  431 	addw	sp, #4
                           00016C   432 	C$stm8s_adc1.c$253$1_0$368 ==.
                           00016C   433 	XG$ADC1_SchmittTriggerConfig$0$0 ==.
      00A21B 81               [ 4]  434 	ret
                           00016D   435 	G$ADC1_ConversionConfig$0$0 ==.
                           00016D   436 	C$stm8s_adc1.c$265$1_0$379 ==.
                                    437 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 265: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                    438 ;	-----------------------------------------
                                    439 ;	 function ADC1_ConversionConfig
                                    440 ;	-----------------------------------------
      00A21C                        441 _ADC1_ConversionConfig:
                           00016D   442 	C$stm8s_adc1.c$268$1_0$379 ==.
                                    443 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 268: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
      00A21C 72 17 54 02      [ 1]  444 	bres	21506, #3
                           000171   445 	C$stm8s_adc1.c$270$1_0$379 ==.
                                    446 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 270: ADC1->CR2 |= (uint8_t)(ADC1_Align);
      00A220 C6 54 02         [ 1]  447 	ld	a, 0x5402
      00A223 1A 05            [ 1]  448 	or	a, (0x05, sp)
      00A225 C7 54 02         [ 1]  449 	ld	0x5402, a
                           000179   450 	C$stm8s_adc1.c$272$1_0$379 ==.
                                    451 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 272: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
      00A228 7B 03            [ 1]  452 	ld	a, (0x03, sp)
      00A22A 4A               [ 1]  453 	dec	a
      00A22B 26 06            [ 1]  454 	jrne	00102$
                           00017E   455 	C$stm8s_adc1.c$275$2_0$380 ==.
                                    456 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 275: ADC1->CR1 |= ADC1_CR1_CONT;
      00A22D 72 12 54 01      [ 1]  457 	bset	21505, #1
      00A231 20 04            [ 2]  458 	jra	00103$
      00A233                        459 00102$:
                           000184   460 	C$stm8s_adc1.c$280$2_0$381 ==.
                                    461 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 280: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
      00A233 72 13 54 01      [ 1]  462 	bres	21505, #1
      00A237                        463 00103$:
                           000188   464 	C$stm8s_adc1.c$284$1_0$379 ==.
                                    465 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 284: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
      00A237 C6 54 00         [ 1]  466 	ld	a, 0x5400
      00A23A A4 F0            [ 1]  467 	and	a, #0xf0
      00A23C C7 54 00         [ 1]  468 	ld	0x5400, a
                           000190   469 	C$stm8s_adc1.c$286$1_0$379 ==.
                                    470 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 286: ADC1->CSR |= (uint8_t)(ADC1_Channel);
      00A23F C6 54 00         [ 1]  471 	ld	a, 0x5400
      00A242 1A 04            [ 1]  472 	or	a, (0x04, sp)
      00A244 C7 54 00         [ 1]  473 	ld	0x5400, a
                           000198   474 	C$stm8s_adc1.c$287$1_0$379 ==.
                                    475 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 287: }
                           000198   476 	C$stm8s_adc1.c$287$1_0$379 ==.
                           000198   477 	XG$ADC1_ConversionConfig$0$0 ==.
      00A247 81               [ 4]  478 	ret
                           000199   479 	G$ADC1_ExternalTriggerConfig$0$0 ==.
                           000199   480 	C$stm8s_adc1.c$299$1_0$383 ==.
                                    481 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 299: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
                                    482 ;	-----------------------------------------
                                    483 ;	 function ADC1_ExternalTriggerConfig
                                    484 ;	-----------------------------------------
      00A248                        485 _ADC1_ExternalTriggerConfig:
                           000199   486 	C$stm8s_adc1.c$302$1_0$383 ==.
                                    487 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 302: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
      00A248 C6 54 02         [ 1]  488 	ld	a, 0x5402
      00A24B A4 CF            [ 1]  489 	and	a, #0xcf
      00A24D C7 54 02         [ 1]  490 	ld	0x5402, a
                           0001A1   491 	C$stm8s_adc1.c$304$1_0$383 ==.
                                    492 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 304: if (NewState != DISABLE)
      00A250 0D 04            [ 1]  493 	tnz	(0x04, sp)
      00A252 27 06            [ 1]  494 	jreq	00102$
                           0001A5   495 	C$stm8s_adc1.c$307$2_0$384 ==.
                                    496 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 307: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
      00A254 72 1C 54 02      [ 1]  497 	bset	21506, #6
      00A258 20 04            [ 2]  498 	jra	00103$
      00A25A                        499 00102$:
                           0001AB   500 	C$stm8s_adc1.c$312$2_0$385 ==.
                                    501 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 312: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
      00A25A 72 1D 54 02      [ 1]  502 	bres	21506, #6
      00A25E                        503 00103$:
                           0001AF   504 	C$stm8s_adc1.c$316$1_0$383 ==.
                                    505 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 316: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
      00A25E C6 54 02         [ 1]  506 	ld	a, 0x5402
      00A261 1A 03            [ 1]  507 	or	a, (0x03, sp)
      00A263 C7 54 02         [ 1]  508 	ld	0x5402, a
                           0001B7   509 	C$stm8s_adc1.c$317$1_0$383 ==.
                                    510 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 317: }
                           0001B7   511 	C$stm8s_adc1.c$317$1_0$383 ==.
                           0001B7   512 	XG$ADC1_ExternalTriggerConfig$0$0 ==.
      00A266 81               [ 4]  513 	ret
                           0001B8   514 	G$ADC1_StartConversion$0$0 ==.
                           0001B8   515 	C$stm8s_adc1.c$328$1_0$387 ==.
                                    516 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 328: void ADC1_StartConversion(void)
                                    517 ;	-----------------------------------------
                                    518 ;	 function ADC1_StartConversion
                                    519 ;	-----------------------------------------
      00A267                        520 _ADC1_StartConversion:
                           0001B8   521 	C$stm8s_adc1.c$330$1_0$387 ==.
                                    522 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 330: ADC1->CR1 |= ADC1_CR1_ADON;
      00A267 72 10 54 01      [ 1]  523 	bset	21505, #0
                           0001BC   524 	C$stm8s_adc1.c$331$1_0$387 ==.
                                    525 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 331: }
                           0001BC   526 	C$stm8s_adc1.c$331$1_0$387 ==.
                           0001BC   527 	XG$ADC1_StartConversion$0$0 ==.
      00A26B 81               [ 4]  528 	ret
                           0001BD   529 	G$ADC1_GetConversionValue$0$0 ==.
                           0001BD   530 	C$stm8s_adc1.c$340$1_0$389 ==.
                                    531 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 340: uint16_t ADC1_GetConversionValue(void)
                                    532 ;	-----------------------------------------
                                    533 ;	 function ADC1_GetConversionValue
                                    534 ;	-----------------------------------------
      00A26C                        535 _ADC1_GetConversionValue:
      00A26C 52 08            [ 2]  536 	sub	sp, #8
                           0001BF   537 	C$stm8s_adc1.c$345$1_0$389 ==.
                                    538 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 345: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00A26E C6 54 02         [ 1]  539 	ld	a, 0x5402
      00A271 A5 08            [ 1]  540 	bcp	a, #0x08
      00A273 27 15            [ 1]  541 	jreq	00102$
                           0001C6   542 	C$stm8s_adc1.c$348$2_0$390 ==.
                                    543 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 348: templ = ADC1->DRL;
      00A275 C6 54 05         [ 1]  544 	ld	a, 0x5405
      00A278 97               [ 1]  545 	ld	xl, a
                           0001CA   546 	C$stm8s_adc1.c$350$2_0$390 ==.
                                    547 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 350: temph = ADC1->DRH;
      00A279 C6 54 04         [ 1]  548 	ld	a, 0x5404
                           0001CD   549 	C$stm8s_adc1.c$352$2_0$390 ==.
                                    550 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 352: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      00A27C 0F 02            [ 1]  551 	clr	(0x02, sp)
      00A27E 0F 07            [ 1]  552 	clr	(0x07, sp)
      00A280 1A 07            [ 1]  553 	or	a, (0x07, sp)
      00A282 01               [ 1]  554 	rrwa	x
      00A283 1A 02            [ 1]  555 	or	a, (0x02, sp)
      00A285 97               [ 1]  556 	ld	xl, a
      00A286 1F 05            [ 2]  557 	ldw	(0x05, sp), x
      00A288 20 1D            [ 2]  558 	jra	00103$
      00A28A                        559 00102$:
                           0001DB   560 	C$stm8s_adc1.c$357$2_0$391 ==.
                                    561 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 357: temph = ADC1->DRH;
      00A28A C6 54 04         [ 1]  562 	ld	a, 0x5404
      00A28D 5F               [ 1]  563 	clrw	x
      00A28E 97               [ 1]  564 	ld	xl, a
      00A28F 51               [ 1]  565 	exgw	x, y
                           0001E1   566 	C$stm8s_adc1.c$359$2_0$391 ==.
                                    567 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 359: templ = ADC1->DRL;
      00A290 C6 54 05         [ 1]  568 	ld	a, 0x5405
                           0001E4   569 	C$stm8s_adc1.c$361$2_0$391 ==.
                                    570 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 361: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
      00A293 5F               [ 1]  571 	clrw	x
      00A294 97               [ 1]  572 	ld	xl, a
      00A295 58               [ 2]  573 	sllw	x
      00A296 58               [ 2]  574 	sllw	x
      00A297 58               [ 2]  575 	sllw	x
      00A298 58               [ 2]  576 	sllw	x
      00A299 58               [ 2]  577 	sllw	x
      00A29A 58               [ 2]  578 	sllw	x
      00A29B 1F 03            [ 2]  579 	ldw	(0x03, sp), x
      00A29D 7B 04            [ 1]  580 	ld	a, (0x04, sp)
      00A29F 97               [ 1]  581 	ld	xl, a
      00A2A0 90 9F            [ 1]  582 	ld	a, yl
      00A2A2 1A 03            [ 1]  583 	or	a, (0x03, sp)
      00A2A4 95               [ 1]  584 	ld	xh, a
      00A2A5 1F 05            [ 2]  585 	ldw	(0x05, sp), x
      00A2A7                        586 00103$:
                           0001F8   587 	C$stm8s_adc1.c$364$1_0$389 ==.
                                    588 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 364: return ((uint16_t)temph);
      00A2A7 1E 05            [ 2]  589 	ldw	x, (0x05, sp)
                           0001FA   590 	C$stm8s_adc1.c$365$1_0$389 ==.
                                    591 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 365: }
      00A2A9 5B 08            [ 2]  592 	addw	sp, #8
                           0001FC   593 	C$stm8s_adc1.c$365$1_0$389 ==.
                           0001FC   594 	XG$ADC1_GetConversionValue$0$0 ==.
      00A2AB 81               [ 4]  595 	ret
                           0001FD   596 	G$ADC1_AWDChannelConfig$0$0 ==.
                           0001FD   597 	C$stm8s_adc1.c$375$1_0$393 ==.
                                    598 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 375: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
                                    599 ;	-----------------------------------------
                                    600 ;	 function ADC1_AWDChannelConfig
                                    601 ;	-----------------------------------------
      00A2AC                        602 _ADC1_AWDChannelConfig:
      00A2AC 52 04            [ 2]  603 	sub	sp, #4
                           0001FF   604 	C$stm8s_adc1.c$381$1_0$393 ==.
                                    605 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 381: if (Channel < (uint8_t)8)
      00A2AE 7B 07            [ 1]  606 	ld	a, (0x07, sp)
      00A2B0 A1 08            [ 1]  607 	cp	a, #0x08
      00A2B2 24 37            [ 1]  608 	jrnc	00108$
                           000205   609 	C$stm8s_adc1.c$383$2_0$394 ==.
                                    610 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 383: if (NewState != DISABLE)
      00A2B4 0D 08            [ 1]  611 	tnz	(0x08, sp)
      00A2B6 27 19            [ 1]  612 	jreq	00102$
                           000209   613 	C$stm8s_adc1.c$385$3_0$395 ==.
                                    614 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 385: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      00A2B8 C6 54 0F         [ 1]  615 	ld	a, 0x540f
      00A2BB 88               [ 1]  616 	push	a
      00A2BC A6 01            [ 1]  617 	ld	a, #0x01
      00A2BE 6B 04            [ 1]  618 	ld	(0x04, sp), a
      00A2C0 7B 08            [ 1]  619 	ld	a, (0x08, sp)
      00A2C2 27 05            [ 1]  620 	jreq	00127$
      00A2C4                        621 00126$:
      00A2C4 08 04            [ 1]  622 	sll	(0x04, sp)
      00A2C6 4A               [ 1]  623 	dec	a
      00A2C7 26 FB            [ 1]  624 	jrne	00126$
      00A2C9                        625 00127$:
      00A2C9 84               [ 1]  626 	pop	a
      00A2CA 1A 03            [ 1]  627 	or	a, (0x03, sp)
      00A2CC C7 54 0F         [ 1]  628 	ld	0x540f, a
      00A2CF 20 59            [ 2]  629 	jra	00110$
      00A2D1                        630 00102$:
                           000222   631 	C$stm8s_adc1.c$389$3_0$396 ==.
                                    632 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 389: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
      00A2D1 C6 54 0F         [ 1]  633 	ld	a, 0x540f
      00A2D4 6B 02            [ 1]  634 	ld	(0x02, sp), a
      00A2D6 A6 01            [ 1]  635 	ld	a, #0x01
      00A2D8 88               [ 1]  636 	push	a
      00A2D9 7B 08            [ 1]  637 	ld	a, (0x08, sp)
      00A2DB 27 05            [ 1]  638 	jreq	00129$
      00A2DD                        639 00128$:
      00A2DD 08 01            [ 1]  640 	sll	(1, sp)
      00A2DF 4A               [ 1]  641 	dec	a
      00A2E0 26 FB            [ 1]  642 	jrne	00128$
      00A2E2                        643 00129$:
      00A2E2 84               [ 1]  644 	pop	a
      00A2E3 43               [ 1]  645 	cpl	a
      00A2E4 14 02            [ 1]  646 	and	a, (0x02, sp)
      00A2E6 C7 54 0F         [ 1]  647 	ld	0x540f, a
      00A2E9 20 3F            [ 2]  648 	jra	00110$
      00A2EB                        649 00108$:
                           00023C   650 	C$stm8s_adc1.c$394$2_0$397 ==.
                                    651 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 394: if (NewState != DISABLE)
      00A2EB 0D 08            [ 1]  652 	tnz	(0x08, sp)
      00A2ED 27 1E            [ 1]  653 	jreq	00105$
                           000240   654 	C$stm8s_adc1.c$396$3_0$398 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 396: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      00A2EF C6 54 0E         [ 1]  656 	ld	a, 0x540e
      00A2F2 97               [ 1]  657 	ld	xl, a
      00A2F3 7B 07            [ 1]  658 	ld	a, (0x07, sp)
      00A2F5 A0 08            [ 1]  659 	sub	a, #0x08
      00A2F7 88               [ 1]  660 	push	a
      00A2F8 A6 01            [ 1]  661 	ld	a, #0x01
      00A2FA 6B 05            [ 1]  662 	ld	(0x05, sp), a
      00A2FC 84               [ 1]  663 	pop	a
      00A2FD 4D               [ 1]  664 	tnz	a
      00A2FE 27 05            [ 1]  665 	jreq	00132$
      00A300                        666 00131$:
      00A300 08 04            [ 1]  667 	sll	(0x04, sp)
      00A302 4A               [ 1]  668 	dec	a
      00A303 26 FB            [ 1]  669 	jrne	00131$
      00A305                        670 00132$:
      00A305 9F               [ 1]  671 	ld	a, xl
      00A306 1A 04            [ 1]  672 	or	a, (0x04, sp)
      00A308 C7 54 0E         [ 1]  673 	ld	0x540e, a
      00A30B 20 1D            [ 2]  674 	jra	00110$
      00A30D                        675 00105$:
                           00025E   676 	C$stm8s_adc1.c$400$3_0$399 ==.
                                    677 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 400: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
      00A30D C6 54 0E         [ 1]  678 	ld	a, 0x540e
      00A310 6B 01            [ 1]  679 	ld	(0x01, sp), a
      00A312 7B 07            [ 1]  680 	ld	a, (0x07, sp)
      00A314 A0 08            [ 1]  681 	sub	a, #0x08
      00A316 97               [ 1]  682 	ld	xl, a
      00A317 A6 01            [ 1]  683 	ld	a, #0x01
      00A319 88               [ 1]  684 	push	a
      00A31A 9F               [ 1]  685 	ld	a, xl
      00A31B 4D               [ 1]  686 	tnz	a
      00A31C 27 05            [ 1]  687 	jreq	00134$
      00A31E                        688 00133$:
      00A31E 08 01            [ 1]  689 	sll	(1, sp)
      00A320 4A               [ 1]  690 	dec	a
      00A321 26 FB            [ 1]  691 	jrne	00133$
      00A323                        692 00134$:
      00A323 84               [ 1]  693 	pop	a
      00A324 43               [ 1]  694 	cpl	a
      00A325 14 01            [ 1]  695 	and	a, (0x01, sp)
      00A327 C7 54 0E         [ 1]  696 	ld	0x540e, a
      00A32A                        697 00110$:
                           00027B   698 	C$stm8s_adc1.c$403$1_0$393 ==.
                                    699 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 403: }
      00A32A 5B 04            [ 2]  700 	addw	sp, #4
                           00027D   701 	C$stm8s_adc1.c$403$1_0$393 ==.
                           00027D   702 	XG$ADC1_AWDChannelConfig$0$0 ==.
      00A32C 81               [ 4]  703 	ret
                           00027E   704 	G$ADC1_SetHighThreshold$0$0 ==.
                           00027E   705 	C$stm8s_adc1.c$411$1_0$401 ==.
                                    706 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 411: void ADC1_SetHighThreshold(uint16_t Threshold)
                                    707 ;	-----------------------------------------
                                    708 ;	 function ADC1_SetHighThreshold
                                    709 ;	-----------------------------------------
      00A32D                        710 _ADC1_SetHighThreshold:
                           00027E   711 	C$stm8s_adc1.c$413$1_0$401 ==.
                                    712 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 413: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
      00A32D 1E 03            [ 2]  713 	ldw	x, (0x03, sp)
      00A32F 54               [ 2]  714 	srlw	x
      00A330 54               [ 2]  715 	srlw	x
      00A331 9F               [ 1]  716 	ld	a, xl
      00A332 C7 54 08         [ 1]  717 	ld	0x5408, a
                           000286   718 	C$stm8s_adc1.c$414$1_0$401 ==.
                                    719 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 414: ADC1->HTRL = (uint8_t)Threshold;
      00A335 7B 04            [ 1]  720 	ld	a, (0x04, sp)
      00A337 C7 54 09         [ 1]  721 	ld	0x5409, a
                           00028B   722 	C$stm8s_adc1.c$415$1_0$401 ==.
                                    723 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 415: }
                           00028B   724 	C$stm8s_adc1.c$415$1_0$401 ==.
                           00028B   725 	XG$ADC1_SetHighThreshold$0$0 ==.
      00A33A 81               [ 4]  726 	ret
                           00028C   727 	G$ADC1_SetLowThreshold$0$0 ==.
                           00028C   728 	C$stm8s_adc1.c$423$1_0$403 ==.
                                    729 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 423: void ADC1_SetLowThreshold(uint16_t Threshold)
                                    730 ;	-----------------------------------------
                                    731 ;	 function ADC1_SetLowThreshold
                                    732 ;	-----------------------------------------
      00A33B                        733 _ADC1_SetLowThreshold:
                           00028C   734 	C$stm8s_adc1.c$425$1_0$403 ==.
                                    735 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 425: ADC1->LTRL = (uint8_t)Threshold;
      00A33B 7B 04            [ 1]  736 	ld	a, (0x04, sp)
      00A33D C7 54 0B         [ 1]  737 	ld	0x540b, a
                           000291   738 	C$stm8s_adc1.c$426$1_0$403 ==.
                                    739 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 426: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
      00A340 1E 03            [ 2]  740 	ldw	x, (0x03, sp)
      00A342 54               [ 2]  741 	srlw	x
      00A343 54               [ 2]  742 	srlw	x
      00A344 9F               [ 1]  743 	ld	a, xl
      00A345 C7 54 0A         [ 1]  744 	ld	0x540a, a
                           000299   745 	C$stm8s_adc1.c$427$1_0$403 ==.
                                    746 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 427: }
                           000299   747 	C$stm8s_adc1.c$427$1_0$403 ==.
                           000299   748 	XG$ADC1_SetLowThreshold$0$0 ==.
      00A348 81               [ 4]  749 	ret
                           00029A   750 	G$ADC1_GetBufferValue$0$0 ==.
                           00029A   751 	C$stm8s_adc1.c$436$1_0$405 ==.
                                    752 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 436: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
                                    753 ;	-----------------------------------------
                                    754 ;	 function ADC1_GetBufferValue
                                    755 ;	-----------------------------------------
      00A349                        756 _ADC1_GetBufferValue:
      00A349 52 08            [ 2]  757 	sub	sp, #8
                           00029C   758 	C$stm8s_adc1.c$444$1_0$405 ==.
                                    759 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 444: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00A34B C6 54 02         [ 1]  760 	ld	a, 0x5402
      00A34E A5 08            [ 1]  761 	bcp	a, #0x08
      00A350 27 20            [ 1]  762 	jreq	00102$
                           0002A3   763 	C$stm8s_adc1.c$447$2_0$406 ==.
                                    764 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 447: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      00A352 7B 0B            [ 1]  765 	ld	a, (0x0b, sp)
      00A354 48               [ 1]  766 	sll	a
      00A355 5F               [ 1]  767 	clrw	x
      00A356 97               [ 1]  768 	ld	xl, a
      00A357 51               [ 1]  769 	exgw	x, y
      00A358 93               [ 1]  770 	ldw	x, y
      00A359 1C 53 E1         [ 2]  771 	addw	x, #0x53e1
      00A35C F6               [ 1]  772 	ld	a, (x)
      00A35D 97               [ 1]  773 	ld	xl, a
                           0002AF   774 	C$stm8s_adc1.c$449$2_0$406 ==.
                                    775 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 449: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      00A35E 72 A9 53 E0      [ 2]  776 	addw	y, #0x53e0
      00A362 90 F6            [ 1]  777 	ld	a, (y)
                           0002B5   778 	C$stm8s_adc1.c$451$2_0$406 ==.
                                    779 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 451: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      00A364 0F 06            [ 1]  780 	clr	(0x06, sp)
      00A366 0F 03            [ 1]  781 	clr	(0x03, sp)
      00A368 1A 03            [ 1]  782 	or	a, (0x03, sp)
      00A36A 01               [ 1]  783 	rrwa	x
      00A36B 1A 06            [ 1]  784 	or	a, (0x06, sp)
      00A36D 97               [ 1]  785 	ld	xl, a
      00A36E 1F 07            [ 2]  786 	ldw	(0x07, sp), x
      00A370 20 29            [ 2]  787 	jra	00103$
      00A372                        788 00102$:
                           0002C3   789 	C$stm8s_adc1.c$456$2_0$407 ==.
                                    790 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 456: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      00A372 7B 0B            [ 1]  791 	ld	a, (0x0b, sp)
      00A374 48               [ 1]  792 	sll	a
      00A375 5F               [ 1]  793 	clrw	x
      00A376 97               [ 1]  794 	ld	xl, a
      00A377 90 93            [ 1]  795 	ldw	y, x
      00A379 72 A9 53 E0      [ 2]  796 	addw	y, #0x53e0
      00A37D 90 F6            [ 1]  797 	ld	a, (y)
      00A37F 90 5F            [ 1]  798 	clrw	y
      00A381 90 97            [ 1]  799 	ld	yl, a
                           0002D4   800 	C$stm8s_adc1.c$458$2_0$407 ==.
                                    801 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 458: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      00A383 1C 53 E1         [ 2]  802 	addw	x, #0x53e1
      00A386 F6               [ 1]  803 	ld	a, (x)
                           0002D8   804 	C$stm8s_adc1.c$460$2_0$407 ==.
                                    805 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 460: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
      00A387 5F               [ 1]  806 	clrw	x
      00A388 97               [ 1]  807 	ld	xl, a
      00A389 58               [ 2]  808 	sllw	x
      00A38A 58               [ 2]  809 	sllw	x
      00A38B 58               [ 2]  810 	sllw	x
      00A38C 58               [ 2]  811 	sllw	x
      00A38D 58               [ 2]  812 	sllw	x
      00A38E 58               [ 2]  813 	sllw	x
      00A38F 1F 01            [ 2]  814 	ldw	(0x01, sp), x
      00A391 7B 02            [ 1]  815 	ld	a, (0x02, sp)
      00A393 97               [ 1]  816 	ld	xl, a
      00A394 90 9F            [ 1]  817 	ld	a, yl
      00A396 1A 01            [ 1]  818 	or	a, (0x01, sp)
      00A398 95               [ 1]  819 	ld	xh, a
      00A399 1F 07            [ 2]  820 	ldw	(0x07, sp), x
      00A39B                        821 00103$:
                           0002EC   822 	C$stm8s_adc1.c$463$1_0$405 ==.
                                    823 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 463: return ((uint16_t)temph);
      00A39B 1E 07            [ 2]  824 	ldw	x, (0x07, sp)
                           0002EE   825 	C$stm8s_adc1.c$464$1_0$405 ==.
                                    826 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 464: }
      00A39D 5B 08            [ 2]  827 	addw	sp, #8
                           0002F0   828 	C$stm8s_adc1.c$464$1_0$405 ==.
                           0002F0   829 	XG$ADC1_GetBufferValue$0$0 ==.
      00A39F 81               [ 4]  830 	ret
                           0002F1   831 	G$ADC1_GetAWDChannelStatus$0$0 ==.
                           0002F1   832 	C$stm8s_adc1.c$472$1_0$409 ==.
                                    833 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 472: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
                                    834 ;	-----------------------------------------
                                    835 ;	 function ADC1_GetAWDChannelStatus
                                    836 ;	-----------------------------------------
      00A3A0                        837 _ADC1_GetAWDChannelStatus:
      00A3A0 52 02            [ 2]  838 	sub	sp, #2
                           0002F3   839 	C$stm8s_adc1.c$479$1_0$409 ==.
                                    840 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 479: if (Channel < (uint8_t)8)
      00A3A2 7B 05            [ 1]  841 	ld	a, (0x05, sp)
      00A3A4 A1 08            [ 1]  842 	cp	a, #0x08
      00A3A6 24 16            [ 1]  843 	jrnc	00102$
                           0002F9   844 	C$stm8s_adc1.c$481$2_0$410 ==.
                                    845 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 481: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
      00A3A8 C6 54 0D         [ 1]  846 	ld	a, 0x540d
      00A3AB 88               [ 1]  847 	push	a
      00A3AC A6 01            [ 1]  848 	ld	a, #0x01
      00A3AE 6B 03            [ 1]  849 	ld	(0x03, sp), a
      00A3B0 7B 06            [ 1]  850 	ld	a, (0x06, sp)
      00A3B2 27 05            [ 1]  851 	jreq	00112$
      00A3B4                        852 00111$:
      00A3B4 08 03            [ 1]  853 	sll	(0x03, sp)
      00A3B6 4A               [ 1]  854 	dec	a
      00A3B7 26 FB            [ 1]  855 	jrne	00111$
      00A3B9                        856 00112$:
      00A3B9 84               [ 1]  857 	pop	a
      00A3BA 14 02            [ 1]  858 	and	a, (0x02, sp)
      00A3BC 20 19            [ 2]  859 	jra	00103$
      00A3BE                        860 00102$:
                           00030F   861 	C$stm8s_adc1.c$485$2_0$411 ==.
                                    862 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 485: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
      00A3BE C6 54 0C         [ 1]  863 	ld	a, 0x540c
      00A3C1 97               [ 1]  864 	ld	xl, a
      00A3C2 7B 05            [ 1]  865 	ld	a, (0x05, sp)
      00A3C4 A0 08            [ 1]  866 	sub	a, #0x08
      00A3C6 88               [ 1]  867 	push	a
      00A3C7 A6 01            [ 1]  868 	ld	a, #0x01
      00A3C9 6B 02            [ 1]  869 	ld	(0x02, sp), a
      00A3CB 84               [ 1]  870 	pop	a
      00A3CC 4D               [ 1]  871 	tnz	a
      00A3CD 27 05            [ 1]  872 	jreq	00114$
      00A3CF                        873 00113$:
      00A3CF 08 01            [ 1]  874 	sll	(0x01, sp)
      00A3D1 4A               [ 1]  875 	dec	a
      00A3D2 26 FB            [ 1]  876 	jrne	00113$
      00A3D4                        877 00114$:
      00A3D4 9F               [ 1]  878 	ld	a, xl
      00A3D5 14 01            [ 1]  879 	and	a, (0x01, sp)
      00A3D7                        880 00103$:
                           000328   881 	C$stm8s_adc1.c$488$1_0$409 ==.
                                    882 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 488: return ((FlagStatus)status);
                           000328   883 	C$stm8s_adc1.c$489$1_0$409 ==.
                                    884 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 489: }
      00A3D7 5B 02            [ 2]  885 	addw	sp, #2
                           00032A   886 	C$stm8s_adc1.c$489$1_0$409 ==.
                           00032A   887 	XG$ADC1_GetAWDChannelStatus$0$0 ==.
      00A3D9 81               [ 4]  888 	ret
                           00032B   889 	G$ADC1_GetFlagStatus$0$0 ==.
                           00032B   890 	C$stm8s_adc1.c$497$1_0$413 ==.
                                    891 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 497: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                    892 ;	-----------------------------------------
                                    893 ;	 function ADC1_GetFlagStatus
                                    894 ;	-----------------------------------------
      00A3DA                        895 _ADC1_GetFlagStatus:
      00A3DA 52 04            [ 2]  896 	sub	sp, #4
                           00032D   897 	C$stm8s_adc1.c$502$1_0$413 ==.
                                    898 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 502: if ((Flag & 0x0F) == 0x01)
      00A3DC 7B 07            [ 1]  899 	ld	a, (0x07, sp)
      00A3DE 6B 04            [ 1]  900 	ld	(0x04, sp), a
      00A3E0 0F 03            [ 1]  901 	clr	(0x03, sp)
      00A3E2 7B 04            [ 1]  902 	ld	a, (0x04, sp)
      00A3E4 A4 0F            [ 1]  903 	and	a, #0x0f
      00A3E6 97               [ 1]  904 	ld	xl, a
      00A3E7 4F               [ 1]  905 	clr	a
      00A3E8 95               [ 1]  906 	ld	xh, a
      00A3E9 5A               [ 2]  907 	decw	x
      00A3EA 26 07            [ 1]  908 	jrne	00108$
                           00033D   909 	C$stm8s_adc1.c$505$2_0$414 ==.
                                    910 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 505: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
      00A3EC C6 54 03         [ 1]  911 	ld	a, 0x5403
      00A3EF A4 40            [ 1]  912 	and	a, #0x40
      00A3F1 20 4A            [ 2]  913 	jra	00109$
      00A3F3                        914 00108$:
                           000344   915 	C$stm8s_adc1.c$507$1_0$413 ==.
                                    916 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 507: else if ((Flag & 0xF0) == 0x10)
      00A3F3 7B 04            [ 1]  917 	ld	a, (0x04, sp)
      00A3F5 A4 F0            [ 1]  918 	and	a, #0xf0
      00A3F7 97               [ 1]  919 	ld	xl, a
      00A3F8 4F               [ 1]  920 	clr	a
      00A3F9 95               [ 1]  921 	ld	xh, a
      00A3FA A3 00 10         [ 2]  922 	cpw	x, #0x0010
      00A3FD 26 39            [ 1]  923 	jrne	00105$
                           000350   924 	C$stm8s_adc1.c$510$2_0$415 ==.
                                    925 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 510: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      00A3FF 7B 07            [ 1]  926 	ld	a, (0x07, sp)
      00A401 A4 0F            [ 1]  927 	and	a, #0x0f
      00A403 97               [ 1]  928 	ld	xl, a
                           000355   929 	C$stm8s_adc1.c$511$2_0$415 ==.
                                    930 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 511: if (temp < 8)
      00A404 9F               [ 1]  931 	ld	a, xl
      00A405 A1 08            [ 1]  932 	cp	a, #0x08
      00A407 24 16            [ 1]  933 	jrnc	00102$
                           00035A   934 	C$stm8s_adc1.c$513$3_0$416 ==.
                                    935 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 513: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00A409 C6 54 0D         [ 1]  936 	ld	a, 0x540d
      00A40C 6B 01            [ 1]  937 	ld	(0x01, sp), a
      00A40E A6 01            [ 1]  938 	ld	a, #0x01
      00A410 88               [ 1]  939 	push	a
      00A411 9F               [ 1]  940 	ld	a, xl
      00A412 4D               [ 1]  941 	tnz	a
      00A413 27 05            [ 1]  942 	jreq	00132$
      00A415                        943 00131$:
      00A415 08 01            [ 1]  944 	sll	(1, sp)
      00A417 4A               [ 1]  945 	dec	a
      00A418 26 FB            [ 1]  946 	jrne	00131$
      00A41A                        947 00132$:
      00A41A 84               [ 1]  948 	pop	a
      00A41B 14 01            [ 1]  949 	and	a, (0x01, sp)
      00A41D 20 1E            [ 2]  950 	jra	00109$
      00A41F                        951 00102$:
                           000370   952 	C$stm8s_adc1.c$517$3_0$417 ==.
                                    953 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 517: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00A41F C6 54 0C         [ 1]  954 	ld	a, 0x540c
      00A422 6B 02            [ 1]  955 	ld	(0x02, sp), a
      00A424 1D 00 08         [ 2]  956 	subw	x, #8
      00A427 A6 01            [ 1]  957 	ld	a, #0x01
      00A429 88               [ 1]  958 	push	a
      00A42A 9F               [ 1]  959 	ld	a, xl
      00A42B 4D               [ 1]  960 	tnz	a
      00A42C 27 05            [ 1]  961 	jreq	00134$
      00A42E                        962 00133$:
      00A42E 08 01            [ 1]  963 	sll	(1, sp)
      00A430 4A               [ 1]  964 	dec	a
      00A431 26 FB            [ 1]  965 	jrne	00133$
      00A433                        966 00134$:
      00A433 84               [ 1]  967 	pop	a
      00A434 14 02            [ 1]  968 	and	a, (0x02, sp)
      00A436 20 05            [ 2]  969 	jra	00109$
      00A438                        970 00105$:
                           000389   971 	C$stm8s_adc1.c$522$2_0$418 ==.
                                    972 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 522: flagstatus = (uint8_t)(ADC1->CSR & Flag);
      00A438 C6 54 00         [ 1]  973 	ld	a, 0x5400
      00A43B 14 07            [ 1]  974 	and	a, (0x07, sp)
      00A43D                        975 00109$:
                           00038E   976 	C$stm8s_adc1.c$524$1_0$413 ==.
                                    977 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 524: return ((FlagStatus)flagstatus);
                           00038E   978 	C$stm8s_adc1.c$526$1_0$413 ==.
                                    979 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 526: }
      00A43D 5B 04            [ 2]  980 	addw	sp, #4
                           000390   981 	C$stm8s_adc1.c$526$1_0$413 ==.
                           000390   982 	XG$ADC1_GetFlagStatus$0$0 ==.
      00A43F 81               [ 4]  983 	ret
                           000391   984 	G$ADC1_ClearFlag$0$0 ==.
                           000391   985 	C$stm8s_adc1.c$534$1_0$420 ==.
                                    986 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 534: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                    987 ;	-----------------------------------------
                                    988 ;	 function ADC1_ClearFlag
                                    989 ;	-----------------------------------------
      00A440                        990 _ADC1_ClearFlag:
      00A440 52 05            [ 2]  991 	sub	sp, #5
                           000393   992 	C$stm8s_adc1.c$541$1_0$420 ==.
                                    993 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 541: if ((Flag & 0x0F) == 0x01)
      00A442 7B 08            [ 1]  994 	ld	a, (0x08, sp)
      00A444 0F 04            [ 1]  995 	clr	(0x04, sp)
      00A446 88               [ 1]  996 	push	a
      00A447 A4 0F            [ 1]  997 	and	a, #0x0f
      00A449 97               [ 1]  998 	ld	xl, a
      00A44A 4F               [ 1]  999 	clr	a
      00A44B 95               [ 1] 1000 	ld	xh, a
      00A44C 84               [ 1] 1001 	pop	a
      00A44D 5A               [ 2] 1002 	decw	x
      00A44E 26 06            [ 1] 1003 	jrne	00108$
                           0003A1  1004 	C$stm8s_adc1.c$544$2_0$421 ==.
                                   1005 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 544: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
      00A450 72 1D 54 03      [ 1] 1006 	bres	21507, #6
      00A454 20 58            [ 2] 1007 	jra	00110$
      00A456                       1008 00108$:
                           0003A7  1009 	C$stm8s_adc1.c$546$1_0$420 ==.
                                   1010 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 546: else if ((Flag & 0xF0) == 0x10)
      00A456 A4 F0            [ 1] 1011 	and	a, #0xf0
      00A458 97               [ 1] 1012 	ld	xl, a
      00A459 4F               [ 1] 1013 	clr	a
      00A45A 95               [ 1] 1014 	ld	xh, a
      00A45B A3 00 10         [ 2] 1015 	cpw	x, #0x0010
      00A45E 26 41            [ 1] 1016 	jrne	00105$
                           0003B1  1017 	C$stm8s_adc1.c$549$2_0$422 ==.
                                   1018 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 549: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      00A460 7B 08            [ 1] 1019 	ld	a, (0x08, sp)
      00A462 A4 0F            [ 1] 1020 	and	a, #0x0f
      00A464 97               [ 1] 1021 	ld	xl, a
                           0003B6  1022 	C$stm8s_adc1.c$550$2_0$422 ==.
                                   1023 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 550: if (temp < 8)
      00A465 9F               [ 1] 1024 	ld	a, xl
      00A466 A1 08            [ 1] 1025 	cp	a, #0x08
      00A468 24 1A            [ 1] 1026 	jrnc	00102$
                           0003BB  1027 	C$stm8s_adc1.c$552$3_0$423 ==.
                                   1028 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 552: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00A46A C6 54 0D         [ 1] 1029 	ld	a, 0x540d
      00A46D 6B 03            [ 1] 1030 	ld	(0x03, sp), a
      00A46F A6 01            [ 1] 1031 	ld	a, #0x01
      00A471 88               [ 1] 1032 	push	a
      00A472 9F               [ 1] 1033 	ld	a, xl
      00A473 4D               [ 1] 1034 	tnz	a
      00A474 27 05            [ 1] 1035 	jreq	00132$
      00A476                       1036 00131$:
      00A476 08 01            [ 1] 1037 	sll	(1, sp)
      00A478 4A               [ 1] 1038 	dec	a
      00A479 26 FB            [ 1] 1039 	jrne	00131$
      00A47B                       1040 00132$:
      00A47B 84               [ 1] 1041 	pop	a
      00A47C 43               [ 1] 1042 	cpl	a
      00A47D 14 03            [ 1] 1043 	and	a, (0x03, sp)
      00A47F C7 54 0D         [ 1] 1044 	ld	0x540d, a
      00A482 20 2A            [ 2] 1045 	jra	00110$
      00A484                       1046 00102$:
                           0003D5  1047 	C$stm8s_adc1.c$556$3_0$424 ==.
                                   1048 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 556: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      00A484 C6 54 0C         [ 1] 1049 	ld	a, 0x540c
      00A487 6B 02            [ 1] 1050 	ld	(0x02, sp), a
      00A489 1D 00 08         [ 2] 1051 	subw	x, #8
      00A48C A6 01            [ 1] 1052 	ld	a, #0x01
      00A48E 88               [ 1] 1053 	push	a
      00A48F 9F               [ 1] 1054 	ld	a, xl
      00A490 4D               [ 1] 1055 	tnz	a
      00A491 27 05            [ 1] 1056 	jreq	00134$
      00A493                       1057 00133$:
      00A493 08 01            [ 1] 1058 	sll	(1, sp)
      00A495 4A               [ 1] 1059 	dec	a
      00A496 26 FB            [ 1] 1060 	jrne	00133$
      00A498                       1061 00134$:
      00A498 84               [ 1] 1062 	pop	a
      00A499 43               [ 1] 1063 	cpl	a
      00A49A 14 02            [ 1] 1064 	and	a, (0x02, sp)
      00A49C C7 54 0C         [ 1] 1065 	ld	0x540c, a
      00A49F 20 0D            [ 2] 1066 	jra	00110$
      00A4A1                       1067 00105$:
                           0003F2  1068 	C$stm8s_adc1.c$561$2_0$425 ==.
                                   1069 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 561: ADC1->CSR &= (uint8_t) (~Flag);
      00A4A1 C6 54 00         [ 1] 1070 	ld	a, 0x5400
      00A4A4 6B 01            [ 1] 1071 	ld	(0x01, sp), a
      00A4A6 7B 08            [ 1] 1072 	ld	a, (0x08, sp)
      00A4A8 43               [ 1] 1073 	cpl	a
      00A4A9 14 01            [ 1] 1074 	and	a, (0x01, sp)
      00A4AB C7 54 00         [ 1] 1075 	ld	0x5400, a
      00A4AE                       1076 00110$:
                           0003FF  1077 	C$stm8s_adc1.c$563$1_0$420 ==.
                                   1078 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 563: }
      00A4AE 5B 05            [ 2] 1079 	addw	sp, #5
                           000401  1080 	C$stm8s_adc1.c$563$1_0$420 ==.
                           000401  1081 	XG$ADC1_ClearFlag$0$0 ==.
      00A4B0 81               [ 4] 1082 	ret
                           000402  1083 	G$ADC1_GetITStatus$0$0 ==.
                           000402  1084 	C$stm8s_adc1.c$583$1_0$427 ==.
                                   1085 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 583: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
                                   1086 ;	-----------------------------------------
                                   1087 ;	 function ADC1_GetITStatus
                                   1088 ;	-----------------------------------------
      00A4B1                       1089 _ADC1_GetITStatus:
      00A4B1 52 03            [ 2] 1090 	sub	sp, #3
                           000404  1091 	C$stm8s_adc1.c$591$1_0$427 ==.
                                   1092 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 591: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00A4B3 7B 07            [ 1] 1093 	ld	a, (0x07, sp)
      00A4B5 A4 F0            [ 1] 1094 	and	a, #0xf0
      00A4B7 97               [ 1] 1095 	ld	xl, a
      00A4B8 4F               [ 1] 1096 	clr	a
      00A4B9 95               [ 1] 1097 	ld	xh, a
      00A4BA A3 00 10         [ 2] 1098 	cpw	x, #0x0010
      00A4BD 26 39            [ 1] 1099 	jrne	00105$
                           000410  1100 	C$stm8s_adc1.c$594$1_0$427 ==.
                                   1101 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 594: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00A4BF 7B 07            [ 1] 1102 	ld	a, (0x07, sp)
      00A4C1 A4 0F            [ 1] 1103 	and	a, #0x0f
      00A4C3 97               [ 1] 1104 	ld	xl, a
                           000415  1105 	C$stm8s_adc1.c$595$2_0$428 ==.
                                   1106 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 595: if (temp < 8)
      00A4C4 9F               [ 1] 1107 	ld	a, xl
      00A4C5 A1 08            [ 1] 1108 	cp	a, #0x08
      00A4C7 24 16            [ 1] 1109 	jrnc	00102$
                           00041A  1110 	C$stm8s_adc1.c$597$3_0$429 ==.
                                   1111 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 597: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00A4C9 C6 54 0D         [ 1] 1112 	ld	a, 0x540d
      00A4CC 6B 03            [ 1] 1113 	ld	(0x03, sp), a
      00A4CE A6 01            [ 1] 1114 	ld	a, #0x01
      00A4D0 88               [ 1] 1115 	push	a
      00A4D1 9F               [ 1] 1116 	ld	a, xl
      00A4D2 4D               [ 1] 1117 	tnz	a
      00A4D3 27 05            [ 1] 1118 	jreq	00122$
      00A4D5                       1119 00121$:
      00A4D5 08 01            [ 1] 1120 	sll	(1, sp)
      00A4D7 4A               [ 1] 1121 	dec	a
      00A4D8 26 FB            [ 1] 1122 	jrne	00121$
      00A4DA                       1123 00122$:
      00A4DA 84               [ 1] 1124 	pop	a
      00A4DB 14 03            [ 1] 1125 	and	a, (0x03, sp)
      00A4DD 20 22            [ 2] 1126 	jra	00106$
      00A4DF                       1127 00102$:
                           000430  1128 	C$stm8s_adc1.c$601$3_0$430 ==.
                                   1129 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 601: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00A4DF C6 54 0C         [ 1] 1130 	ld	a, 0x540c
      00A4E2 6B 02            [ 1] 1131 	ld	(0x02, sp), a
      00A4E4 1D 00 08         [ 2] 1132 	subw	x, #8
      00A4E7 A6 01            [ 1] 1133 	ld	a, #0x01
      00A4E9 88               [ 1] 1134 	push	a
      00A4EA 9F               [ 1] 1135 	ld	a, xl
      00A4EB 4D               [ 1] 1136 	tnz	a
      00A4EC 27 05            [ 1] 1137 	jreq	00124$
      00A4EE                       1138 00123$:
      00A4EE 08 01            [ 1] 1139 	sll	(1, sp)
      00A4F0 4A               [ 1] 1140 	dec	a
      00A4F1 26 FB            [ 1] 1141 	jrne	00123$
      00A4F3                       1142 00124$:
      00A4F3 84               [ 1] 1143 	pop	a
      00A4F4 14 02            [ 1] 1144 	and	a, (0x02, sp)
      00A4F6 20 09            [ 2] 1145 	jra	00106$
      00A4F8                       1146 00105$:
                           000449  1147 	C$stm8s_adc1.c$606$2_0$431 ==.
                                   1148 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 606: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
      00A4F8 C6 54 00         [ 1] 1149 	ld	a, 0x5400
      00A4FB 6B 01            [ 1] 1150 	ld	(0x01, sp), a
      00A4FD 7B 07            [ 1] 1151 	ld	a, (0x07, sp)
      00A4FF 14 01            [ 1] 1152 	and	a, (0x01, sp)
      00A501                       1153 00106$:
                           000452  1154 	C$stm8s_adc1.c$608$1_0$427 ==.
                                   1155 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 608: return ((ITStatus)itstatus);
                           000452  1156 	C$stm8s_adc1.c$609$1_0$427 ==.
                                   1157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 609: }
      00A501 5B 03            [ 2] 1158 	addw	sp, #3
                           000454  1159 	C$stm8s_adc1.c$609$1_0$427 ==.
                           000454  1160 	XG$ADC1_GetITStatus$0$0 ==.
      00A503 81               [ 4] 1161 	ret
                           000455  1162 	G$ADC1_ClearITPendingBit$0$0 ==.
                           000455  1163 	C$stm8s_adc1.c$629$1_0$433 ==.
                                   1164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 629: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
                                   1165 ;	-----------------------------------------
                                   1166 ;	 function ADC1_ClearITPendingBit
                                   1167 ;	-----------------------------------------
      00A504                       1168 _ADC1_ClearITPendingBit:
      00A504 52 02            [ 2] 1169 	sub	sp, #2
                           000457  1170 	C$stm8s_adc1.c$636$1_0$433 ==.
                                   1171 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 636: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00A506 7B 06            [ 1] 1172 	ld	a, (0x06, sp)
      00A508 A4 F0            [ 1] 1173 	and	a, #0xf0
      00A50A 97               [ 1] 1174 	ld	xl, a
      00A50B 4F               [ 1] 1175 	clr	a
      00A50C 95               [ 1] 1176 	ld	xh, a
      00A50D A3 00 10         [ 2] 1177 	cpw	x, #0x0010
      00A510 26 41            [ 1] 1178 	jrne	00105$
                           000463  1179 	C$stm8s_adc1.c$639$1_0$433 ==.
                                   1180 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 639: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00A512 7B 06            [ 1] 1181 	ld	a, (0x06, sp)
      00A514 A4 0F            [ 1] 1182 	and	a, #0x0f
      00A516 97               [ 1] 1183 	ld	xl, a
                           000468  1184 	C$stm8s_adc1.c$640$2_0$434 ==.
                                   1185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 640: if (temp < 8)
      00A517 9F               [ 1] 1186 	ld	a, xl
      00A518 A1 08            [ 1] 1187 	cp	a, #0x08
      00A51A 24 1A            [ 1] 1188 	jrnc	00102$
                           00046D  1189 	C$stm8s_adc1.c$642$3_0$435 ==.
                                   1190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 642: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00A51C C6 54 0D         [ 1] 1191 	ld	a, 0x540d
      00A51F 6B 02            [ 1] 1192 	ld	(0x02, sp), a
      00A521 A6 01            [ 1] 1193 	ld	a, #0x01
      00A523 88               [ 1] 1194 	push	a
      00A524 9F               [ 1] 1195 	ld	a, xl
      00A525 4D               [ 1] 1196 	tnz	a
      00A526 27 05            [ 1] 1197 	jreq	00122$
      00A528                       1198 00121$:
      00A528 08 01            [ 1] 1199 	sll	(1, sp)
      00A52A 4A               [ 1] 1200 	dec	a
      00A52B 26 FB            [ 1] 1201 	jrne	00121$
      00A52D                       1202 00122$:
      00A52D 84               [ 1] 1203 	pop	a
      00A52E 43               [ 1] 1204 	cpl	a
      00A52F 14 02            [ 1] 1205 	and	a, (0x02, sp)
      00A531 C7 54 0D         [ 1] 1206 	ld	0x540d, a
      00A534 20 2A            [ 2] 1207 	jra	00107$
      00A536                       1208 00102$:
                           000487  1209 	C$stm8s_adc1.c$646$3_0$436 ==.
                                   1210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 646: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      00A536 C6 54 0C         [ 1] 1211 	ld	a, 0x540c
      00A539 6B 01            [ 1] 1212 	ld	(0x01, sp), a
      00A53B 1D 00 08         [ 2] 1213 	subw	x, #8
      00A53E A6 01            [ 1] 1214 	ld	a, #0x01
      00A540 88               [ 1] 1215 	push	a
      00A541 9F               [ 1] 1216 	ld	a, xl
      00A542 4D               [ 1] 1217 	tnz	a
      00A543 27 05            [ 1] 1218 	jreq	00124$
      00A545                       1219 00123$:
      00A545 08 01            [ 1] 1220 	sll	(1, sp)
      00A547 4A               [ 1] 1221 	dec	a
      00A548 26 FB            [ 1] 1222 	jrne	00123$
      00A54A                       1223 00124$:
      00A54A 84               [ 1] 1224 	pop	a
      00A54B 43               [ 1] 1225 	cpl	a
      00A54C 14 01            [ 1] 1226 	and	a, (0x01, sp)
      00A54E C7 54 0C         [ 1] 1227 	ld	0x540c, a
      00A551 20 0D            [ 2] 1228 	jra	00107$
      00A553                       1229 00105$:
                           0004A4  1230 	C$stm8s_adc1.c$651$2_0$437 ==.
                                   1231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 651: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
      00A553 C6 54 00         [ 1] 1232 	ld	a, 0x5400
      00A556 1E 05            [ 2] 1233 	ldw	x, (0x05, sp)
      00A558 53               [ 2] 1234 	cplw	x
      00A559 89               [ 2] 1235 	pushw	x
      00A55A 14 02            [ 1] 1236 	and	a, (2, sp)
      00A55C 85               [ 2] 1237 	popw	x
      00A55D C7 54 00         [ 1] 1238 	ld	0x5400, a
      00A560                       1239 00107$:
                           0004B1  1240 	C$stm8s_adc1.c$653$1_0$433 ==.
                                   1241 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 653: }
      00A560 5B 02            [ 2] 1242 	addw	sp, #2
                           0004B3  1243 	C$stm8s_adc1.c$653$1_0$433 ==.
                           0004B3  1244 	XG$ADC1_ClearITPendingBit$0$0 ==.
      00A562 81               [ 4] 1245 	ret
                                   1246 	.area CODE
                                   1247 	.area CONST
                                   1248 	.area INITIALIZER
                                   1249 	.area CABS (ABS)
