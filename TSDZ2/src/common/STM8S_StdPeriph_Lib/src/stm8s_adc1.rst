                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
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
      00A109                         75 _ADC1_DeInit:
                           000000    76 	C$stm8s_adc1.c$54$1_0$346 ==.
                                     77 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
      00A109 35 00 54 00      [ 1]   78 	mov	0x5400+0, #0x00
                           000004    79 	C$stm8s_adc1.c$55$1_0$346 ==.
                                     80 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
      00A10D 35 00 54 01      [ 1]   81 	mov	0x5401+0, #0x00
                           000008    82 	C$stm8s_adc1.c$56$1_0$346 ==.
                                     83 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
      00A111 35 00 54 02      [ 1]   84 	mov	0x5402+0, #0x00
                           00000C    85 	C$stm8s_adc1.c$57$1_0$346 ==.
                                     86 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
      00A115 35 00 54 03      [ 1]   87 	mov	0x5403+0, #0x00
                           000010    88 	C$stm8s_adc1.c$58$1_0$346 ==.
                                     89 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
      00A119 35 00 54 06      [ 1]   90 	mov	0x5406+0, #0x00
                           000014    91 	C$stm8s_adc1.c$59$1_0$346 ==.
                                     92 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
      00A11D 35 00 54 07      [ 1]   93 	mov	0x5407+0, #0x00
                           000018    94 	C$stm8s_adc1.c$60$1_0$346 ==.
                                     95 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
      00A121 35 FF 54 08      [ 1]   96 	mov	0x5408+0, #0xff
                           00001C    97 	C$stm8s_adc1.c$61$1_0$346 ==.
                                     98 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
      00A125 35 03 54 09      [ 1]   99 	mov	0x5409+0, #0x03
                           000020   100 	C$stm8s_adc1.c$62$1_0$346 ==.
                                    101 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
      00A129 35 00 54 0A      [ 1]  102 	mov	0x540a+0, #0x00
                           000024   103 	C$stm8s_adc1.c$63$1_0$346 ==.
                                    104 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
      00A12D 35 00 54 0B      [ 1]  105 	mov	0x540b+0, #0x00
                           000028   106 	C$stm8s_adc1.c$64$1_0$346 ==.
                                    107 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
      00A131 35 00 54 0E      [ 1]  108 	mov	0x540e+0, #0x00
                           00002C   109 	C$stm8s_adc1.c$65$1_0$346 ==.
                                    110 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
      00A135 35 00 54 0F      [ 1]  111 	mov	0x540f+0, #0x00
                           000030   112 	C$stm8s_adc1.c$66$1_0$346 ==.
                                    113 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 66: }
                           000030   114 	C$stm8s_adc1.c$66$1_0$346 ==.
                           000030   115 	XG$ADC1_DeInit$0$0 ==.
      00A139 81               [ 4]  116 	ret
                           000031   117 	G$ADC1_Init$0$0 ==.
                           000031   118 	C$stm8s_adc1.c$88$1_0$348 ==.
                                    119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                    120 ;	-----------------------------------------
                                    121 ;	 function ADC1_Init
                                    122 ;	-----------------------------------------
      00A13A                        123 _ADC1_Init:
                           000031   124 	C$stm8s_adc1.c$93$1_0$348 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 93: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
      00A13A 7B 08            [ 1]  126 	ld	a, (0x08, sp)
      00A13C 88               [ 1]  127 	push	a
      00A13D 7B 05            [ 1]  128 	ld	a, (0x05, sp)
      00A13F 88               [ 1]  129 	push	a
      00A140 7B 05            [ 1]  130 	ld	a, (0x05, sp)
      00A142 88               [ 1]  131 	push	a
      00A143 CD A2 74         [ 4]  132 	call	_ADC1_ConversionConfig
      00A146 5B 03            [ 2]  133 	addw	sp, #3
                           00003F   134 	C$stm8s_adc1.c$95$1_0$348 ==.
                                    135 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 95: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
      00A148 7B 05            [ 1]  136 	ld	a, (0x05, sp)
      00A14A 88               [ 1]  137 	push	a
      00A14B CD A1 B9         [ 4]  138 	call	_ADC1_PrescalerConfig
      00A14E 84               [ 1]  139 	pop	a
                           000046   140 	C$stm8s_adc1.c$100$1_0$348 ==.
                                    141 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 100: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
      00A14F 7B 07            [ 1]  142 	ld	a, (0x07, sp)
      00A151 88               [ 1]  143 	push	a
      00A152 7B 07            [ 1]  144 	ld	a, (0x07, sp)
      00A154 88               [ 1]  145 	push	a
      00A155 CD A2 A0         [ 4]  146 	call	_ADC1_ExternalTriggerConfig
      00A158 5B 02            [ 2]  147 	addw	sp, #2
                           000051   148 	C$stm8s_adc1.c$105$1_0$348 ==.
                                    149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 105: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
      00A15A 7B 0A            [ 1]  150 	ld	a, (0x0a, sp)
      00A15C 88               [ 1]  151 	push	a
      00A15D 7B 0A            [ 1]  152 	ld	a, (0x0a, sp)
      00A15F 88               [ 1]  153 	push	a
      00A160 CD A1 CA         [ 4]  154 	call	_ADC1_SchmittTriggerConfig
      00A163 5B 02            [ 2]  155 	addw	sp, #2
                           00005C   156 	C$stm8s_adc1.c$108$1_0$348 ==.
                                    157 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 108: ADC1->CR1 |= ADC1_CR1_ADON;
      00A165 72 10 54 01      [ 1]  158 	bset	21505, #0
                           000060   159 	C$stm8s_adc1.c$109$1_0$348 ==.
                                    160 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 109: }
                           000060   161 	C$stm8s_adc1.c$109$1_0$348 ==.
                           000060   162 	XG$ADC1_Init$0$0 ==.
      00A169 81               [ 4]  163 	ret
                           000061   164 	G$ADC1_Cmd$0$0 ==.
                           000061   165 	C$stm8s_adc1.c$116$1_0$350 ==.
                                    166 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 116: void ADC1_Cmd(FunctionalState NewState)
                                    167 ;	-----------------------------------------
                                    168 ;	 function ADC1_Cmd
                                    169 ;	-----------------------------------------
      00A16A                        170 _ADC1_Cmd:
                           000061   171 	C$stm8s_adc1.c$121$1_0$350 ==.
                                    172 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 121: if (NewState != DISABLE)
      00A16A 0D 03            [ 1]  173 	tnz	(0x03, sp)
      00A16C 27 06            [ 1]  174 	jreq	00102$
                           000065   175 	C$stm8s_adc1.c$123$2_0$351 ==.
                                    176 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 123: ADC1->CR1 |= ADC1_CR1_ADON;
      00A16E 72 10 54 01      [ 1]  177 	bset	21505, #0
      00A172 20 04            [ 2]  178 	jra	00104$
      00A174                        179 00102$:
                           00006B   180 	C$stm8s_adc1.c$127$2_0$352 ==.
                                    181 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 127: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
      00A174 72 11 54 01      [ 1]  182 	bres	21505, #0
      00A178                        183 00104$:
                           00006F   184 	C$stm8s_adc1.c$129$1_0$350 ==.
                                    185 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 129: }
                           00006F   186 	C$stm8s_adc1.c$129$1_0$350 ==.
                           00006F   187 	XG$ADC1_Cmd$0$0 ==.
      00A178 81               [ 4]  188 	ret
                           000070   189 	G$ADC1_ScanModeCmd$0$0 ==.
                           000070   190 	C$stm8s_adc1.c$136$1_0$354 ==.
                                    191 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 136: void ADC1_ScanModeCmd(FunctionalState NewState)
                                    192 ;	-----------------------------------------
                                    193 ;	 function ADC1_ScanModeCmd
                                    194 ;	-----------------------------------------
      00A179                        195 _ADC1_ScanModeCmd:
                           000070   196 	C$stm8s_adc1.c$141$1_0$354 ==.
                                    197 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 141: if (NewState != DISABLE)
      00A179 0D 03            [ 1]  198 	tnz	(0x03, sp)
      00A17B 27 06            [ 1]  199 	jreq	00102$
                           000074   200 	C$stm8s_adc1.c$143$2_0$355 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 143: ADC1->CR2 |= ADC1_CR2_SCAN;
      00A17D 72 12 54 02      [ 1]  202 	bset	21506, #1
      00A181 20 04            [ 2]  203 	jra	00104$
      00A183                        204 00102$:
                           00007A   205 	C$stm8s_adc1.c$147$2_0$356 ==.
                                    206 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 147: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
      00A183 72 13 54 02      [ 1]  207 	bres	21506, #1
      00A187                        208 00104$:
                           00007E   209 	C$stm8s_adc1.c$149$1_0$354 ==.
                                    210 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 149: }
                           00007E   211 	C$stm8s_adc1.c$149$1_0$354 ==.
                           00007E   212 	XG$ADC1_ScanModeCmd$0$0 ==.
      00A187 81               [ 4]  213 	ret
                           00007F   214 	G$ADC1_DataBufferCmd$0$0 ==.
                           00007F   215 	C$stm8s_adc1.c$156$1_0$358 ==.
                                    216 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 156: void ADC1_DataBufferCmd(FunctionalState NewState)
                                    217 ;	-----------------------------------------
                                    218 ;	 function ADC1_DataBufferCmd
                                    219 ;	-----------------------------------------
      00A188                        220 _ADC1_DataBufferCmd:
                           00007F   221 	C$stm8s_adc1.c$161$1_0$358 ==.
                                    222 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 161: if (NewState != DISABLE)
      00A188 0D 03            [ 1]  223 	tnz	(0x03, sp)
      00A18A 27 06            [ 1]  224 	jreq	00102$
                           000083   225 	C$stm8s_adc1.c$163$2_0$359 ==.
                                    226 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 163: ADC1->CR3 |= ADC1_CR3_DBUF;
      00A18C 72 1E 54 03      [ 1]  227 	bset	21507, #7
      00A190 20 04            [ 2]  228 	jra	00104$
      00A192                        229 00102$:
                           000089   230 	C$stm8s_adc1.c$167$2_0$360 ==.
                                    231 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 167: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
      00A192 72 1F 54 03      [ 1]  232 	bres	21507, #7
      00A196                        233 00104$:
                           00008D   234 	C$stm8s_adc1.c$169$1_0$358 ==.
                                    235 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 169: }
                           00008D   236 	C$stm8s_adc1.c$169$1_0$358 ==.
                           00008D   237 	XG$ADC1_DataBufferCmd$0$0 ==.
      00A196 81               [ 4]  238 	ret
                           00008E   239 	G$ADC1_ITConfig$0$0 ==.
                           00008E   240 	C$stm8s_adc1.c$180$1_0$362 ==.
                                    241 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 180: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
                                    242 ;	-----------------------------------------
                                    243 ;	 function ADC1_ITConfig
                                    244 ;	-----------------------------------------
      00A197                        245 _ADC1_ITConfig:
      00A197 88               [ 1]  246 	push	a
                           00008F   247 	C$stm8s_adc1.c$182$1_0$362 ==.
                                    248 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 182: if (NewState != DISABLE)
      00A198 0D 06            [ 1]  249 	tnz	(0x06, sp)
      00A19A 27 0E            [ 1]  250 	jreq	00102$
                           000093   251 	C$stm8s_adc1.c$185$2_0$363 ==.
                                    252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 185: ADC1->CSR |= (uint8_t)ADC1_IT;
      00A19C C6 54 00         [ 1]  253 	ld	a, 0x5400
      00A19F 6B 01            [ 1]  254 	ld	(0x01, sp), a
      00A1A1 7B 05            [ 1]  255 	ld	a, (0x05, sp)
      00A1A3 1A 01            [ 1]  256 	or	a, (0x01, sp)
      00A1A5 C7 54 00         [ 1]  257 	ld	0x5400, a
      00A1A8 20 0D            [ 2]  258 	jra	00104$
      00A1AA                        259 00102$:
                           0000A1   260 	C$stm8s_adc1.c$190$2_0$364 ==.
                                    261 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 190: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
      00A1AA C6 54 00         [ 1]  262 	ld	a, 0x5400
      00A1AD 1E 04            [ 2]  263 	ldw	x, (0x04, sp)
      00A1AF 53               [ 2]  264 	cplw	x
      00A1B0 89               [ 2]  265 	pushw	x
      00A1B1 14 02            [ 1]  266 	and	a, (2, sp)
      00A1B3 85               [ 2]  267 	popw	x
      00A1B4 C7 54 00         [ 1]  268 	ld	0x5400, a
      00A1B7                        269 00104$:
                           0000AE   270 	C$stm8s_adc1.c$192$1_0$362 ==.
                                    271 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 192: }
      00A1B7 84               [ 1]  272 	pop	a
                           0000AF   273 	C$stm8s_adc1.c$192$1_0$362 ==.
                           0000AF   274 	XG$ADC1_ITConfig$0$0 ==.
      00A1B8 81               [ 4]  275 	ret
                           0000B0   276 	G$ADC1_PrescalerConfig$0$0 ==.
                           0000B0   277 	C$stm8s_adc1.c$200$1_0$366 ==.
                                    278 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 200: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
                                    279 ;	-----------------------------------------
                                    280 ;	 function ADC1_PrescalerConfig
                                    281 ;	-----------------------------------------
      00A1B9                        282 _ADC1_PrescalerConfig:
                           0000B0   283 	C$stm8s_adc1.c$203$1_0$366 ==.
                                    284 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 203: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
      00A1B9 C6 54 01         [ 1]  285 	ld	a, 0x5401
      00A1BC A4 8F            [ 1]  286 	and	a, #0x8f
      00A1BE C7 54 01         [ 1]  287 	ld	0x5401, a
                           0000B8   288 	C$stm8s_adc1.c$205$1_0$366 ==.
                                    289 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 205: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
      00A1C1 C6 54 01         [ 1]  290 	ld	a, 0x5401
      00A1C4 1A 03            [ 1]  291 	or	a, (0x03, sp)
      00A1C6 C7 54 01         [ 1]  292 	ld	0x5401, a
                           0000C0   293 	C$stm8s_adc1.c$206$1_0$366 ==.
                                    294 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 206: }
                           0000C0   295 	C$stm8s_adc1.c$206$1_0$366 ==.
                           0000C0   296 	XG$ADC1_PrescalerConfig$0$0 ==.
      00A1C9 81               [ 4]  297 	ret
                           0000C1   298 	G$ADC1_SchmittTriggerConfig$0$0 ==.
                           0000C1   299 	C$stm8s_adc1.c$216$1_0$368 ==.
                                    300 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 216: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                    301 ;	-----------------------------------------
                                    302 ;	 function ADC1_SchmittTriggerConfig
                                    303 ;	-----------------------------------------
      00A1CA                        304 _ADC1_SchmittTriggerConfig:
      00A1CA 88               [ 1]  305 	push	a
                           0000C2   306 	C$stm8s_adc1.c$218$1_0$368 ==.
                                    307 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 218: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
      00A1CB 7B 04            [ 1]  308 	ld	a, (0x04, sp)
      00A1CD 4C               [ 1]  309 	inc	a
      00A1CE 26 26            [ 1]  310 	jrne	00114$
                           0000C7   311 	C$stm8s_adc1.c$220$2_0$369 ==.
                                    312 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 220: if (NewState != DISABLE)
      00A1D0 0D 05            [ 1]  313 	tnz	(0x05, sp)
      00A1D2 27 11            [ 1]  314 	jreq	00102$
                           0000CB   315 	C$stm8s_adc1.c$222$3_0$370 ==.
                                    316 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 222: ADC1->TDRL &= (uint8_t)0x0;
      00A1D4 C6 54 07         [ 1]  317 	ld	a, 0x5407
      00A1D7 35 00 54 07      [ 1]  318 	mov	0x5407+0, #0x00
                           0000D2   319 	C$stm8s_adc1.c$223$3_0$370 ==.
                                    320 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 223: ADC1->TDRH &= (uint8_t)0x0;
      00A1DB C6 54 06         [ 1]  321 	ld	a, 0x5406
      00A1DE 35 00 54 06      [ 1]  322 	mov	0x5406+0, #0x00
      00A1E2 CC A2 72         [ 2]  323 	jp	00116$
      00A1E5                        324 00102$:
                           0000DC   325 	C$stm8s_adc1.c$227$3_0$371 ==.
                                    326 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 227: ADC1->TDRL |= (uint8_t)0xFF;
      00A1E5 C6 54 07         [ 1]  327 	ld	a, 0x5407
      00A1E8 35 FF 54 07      [ 1]  328 	mov	0x5407+0, #0xff
                           0000E3   329 	C$stm8s_adc1.c$228$3_0$371 ==.
                                    330 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 228: ADC1->TDRH |= (uint8_t)0xFF;
      00A1EC C6 54 06         [ 1]  331 	ld	a, 0x5406
      00A1EF 35 FF 54 06      [ 1]  332 	mov	0x5406+0, #0xff
      00A1F3 CC A2 72         [ 2]  333 	jp	00116$
      00A1F6                        334 00114$:
                           0000ED   335 	C$stm8s_adc1.c$231$1_0$368 ==.
                                    336 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 231: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
      00A1F6 7B 04            [ 1]  337 	ld	a, (0x04, sp)
      00A1F8 A1 08            [ 1]  338 	cp	a, #0x08
      00A1FA 24 37            [ 1]  339 	jrnc	00111$
                           0000F3   340 	C$stm8s_adc1.c$233$2_0$372 ==.
                                    341 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 233: if (NewState != DISABLE)
      00A1FC 0D 05            [ 1]  342 	tnz	(0x05, sp)
      00A1FE 27 1A            [ 1]  343 	jreq	00105$
                           0000F7   344 	C$stm8s_adc1.c$235$3_0$373 ==.
                                    345 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 235: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      00A200 C6 54 07         [ 1]  346 	ld	a, 0x5407
      00A203 6B 01            [ 1]  347 	ld	(0x01, sp), a
      00A205 A6 01            [ 1]  348 	ld	a, #0x01
      00A207 88               [ 1]  349 	push	a
      00A208 7B 05            [ 1]  350 	ld	a, (0x05, sp)
      00A20A 27 05            [ 1]  351 	jreq	00145$
      00A20C                        352 00144$:
      00A20C 08 01            [ 1]  353 	sll	(1, sp)
      00A20E 4A               [ 1]  354 	dec	a
      00A20F 26 FB            [ 1]  355 	jrne	00144$
      00A211                        356 00145$:
      00A211 84               [ 1]  357 	pop	a
      00A212 43               [ 1]  358 	cpl	a
      00A213 14 01            [ 1]  359 	and	a, (0x01, sp)
      00A215 C7 54 07         [ 1]  360 	ld	0x5407, a
      00A218 20 58            [ 2]  361 	jra	00116$
      00A21A                        362 00105$:
                           000111   363 	C$stm8s_adc1.c$239$3_0$374 ==.
                                    364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 239: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
      00A21A C6 54 07         [ 1]  365 	ld	a, 0x5407
      00A21D 88               [ 1]  366 	push	a
      00A21E A6 01            [ 1]  367 	ld	a, #0x01
      00A220 6B 02            [ 1]  368 	ld	(0x02, sp), a
      00A222 7B 05            [ 1]  369 	ld	a, (0x05, sp)
      00A224 27 05            [ 1]  370 	jreq	00147$
      00A226                        371 00146$:
      00A226 08 02            [ 1]  372 	sll	(0x02, sp)
      00A228 4A               [ 1]  373 	dec	a
      00A229 26 FB            [ 1]  374 	jrne	00146$
      00A22B                        375 00147$:
      00A22B 84               [ 1]  376 	pop	a
      00A22C 1A 01            [ 1]  377 	or	a, (0x01, sp)
      00A22E C7 54 07         [ 1]  378 	ld	0x5407, a
      00A231 20 3F            [ 2]  379 	jra	00116$
      00A233                        380 00111$:
                           00012A   381 	C$stm8s_adc1.c$244$2_0$375 ==.
                                    382 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 244: if (NewState != DISABLE)
      00A233 0D 05            [ 1]  383 	tnz	(0x05, sp)
      00A235 27 1F            [ 1]  384 	jreq	00108$
                           00012E   385 	C$stm8s_adc1.c$246$3_0$376 ==.
                                    386 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 246: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      00A237 C6 54 06         [ 1]  387 	ld	a, 0x5406
      00A23A 6B 01            [ 1]  388 	ld	(0x01, sp), a
      00A23C 7B 04            [ 1]  389 	ld	a, (0x04, sp)
      00A23E A0 08            [ 1]  390 	sub	a, #0x08
      00A240 97               [ 1]  391 	ld	xl, a
      00A241 A6 01            [ 1]  392 	ld	a, #0x01
      00A243 88               [ 1]  393 	push	a
      00A244 9F               [ 1]  394 	ld	a, xl
      00A245 4D               [ 1]  395 	tnz	a
      00A246 27 05            [ 1]  396 	jreq	00150$
      00A248                        397 00149$:
      00A248 08 01            [ 1]  398 	sll	(1, sp)
      00A24A 4A               [ 1]  399 	dec	a
      00A24B 26 FB            [ 1]  400 	jrne	00149$
      00A24D                        401 00150$:
      00A24D 84               [ 1]  402 	pop	a
      00A24E 43               [ 1]  403 	cpl	a
      00A24F 14 01            [ 1]  404 	and	a, (0x01, sp)
      00A251 C7 54 06         [ 1]  405 	ld	0x5406, a
      00A254 20 1C            [ 2]  406 	jra	00116$
      00A256                        407 00108$:
                           00014D   408 	C$stm8s_adc1.c$250$3_0$377 ==.
                                    409 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 250: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
      00A256 C6 54 06         [ 1]  410 	ld	a, 0x5406
      00A259 97               [ 1]  411 	ld	xl, a
      00A25A 7B 04            [ 1]  412 	ld	a, (0x04, sp)
      00A25C A0 08            [ 1]  413 	sub	a, #0x08
      00A25E 88               [ 1]  414 	push	a
      00A25F A6 01            [ 1]  415 	ld	a, #0x01
      00A261 6B 02            [ 1]  416 	ld	(0x02, sp), a
      00A263 84               [ 1]  417 	pop	a
      00A264 4D               [ 1]  418 	tnz	a
      00A265 27 05            [ 1]  419 	jreq	00152$
      00A267                        420 00151$:
      00A267 08 01            [ 1]  421 	sll	(0x01, sp)
      00A269 4A               [ 1]  422 	dec	a
      00A26A 26 FB            [ 1]  423 	jrne	00151$
      00A26C                        424 00152$:
      00A26C 9F               [ 1]  425 	ld	a, xl
      00A26D 1A 01            [ 1]  426 	or	a, (0x01, sp)
      00A26F C7 54 06         [ 1]  427 	ld	0x5406, a
      00A272                        428 00116$:
                           000169   429 	C$stm8s_adc1.c$253$1_0$368 ==.
                                    430 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 253: }
      00A272 84               [ 1]  431 	pop	a
                           00016A   432 	C$stm8s_adc1.c$253$1_0$368 ==.
                           00016A   433 	XG$ADC1_SchmittTriggerConfig$0$0 ==.
      00A273 81               [ 4]  434 	ret
                           00016B   435 	G$ADC1_ConversionConfig$0$0 ==.
                           00016B   436 	C$stm8s_adc1.c$265$1_0$379 ==.
                                    437 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 265: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                    438 ;	-----------------------------------------
                                    439 ;	 function ADC1_ConversionConfig
                                    440 ;	-----------------------------------------
      00A274                        441 _ADC1_ConversionConfig:
                           00016B   442 	C$stm8s_adc1.c$268$1_0$379 ==.
                                    443 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 268: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
      00A274 72 17 54 02      [ 1]  444 	bres	21506, #3
                           00016F   445 	C$stm8s_adc1.c$270$1_0$379 ==.
                                    446 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 270: ADC1->CR2 |= (uint8_t)(ADC1_Align);
      00A278 C6 54 02         [ 1]  447 	ld	a, 0x5402
      00A27B 1A 05            [ 1]  448 	or	a, (0x05, sp)
      00A27D C7 54 02         [ 1]  449 	ld	0x5402, a
                           000177   450 	C$stm8s_adc1.c$272$1_0$379 ==.
                                    451 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 272: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
      00A280 7B 03            [ 1]  452 	ld	a, (0x03, sp)
      00A282 4A               [ 1]  453 	dec	a
      00A283 26 06            [ 1]  454 	jrne	00102$
                           00017C   455 	C$stm8s_adc1.c$275$2_0$380 ==.
                                    456 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 275: ADC1->CR1 |= ADC1_CR1_CONT;
      00A285 72 12 54 01      [ 1]  457 	bset	21505, #1
      00A289 20 04            [ 2]  458 	jra	00103$
      00A28B                        459 00102$:
                           000182   460 	C$stm8s_adc1.c$280$2_0$381 ==.
                                    461 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 280: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
      00A28B 72 13 54 01      [ 1]  462 	bres	21505, #1
      00A28F                        463 00103$:
                           000186   464 	C$stm8s_adc1.c$284$1_0$379 ==.
                                    465 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 284: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
      00A28F C6 54 00         [ 1]  466 	ld	a, 0x5400
      00A292 A4 F0            [ 1]  467 	and	a, #0xf0
      00A294 C7 54 00         [ 1]  468 	ld	0x5400, a
                           00018E   469 	C$stm8s_adc1.c$286$1_0$379 ==.
                                    470 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 286: ADC1->CSR |= (uint8_t)(ADC1_Channel);
      00A297 C6 54 00         [ 1]  471 	ld	a, 0x5400
      00A29A 1A 04            [ 1]  472 	or	a, (0x04, sp)
      00A29C C7 54 00         [ 1]  473 	ld	0x5400, a
                           000196   474 	C$stm8s_adc1.c$287$1_0$379 ==.
                                    475 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 287: }
                           000196   476 	C$stm8s_adc1.c$287$1_0$379 ==.
                           000196   477 	XG$ADC1_ConversionConfig$0$0 ==.
      00A29F 81               [ 4]  478 	ret
                           000197   479 	G$ADC1_ExternalTriggerConfig$0$0 ==.
                           000197   480 	C$stm8s_adc1.c$299$1_0$383 ==.
                                    481 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 299: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
                                    482 ;	-----------------------------------------
                                    483 ;	 function ADC1_ExternalTriggerConfig
                                    484 ;	-----------------------------------------
      00A2A0                        485 _ADC1_ExternalTriggerConfig:
                           000197   486 	C$stm8s_adc1.c$302$1_0$383 ==.
                                    487 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 302: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
      00A2A0 C6 54 02         [ 1]  488 	ld	a, 0x5402
      00A2A3 A4 CF            [ 1]  489 	and	a, #0xcf
      00A2A5 C7 54 02         [ 1]  490 	ld	0x5402, a
                           00019F   491 	C$stm8s_adc1.c$304$1_0$383 ==.
                                    492 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 304: if (NewState != DISABLE)
      00A2A8 0D 04            [ 1]  493 	tnz	(0x04, sp)
      00A2AA 27 06            [ 1]  494 	jreq	00102$
                           0001A3   495 	C$stm8s_adc1.c$307$2_0$384 ==.
                                    496 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 307: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
      00A2AC 72 1C 54 02      [ 1]  497 	bset	21506, #6
      00A2B0 20 04            [ 2]  498 	jra	00103$
      00A2B2                        499 00102$:
                           0001A9   500 	C$stm8s_adc1.c$312$2_0$385 ==.
                                    501 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 312: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
      00A2B2 72 1D 54 02      [ 1]  502 	bres	21506, #6
      00A2B6                        503 00103$:
                           0001AD   504 	C$stm8s_adc1.c$316$1_0$383 ==.
                                    505 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 316: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
      00A2B6 C6 54 02         [ 1]  506 	ld	a, 0x5402
      00A2B9 1A 03            [ 1]  507 	or	a, (0x03, sp)
      00A2BB C7 54 02         [ 1]  508 	ld	0x5402, a
                           0001B5   509 	C$stm8s_adc1.c$317$1_0$383 ==.
                                    510 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 317: }
                           0001B5   511 	C$stm8s_adc1.c$317$1_0$383 ==.
                           0001B5   512 	XG$ADC1_ExternalTriggerConfig$0$0 ==.
      00A2BE 81               [ 4]  513 	ret
                           0001B6   514 	G$ADC1_StartConversion$0$0 ==.
                           0001B6   515 	C$stm8s_adc1.c$328$1_0$387 ==.
                                    516 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 328: void ADC1_StartConversion(void)
                                    517 ;	-----------------------------------------
                                    518 ;	 function ADC1_StartConversion
                                    519 ;	-----------------------------------------
      00A2BF                        520 _ADC1_StartConversion:
                           0001B6   521 	C$stm8s_adc1.c$330$1_0$387 ==.
                                    522 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 330: ADC1->CR1 |= ADC1_CR1_ADON;
      00A2BF 72 10 54 01      [ 1]  523 	bset	21505, #0
                           0001BA   524 	C$stm8s_adc1.c$331$1_0$387 ==.
                                    525 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 331: }
                           0001BA   526 	C$stm8s_adc1.c$331$1_0$387 ==.
                           0001BA   527 	XG$ADC1_StartConversion$0$0 ==.
      00A2C3 81               [ 4]  528 	ret
                           0001BB   529 	G$ADC1_GetConversionValue$0$0 ==.
                           0001BB   530 	C$stm8s_adc1.c$340$1_0$389 ==.
                                    531 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 340: uint16_t ADC1_GetConversionValue(void)
                                    532 ;	-----------------------------------------
                                    533 ;	 function ADC1_GetConversionValue
                                    534 ;	-----------------------------------------
      00A2C4                        535 _ADC1_GetConversionValue:
      00A2C4 52 04            [ 2]  536 	sub	sp, #4
                           0001BD   537 	C$stm8s_adc1.c$345$1_0$389 ==.
                                    538 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 345: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00A2C6 C6 54 02         [ 1]  539 	ld	a, 0x5402
      00A2C9 A5 08            [ 1]  540 	bcp	a, #0x08
      00A2CB 27 1B            [ 1]  541 	jreq	00102$
                           0001C4   542 	C$stm8s_adc1.c$348$2_0$390 ==.
                                    543 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 348: templ = ADC1->DRL;
      00A2CD C6 54 05         [ 1]  544 	ld	a, 0x5405
      00A2D0 97               [ 1]  545 	ld	xl, a
                           0001C8   546 	C$stm8s_adc1.c$350$2_0$390 ==.
                                    547 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 350: temph = ADC1->DRH;
      00A2D1 C6 54 04         [ 1]  548 	ld	a, 0x5404
                           0001CB   549 	C$stm8s_adc1.c$352$2_0$390 ==.
                                    550 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 352: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      00A2D4 0F 02            [ 1]  551 	clr	(0x02, sp)
      00A2D6 41               [ 1]  552 	exg	a, xl
      00A2D7 6B 04            [ 1]  553 	ld	(0x04, sp), a
      00A2D9 41               [ 1]  554 	exg	a, xl
      00A2DA 0F 03            [ 1]  555 	clr	(0x03, sp)
      00A2DC 1A 03            [ 1]  556 	or	a, (0x03, sp)
      00A2DE 95               [ 1]  557 	ld	xh, a
      00A2DF 7B 04            [ 1]  558 	ld	a, (0x04, sp)
      00A2E1 1A 02            [ 1]  559 	or	a, (0x02, sp)
      00A2E3 97               [ 1]  560 	ld	xl, a
      00A2E4 1F 03            [ 2]  561 	ldw	(0x03, sp), x
      00A2E6 20 1D            [ 2]  562 	jra	00103$
      00A2E8                        563 00102$:
                           0001DF   564 	C$stm8s_adc1.c$357$2_0$391 ==.
                                    565 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 357: temph = ADC1->DRH;
      00A2E8 C6 54 04         [ 1]  566 	ld	a, 0x5404
      00A2EB 5F               [ 1]  567 	clrw	x
      00A2EC 97               [ 1]  568 	ld	xl, a
      00A2ED 51               [ 1]  569 	exgw	x, y
                           0001E5   570 	C$stm8s_adc1.c$359$2_0$391 ==.
                                    571 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 359: templ = ADC1->DRL;
      00A2EE C6 54 05         [ 1]  572 	ld	a, 0x5405
                           0001E8   573 	C$stm8s_adc1.c$361$2_0$391 ==.
                                    574 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 361: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
      00A2F1 5F               [ 1]  575 	clrw	x
      00A2F2 97               [ 1]  576 	ld	xl, a
      00A2F3 58               [ 2]  577 	sllw	x
      00A2F4 58               [ 2]  578 	sllw	x
      00A2F5 58               [ 2]  579 	sllw	x
      00A2F6 58               [ 2]  580 	sllw	x
      00A2F7 58               [ 2]  581 	sllw	x
      00A2F8 58               [ 2]  582 	sllw	x
      00A2F9 1F 03            [ 2]  583 	ldw	(0x03, sp), x
      00A2FB 7B 04            [ 1]  584 	ld	a, (0x04, sp)
      00A2FD 97               [ 1]  585 	ld	xl, a
      00A2FE 90 9F            [ 1]  586 	ld	a, yl
      00A300 1A 03            [ 1]  587 	or	a, (0x03, sp)
      00A302 95               [ 1]  588 	ld	xh, a
      00A303 1F 03            [ 2]  589 	ldw	(0x03, sp), x
      00A305                        590 00103$:
                           0001FC   591 	C$stm8s_adc1.c$364$1_0$389 ==.
                                    592 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 364: return ((uint16_t)temph);
      00A305 1E 03            [ 2]  593 	ldw	x, (0x03, sp)
                           0001FE   594 	C$stm8s_adc1.c$365$1_0$389 ==.
                                    595 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 365: }
      00A307 5B 04            [ 2]  596 	addw	sp, #4
                           000200   597 	C$stm8s_adc1.c$365$1_0$389 ==.
                           000200   598 	XG$ADC1_GetConversionValue$0$0 ==.
      00A309 81               [ 4]  599 	ret
                           000201   600 	G$ADC1_AWDChannelConfig$0$0 ==.
                           000201   601 	C$stm8s_adc1.c$375$1_0$393 ==.
                                    602 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 375: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
                                    603 ;	-----------------------------------------
                                    604 ;	 function ADC1_AWDChannelConfig
                                    605 ;	-----------------------------------------
      00A30A                        606 _ADC1_AWDChannelConfig:
      00A30A 88               [ 1]  607 	push	a
                           000202   608 	C$stm8s_adc1.c$381$1_0$393 ==.
                                    609 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 381: if (Channel < (uint8_t)8)
      00A30B 7B 04            [ 1]  610 	ld	a, (0x04, sp)
      00A30D A1 08            [ 1]  611 	cp	a, #0x08
      00A30F 24 37            [ 1]  612 	jrnc	00108$
                           000208   613 	C$stm8s_adc1.c$383$2_0$394 ==.
                                    614 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 383: if (NewState != DISABLE)
      00A311 0D 05            [ 1]  615 	tnz	(0x05, sp)
      00A313 27 19            [ 1]  616 	jreq	00102$
                           00020C   617 	C$stm8s_adc1.c$385$3_0$395 ==.
                                    618 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 385: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      00A315 C6 54 0F         [ 1]  619 	ld	a, 0x540f
      00A318 88               [ 1]  620 	push	a
      00A319 A6 01            [ 1]  621 	ld	a, #0x01
      00A31B 6B 02            [ 1]  622 	ld	(0x02, sp), a
      00A31D 7B 05            [ 1]  623 	ld	a, (0x05, sp)
      00A31F 27 05            [ 1]  624 	jreq	00127$
      00A321                        625 00126$:
      00A321 08 02            [ 1]  626 	sll	(0x02, sp)
      00A323 4A               [ 1]  627 	dec	a
      00A324 26 FB            [ 1]  628 	jrne	00126$
      00A326                        629 00127$:
      00A326 84               [ 1]  630 	pop	a
      00A327 1A 01            [ 1]  631 	or	a, (0x01, sp)
      00A329 C7 54 0F         [ 1]  632 	ld	0x540f, a
      00A32C 20 59            [ 2]  633 	jra	00110$
      00A32E                        634 00102$:
                           000225   635 	C$stm8s_adc1.c$389$3_0$396 ==.
                                    636 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 389: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
      00A32E C6 54 0F         [ 1]  637 	ld	a, 0x540f
      00A331 6B 01            [ 1]  638 	ld	(0x01, sp), a
      00A333 A6 01            [ 1]  639 	ld	a, #0x01
      00A335 88               [ 1]  640 	push	a
      00A336 7B 05            [ 1]  641 	ld	a, (0x05, sp)
      00A338 27 05            [ 1]  642 	jreq	00129$
      00A33A                        643 00128$:
      00A33A 08 01            [ 1]  644 	sll	(1, sp)
      00A33C 4A               [ 1]  645 	dec	a
      00A33D 26 FB            [ 1]  646 	jrne	00128$
      00A33F                        647 00129$:
      00A33F 84               [ 1]  648 	pop	a
      00A340 43               [ 1]  649 	cpl	a
      00A341 14 01            [ 1]  650 	and	a, (0x01, sp)
      00A343 C7 54 0F         [ 1]  651 	ld	0x540f, a
      00A346 20 3F            [ 2]  652 	jra	00110$
      00A348                        653 00108$:
                           00023F   654 	C$stm8s_adc1.c$394$2_0$397 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 394: if (NewState != DISABLE)
      00A348 0D 05            [ 1]  656 	tnz	(0x05, sp)
      00A34A 27 1E            [ 1]  657 	jreq	00105$
                           000243   658 	C$stm8s_adc1.c$396$3_0$398 ==.
                                    659 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 396: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      00A34C C6 54 0E         [ 1]  660 	ld	a, 0x540e
      00A34F 97               [ 1]  661 	ld	xl, a
      00A350 7B 04            [ 1]  662 	ld	a, (0x04, sp)
      00A352 A0 08            [ 1]  663 	sub	a, #0x08
      00A354 88               [ 1]  664 	push	a
      00A355 A6 01            [ 1]  665 	ld	a, #0x01
      00A357 6B 02            [ 1]  666 	ld	(0x02, sp), a
      00A359 84               [ 1]  667 	pop	a
      00A35A 4D               [ 1]  668 	tnz	a
      00A35B 27 05            [ 1]  669 	jreq	00132$
      00A35D                        670 00131$:
      00A35D 08 01            [ 1]  671 	sll	(0x01, sp)
      00A35F 4A               [ 1]  672 	dec	a
      00A360 26 FB            [ 1]  673 	jrne	00131$
      00A362                        674 00132$:
      00A362 9F               [ 1]  675 	ld	a, xl
      00A363 1A 01            [ 1]  676 	or	a, (0x01, sp)
      00A365 C7 54 0E         [ 1]  677 	ld	0x540e, a
      00A368 20 1D            [ 2]  678 	jra	00110$
      00A36A                        679 00105$:
                           000261   680 	C$stm8s_adc1.c$400$3_0$399 ==.
                                    681 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 400: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
      00A36A C6 54 0E         [ 1]  682 	ld	a, 0x540e
      00A36D 6B 01            [ 1]  683 	ld	(0x01, sp), a
      00A36F 7B 04            [ 1]  684 	ld	a, (0x04, sp)
      00A371 A0 08            [ 1]  685 	sub	a, #0x08
      00A373 97               [ 1]  686 	ld	xl, a
      00A374 A6 01            [ 1]  687 	ld	a, #0x01
      00A376 88               [ 1]  688 	push	a
      00A377 9F               [ 1]  689 	ld	a, xl
      00A378 4D               [ 1]  690 	tnz	a
      00A379 27 05            [ 1]  691 	jreq	00134$
      00A37B                        692 00133$:
      00A37B 08 01            [ 1]  693 	sll	(1, sp)
      00A37D 4A               [ 1]  694 	dec	a
      00A37E 26 FB            [ 1]  695 	jrne	00133$
      00A380                        696 00134$:
      00A380 84               [ 1]  697 	pop	a
      00A381 43               [ 1]  698 	cpl	a
      00A382 14 01            [ 1]  699 	and	a, (0x01, sp)
      00A384 C7 54 0E         [ 1]  700 	ld	0x540e, a
      00A387                        701 00110$:
                           00027E   702 	C$stm8s_adc1.c$403$1_0$393 ==.
                                    703 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 403: }
      00A387 84               [ 1]  704 	pop	a
                           00027F   705 	C$stm8s_adc1.c$403$1_0$393 ==.
                           00027F   706 	XG$ADC1_AWDChannelConfig$0$0 ==.
      00A388 81               [ 4]  707 	ret
                           000280   708 	G$ADC1_SetHighThreshold$0$0 ==.
                           000280   709 	C$stm8s_adc1.c$411$1_0$401 ==.
                                    710 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 411: void ADC1_SetHighThreshold(uint16_t Threshold)
                                    711 ;	-----------------------------------------
                                    712 ;	 function ADC1_SetHighThreshold
                                    713 ;	-----------------------------------------
      00A389                        714 _ADC1_SetHighThreshold:
                           000280   715 	C$stm8s_adc1.c$413$1_0$401 ==.
                                    716 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 413: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
      00A389 1E 03            [ 2]  717 	ldw	x, (0x03, sp)
      00A38B 54               [ 2]  718 	srlw	x
      00A38C 54               [ 2]  719 	srlw	x
      00A38D 9F               [ 1]  720 	ld	a, xl
      00A38E C7 54 08         [ 1]  721 	ld	0x5408, a
                           000288   722 	C$stm8s_adc1.c$414$1_0$401 ==.
                                    723 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 414: ADC1->HTRL = (uint8_t)Threshold;
      00A391 7B 04            [ 1]  724 	ld	a, (0x04, sp)
      00A393 C7 54 09         [ 1]  725 	ld	0x5409, a
                           00028D   726 	C$stm8s_adc1.c$415$1_0$401 ==.
                                    727 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 415: }
                           00028D   728 	C$stm8s_adc1.c$415$1_0$401 ==.
                           00028D   729 	XG$ADC1_SetHighThreshold$0$0 ==.
      00A396 81               [ 4]  730 	ret
                           00028E   731 	G$ADC1_SetLowThreshold$0$0 ==.
                           00028E   732 	C$stm8s_adc1.c$423$1_0$403 ==.
                                    733 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 423: void ADC1_SetLowThreshold(uint16_t Threshold)
                                    734 ;	-----------------------------------------
                                    735 ;	 function ADC1_SetLowThreshold
                                    736 ;	-----------------------------------------
      00A397                        737 _ADC1_SetLowThreshold:
                           00028E   738 	C$stm8s_adc1.c$425$1_0$403 ==.
                                    739 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 425: ADC1->LTRL = (uint8_t)Threshold;
      00A397 7B 04            [ 1]  740 	ld	a, (0x04, sp)
      00A399 C7 54 0B         [ 1]  741 	ld	0x540b, a
                           000293   742 	C$stm8s_adc1.c$426$1_0$403 ==.
                                    743 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 426: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
      00A39C 1E 03            [ 2]  744 	ldw	x, (0x03, sp)
      00A39E 54               [ 2]  745 	srlw	x
      00A39F 54               [ 2]  746 	srlw	x
      00A3A0 9F               [ 1]  747 	ld	a, xl
      00A3A1 C7 54 0A         [ 1]  748 	ld	0x540a, a
                           00029B   749 	C$stm8s_adc1.c$427$1_0$403 ==.
                                    750 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 427: }
                           00029B   751 	C$stm8s_adc1.c$427$1_0$403 ==.
                           00029B   752 	XG$ADC1_SetLowThreshold$0$0 ==.
      00A3A4 81               [ 4]  753 	ret
                           00029C   754 	G$ADC1_GetBufferValue$0$0 ==.
                           00029C   755 	C$stm8s_adc1.c$436$1_0$405 ==.
                                    756 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 436: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
                                    757 ;	-----------------------------------------
                                    758 ;	 function ADC1_GetBufferValue
                                    759 ;	-----------------------------------------
      00A3A5                        760 _ADC1_GetBufferValue:
      00A3A5 52 04            [ 2]  761 	sub	sp, #4
                           00029E   762 	C$stm8s_adc1.c$444$1_0$405 ==.
                                    763 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 444: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00A3A7 C6 54 02         [ 1]  764 	ld	a, 0x5402
      00A3AA A5 08            [ 1]  765 	bcp	a, #0x08
      00A3AC 27 26            [ 1]  766 	jreq	00102$
                           0002A5   767 	C$stm8s_adc1.c$447$2_0$406 ==.
                                    768 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 447: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      00A3AE 7B 07            [ 1]  769 	ld	a, (0x07, sp)
      00A3B0 48               [ 1]  770 	sll	a
      00A3B1 5F               [ 1]  771 	clrw	x
      00A3B2 97               [ 1]  772 	ld	xl, a
      00A3B3 51               [ 1]  773 	exgw	x, y
      00A3B4 93               [ 1]  774 	ldw	x, y
      00A3B5 1C 53 E1         [ 2]  775 	addw	x, #0x53e1
      00A3B8 F6               [ 1]  776 	ld	a, (x)
      00A3B9 97               [ 1]  777 	ld	xl, a
                           0002B1   778 	C$stm8s_adc1.c$449$2_0$406 ==.
                                    779 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 449: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      00A3BA 72 A9 53 E0      [ 2]  780 	addw	y, #0x53e0
      00A3BE 90 F6            [ 1]  781 	ld	a, (y)
                           0002B7   782 	C$stm8s_adc1.c$451$2_0$406 ==.
                                    783 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 451: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      00A3C0 0F 02            [ 1]  784 	clr	(0x02, sp)
      00A3C2 41               [ 1]  785 	exg	a, xl
      00A3C3 6B 04            [ 1]  786 	ld	(0x04, sp), a
      00A3C5 41               [ 1]  787 	exg	a, xl
      00A3C6 0F 03            [ 1]  788 	clr	(0x03, sp)
      00A3C8 1A 03            [ 1]  789 	or	a, (0x03, sp)
      00A3CA 95               [ 1]  790 	ld	xh, a
      00A3CB 7B 04            [ 1]  791 	ld	a, (0x04, sp)
      00A3CD 1A 02            [ 1]  792 	or	a, (0x02, sp)
      00A3CF 97               [ 1]  793 	ld	xl, a
      00A3D0 1F 03            [ 2]  794 	ldw	(0x03, sp), x
      00A3D2 20 29            [ 2]  795 	jra	00103$
      00A3D4                        796 00102$:
                           0002CB   797 	C$stm8s_adc1.c$456$2_0$407 ==.
                                    798 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 456: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      00A3D4 7B 07            [ 1]  799 	ld	a, (0x07, sp)
      00A3D6 48               [ 1]  800 	sll	a
      00A3D7 5F               [ 1]  801 	clrw	x
      00A3D8 97               [ 1]  802 	ld	xl, a
      00A3D9 90 93            [ 1]  803 	ldw	y, x
      00A3DB 72 A9 53 E0      [ 2]  804 	addw	y, #0x53e0
      00A3DF 90 F6            [ 1]  805 	ld	a, (y)
      00A3E1 90 5F            [ 1]  806 	clrw	y
      00A3E3 90 97            [ 1]  807 	ld	yl, a
                           0002DC   808 	C$stm8s_adc1.c$458$2_0$407 ==.
                                    809 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 458: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      00A3E5 1C 53 E1         [ 2]  810 	addw	x, #0x53e1
      00A3E8 F6               [ 1]  811 	ld	a, (x)
                           0002E0   812 	C$stm8s_adc1.c$460$2_0$407 ==.
                                    813 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 460: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
      00A3E9 5F               [ 1]  814 	clrw	x
      00A3EA 97               [ 1]  815 	ld	xl, a
      00A3EB 58               [ 2]  816 	sllw	x
      00A3EC 58               [ 2]  817 	sllw	x
      00A3ED 58               [ 2]  818 	sllw	x
      00A3EE 58               [ 2]  819 	sllw	x
      00A3EF 58               [ 2]  820 	sllw	x
      00A3F0 58               [ 2]  821 	sllw	x
      00A3F1 1F 03            [ 2]  822 	ldw	(0x03, sp), x
      00A3F3 7B 04            [ 1]  823 	ld	a, (0x04, sp)
      00A3F5 97               [ 1]  824 	ld	xl, a
      00A3F6 90 9F            [ 1]  825 	ld	a, yl
      00A3F8 1A 03            [ 1]  826 	or	a, (0x03, sp)
      00A3FA 95               [ 1]  827 	ld	xh, a
      00A3FB 1F 03            [ 2]  828 	ldw	(0x03, sp), x
      00A3FD                        829 00103$:
                           0002F4   830 	C$stm8s_adc1.c$463$1_0$405 ==.
                                    831 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 463: return ((uint16_t)temph);
      00A3FD 1E 03            [ 2]  832 	ldw	x, (0x03, sp)
                           0002F6   833 	C$stm8s_adc1.c$464$1_0$405 ==.
                                    834 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 464: }
      00A3FF 5B 04            [ 2]  835 	addw	sp, #4
                           0002F8   836 	C$stm8s_adc1.c$464$1_0$405 ==.
                           0002F8   837 	XG$ADC1_GetBufferValue$0$0 ==.
      00A401 81               [ 4]  838 	ret
                           0002F9   839 	G$ADC1_GetAWDChannelStatus$0$0 ==.
                           0002F9   840 	C$stm8s_adc1.c$472$1_0$409 ==.
                                    841 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 472: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
                                    842 ;	-----------------------------------------
                                    843 ;	 function ADC1_GetAWDChannelStatus
                                    844 ;	-----------------------------------------
      00A402                        845 _ADC1_GetAWDChannelStatus:
      00A402 88               [ 1]  846 	push	a
                           0002FA   847 	C$stm8s_adc1.c$479$1_0$409 ==.
                                    848 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 479: if (Channel < (uint8_t)8)
      00A403 7B 04            [ 1]  849 	ld	a, (0x04, sp)
      00A405 A1 08            [ 1]  850 	cp	a, #0x08
      00A407 24 16            [ 1]  851 	jrnc	00102$
                           000300   852 	C$stm8s_adc1.c$481$2_0$410 ==.
                                    853 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 481: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
      00A409 C6 54 0D         [ 1]  854 	ld	a, 0x540d
      00A40C 88               [ 1]  855 	push	a
      00A40D A6 01            [ 1]  856 	ld	a, #0x01
      00A40F 6B 02            [ 1]  857 	ld	(0x02, sp), a
      00A411 7B 05            [ 1]  858 	ld	a, (0x05, sp)
      00A413 27 05            [ 1]  859 	jreq	00112$
      00A415                        860 00111$:
      00A415 08 02            [ 1]  861 	sll	(0x02, sp)
      00A417 4A               [ 1]  862 	dec	a
      00A418 26 FB            [ 1]  863 	jrne	00111$
      00A41A                        864 00112$:
      00A41A 84               [ 1]  865 	pop	a
      00A41B 14 01            [ 1]  866 	and	a, (0x01, sp)
      00A41D 20 19            [ 2]  867 	jra	00103$
      00A41F                        868 00102$:
                           000316   869 	C$stm8s_adc1.c$485$2_0$411 ==.
                                    870 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 485: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
      00A41F C6 54 0C         [ 1]  871 	ld	a, 0x540c
      00A422 97               [ 1]  872 	ld	xl, a
      00A423 7B 04            [ 1]  873 	ld	a, (0x04, sp)
      00A425 A0 08            [ 1]  874 	sub	a, #0x08
      00A427 88               [ 1]  875 	push	a
      00A428 A6 01            [ 1]  876 	ld	a, #0x01
      00A42A 6B 02            [ 1]  877 	ld	(0x02, sp), a
      00A42C 84               [ 1]  878 	pop	a
      00A42D 4D               [ 1]  879 	tnz	a
      00A42E 27 05            [ 1]  880 	jreq	00114$
      00A430                        881 00113$:
      00A430 08 01            [ 1]  882 	sll	(0x01, sp)
      00A432 4A               [ 1]  883 	dec	a
      00A433 26 FB            [ 1]  884 	jrne	00113$
      00A435                        885 00114$:
      00A435 9F               [ 1]  886 	ld	a, xl
      00A436 14 01            [ 1]  887 	and	a, (0x01, sp)
      00A438                        888 00103$:
                           00032F   889 	C$stm8s_adc1.c$488$1_0$409 ==.
                                    890 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 488: return ((FlagStatus)status);
                           00032F   891 	C$stm8s_adc1.c$489$1_0$409 ==.
                                    892 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 489: }
      00A438 5B 01            [ 2]  893 	addw	sp, #1
                           000331   894 	C$stm8s_adc1.c$489$1_0$409 ==.
                           000331   895 	XG$ADC1_GetAWDChannelStatus$0$0 ==.
      00A43A 81               [ 4]  896 	ret
                           000332   897 	G$ADC1_GetFlagStatus$0$0 ==.
                           000332   898 	C$stm8s_adc1.c$497$1_0$413 ==.
                                    899 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 497: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                    900 ;	-----------------------------------------
                                    901 ;	 function ADC1_GetFlagStatus
                                    902 ;	-----------------------------------------
      00A43B                        903 _ADC1_GetFlagStatus:
      00A43B 52 02            [ 2]  904 	sub	sp, #2
                           000334   905 	C$stm8s_adc1.c$502$1_0$413 ==.
                                    906 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 502: if ((Flag & 0x0F) == 0x01)
      00A43D 7B 05            [ 1]  907 	ld	a, (0x05, sp)
      00A43F 6B 02            [ 1]  908 	ld	(0x02, sp), a
      00A441 0F 01            [ 1]  909 	clr	(0x01, sp)
      00A443 7B 02            [ 1]  910 	ld	a, (0x02, sp)
      00A445 A4 0F            [ 1]  911 	and	a, #0x0f
      00A447 97               [ 1]  912 	ld	xl, a
      00A448 4F               [ 1]  913 	clr	a
      00A449 95               [ 1]  914 	ld	xh, a
      00A44A 5A               [ 2]  915 	decw	x
      00A44B 26 07            [ 1]  916 	jrne	00108$
                           000344   917 	C$stm8s_adc1.c$505$2_0$414 ==.
                                    918 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 505: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
      00A44D C6 54 03         [ 1]  919 	ld	a, 0x5403
      00A450 A4 40            [ 1]  920 	and	a, #0x40
      00A452 20 4A            [ 2]  921 	jra	00109$
      00A454                        922 00108$:
                           00034B   923 	C$stm8s_adc1.c$507$1_0$413 ==.
                                    924 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 507: else if ((Flag & 0xF0) == 0x10)
      00A454 7B 02            [ 1]  925 	ld	a, (0x02, sp)
      00A456 A4 F0            [ 1]  926 	and	a, #0xf0
      00A458 97               [ 1]  927 	ld	xl, a
      00A459 4F               [ 1]  928 	clr	a
      00A45A 95               [ 1]  929 	ld	xh, a
      00A45B A3 00 10         [ 2]  930 	cpw	x, #0x0010
      00A45E 26 39            [ 1]  931 	jrne	00105$
                           000357   932 	C$stm8s_adc1.c$510$2_0$415 ==.
                                    933 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 510: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      00A460 7B 05            [ 1]  934 	ld	a, (0x05, sp)
      00A462 A4 0F            [ 1]  935 	and	a, #0x0f
      00A464 97               [ 1]  936 	ld	xl, a
                           00035C   937 	C$stm8s_adc1.c$511$2_0$415 ==.
                                    938 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 511: if (temp < 8)
      00A465 9F               [ 1]  939 	ld	a, xl
      00A466 A1 08            [ 1]  940 	cp	a, #0x08
      00A468 24 16            [ 1]  941 	jrnc	00102$
                           000361   942 	C$stm8s_adc1.c$513$3_0$416 ==.
                                    943 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 513: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00A46A C6 54 0D         [ 1]  944 	ld	a, 0x540d
      00A46D 6B 02            [ 1]  945 	ld	(0x02, sp), a
      00A46F A6 01            [ 1]  946 	ld	a, #0x01
      00A471 88               [ 1]  947 	push	a
      00A472 9F               [ 1]  948 	ld	a, xl
      00A473 4D               [ 1]  949 	tnz	a
      00A474 27 05            [ 1]  950 	jreq	00132$
      00A476                        951 00131$:
      00A476 08 01            [ 1]  952 	sll	(1, sp)
      00A478 4A               [ 1]  953 	dec	a
      00A479 26 FB            [ 1]  954 	jrne	00131$
      00A47B                        955 00132$:
      00A47B 84               [ 1]  956 	pop	a
      00A47C 14 02            [ 1]  957 	and	a, (0x02, sp)
      00A47E 20 1E            [ 2]  958 	jra	00109$
      00A480                        959 00102$:
                           000377   960 	C$stm8s_adc1.c$517$3_0$417 ==.
                                    961 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 517: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00A480 C6 54 0C         [ 1]  962 	ld	a, 0x540c
      00A483 6B 02            [ 1]  963 	ld	(0x02, sp), a
      00A485 1D 00 08         [ 2]  964 	subw	x, #8
      00A488 A6 01            [ 1]  965 	ld	a, #0x01
      00A48A 88               [ 1]  966 	push	a
      00A48B 9F               [ 1]  967 	ld	a, xl
      00A48C 4D               [ 1]  968 	tnz	a
      00A48D 27 05            [ 1]  969 	jreq	00134$
      00A48F                        970 00133$:
      00A48F 08 01            [ 1]  971 	sll	(1, sp)
      00A491 4A               [ 1]  972 	dec	a
      00A492 26 FB            [ 1]  973 	jrne	00133$
      00A494                        974 00134$:
      00A494 84               [ 1]  975 	pop	a
      00A495 14 02            [ 1]  976 	and	a, (0x02, sp)
      00A497 20 05            [ 2]  977 	jra	00109$
      00A499                        978 00105$:
                           000390   979 	C$stm8s_adc1.c$522$2_0$418 ==.
                                    980 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 522: flagstatus = (uint8_t)(ADC1->CSR & Flag);
      00A499 C6 54 00         [ 1]  981 	ld	a, 0x5400
      00A49C 14 05            [ 1]  982 	and	a, (0x05, sp)
      00A49E                        983 00109$:
                           000395   984 	C$stm8s_adc1.c$524$1_0$413 ==.
                                    985 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 524: return ((FlagStatus)flagstatus);
                           000395   986 	C$stm8s_adc1.c$526$1_0$413 ==.
                                    987 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 526: }
      00A49E 5B 02            [ 2]  988 	addw	sp, #2
                           000397   989 	C$stm8s_adc1.c$526$1_0$413 ==.
                           000397   990 	XG$ADC1_GetFlagStatus$0$0 ==.
      00A4A0 81               [ 4]  991 	ret
                           000398   992 	G$ADC1_ClearFlag$0$0 ==.
                           000398   993 	C$stm8s_adc1.c$534$1_0$420 ==.
                                    994 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 534: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                    995 ;	-----------------------------------------
                                    996 ;	 function ADC1_ClearFlag
                                    997 ;	-----------------------------------------
      00A4A1                        998 _ADC1_ClearFlag:
      00A4A1 52 02            [ 2]  999 	sub	sp, #2
                           00039A  1000 	C$stm8s_adc1.c$541$1_0$420 ==.
                                   1001 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 541: if ((Flag & 0x0F) == 0x01)
      00A4A3 7B 05            [ 1] 1002 	ld	a, (0x05, sp)
      00A4A5 6B 02            [ 1] 1003 	ld	(0x02, sp), a
      00A4A7 0F 01            [ 1] 1004 	clr	(0x01, sp)
      00A4A9 88               [ 1] 1005 	push	a
      00A4AA 7B 03            [ 1] 1006 	ld	a, (0x03, sp)
      00A4AC A4 0F            [ 1] 1007 	and	a, #0x0f
      00A4AE 97               [ 1] 1008 	ld	xl, a
      00A4AF 4F               [ 1] 1009 	clr	a
      00A4B0 95               [ 1] 1010 	ld	xh, a
      00A4B1 84               [ 1] 1011 	pop	a
      00A4B2 5A               [ 2] 1012 	decw	x
      00A4B3 26 06            [ 1] 1013 	jrne	00108$
                           0003AC  1014 	C$stm8s_adc1.c$544$2_0$421 ==.
                                   1015 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 544: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
      00A4B5 72 1D 54 03      [ 1] 1016 	bres	21507, #6
      00A4B9 20 5A            [ 2] 1017 	jra	00110$
      00A4BB                       1018 00108$:
                           0003B2  1019 	C$stm8s_adc1.c$546$1_0$420 ==.
                                   1020 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 546: else if ((Flag & 0xF0) == 0x10)
      00A4BB 7B 02            [ 1] 1021 	ld	a, (0x02, sp)
      00A4BD A4 F0            [ 1] 1022 	and	a, #0xf0
      00A4BF 97               [ 1] 1023 	ld	xl, a
      00A4C0 4F               [ 1] 1024 	clr	a
      00A4C1 95               [ 1] 1025 	ld	xh, a
      00A4C2 A3 00 10         [ 2] 1026 	cpw	x, #0x0010
      00A4C5 26 41            [ 1] 1027 	jrne	00105$
                           0003BE  1028 	C$stm8s_adc1.c$549$2_0$422 ==.
                                   1029 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 549: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      00A4C7 7B 05            [ 1] 1030 	ld	a, (0x05, sp)
      00A4C9 A4 0F            [ 1] 1031 	and	a, #0x0f
      00A4CB 97               [ 1] 1032 	ld	xl, a
                           0003C3  1033 	C$stm8s_adc1.c$550$2_0$422 ==.
                                   1034 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 550: if (temp < 8)
      00A4CC 9F               [ 1] 1035 	ld	a, xl
      00A4CD A1 08            [ 1] 1036 	cp	a, #0x08
      00A4CF 24 1A            [ 1] 1037 	jrnc	00102$
                           0003C8  1038 	C$stm8s_adc1.c$552$3_0$423 ==.
                                   1039 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 552: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00A4D1 C6 54 0D         [ 1] 1040 	ld	a, 0x540d
      00A4D4 6B 02            [ 1] 1041 	ld	(0x02, sp), a
      00A4D6 A6 01            [ 1] 1042 	ld	a, #0x01
      00A4D8 88               [ 1] 1043 	push	a
      00A4D9 9F               [ 1] 1044 	ld	a, xl
      00A4DA 4D               [ 1] 1045 	tnz	a
      00A4DB 27 05            [ 1] 1046 	jreq	00132$
      00A4DD                       1047 00131$:
      00A4DD 08 01            [ 1] 1048 	sll	(1, sp)
      00A4DF 4A               [ 1] 1049 	dec	a
      00A4E0 26 FB            [ 1] 1050 	jrne	00131$
      00A4E2                       1051 00132$:
      00A4E2 84               [ 1] 1052 	pop	a
      00A4E3 43               [ 1] 1053 	cpl	a
      00A4E4 14 02            [ 1] 1054 	and	a, (0x02, sp)
      00A4E6 C7 54 0D         [ 1] 1055 	ld	0x540d, a
      00A4E9 20 2A            [ 2] 1056 	jra	00110$
      00A4EB                       1057 00102$:
                           0003E2  1058 	C$stm8s_adc1.c$556$3_0$424 ==.
                                   1059 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 556: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      00A4EB C6 54 0C         [ 1] 1060 	ld	a, 0x540c
      00A4EE 6B 02            [ 1] 1061 	ld	(0x02, sp), a
      00A4F0 1D 00 08         [ 2] 1062 	subw	x, #8
      00A4F3 A6 01            [ 1] 1063 	ld	a, #0x01
      00A4F5 88               [ 1] 1064 	push	a
      00A4F6 9F               [ 1] 1065 	ld	a, xl
      00A4F7 4D               [ 1] 1066 	tnz	a
      00A4F8 27 05            [ 1] 1067 	jreq	00134$
      00A4FA                       1068 00133$:
      00A4FA 08 01            [ 1] 1069 	sll	(1, sp)
      00A4FC 4A               [ 1] 1070 	dec	a
      00A4FD 26 FB            [ 1] 1071 	jrne	00133$
      00A4FF                       1072 00134$:
      00A4FF 84               [ 1] 1073 	pop	a
      00A500 43               [ 1] 1074 	cpl	a
      00A501 14 02            [ 1] 1075 	and	a, (0x02, sp)
      00A503 C7 54 0C         [ 1] 1076 	ld	0x540c, a
      00A506 20 0D            [ 2] 1077 	jra	00110$
      00A508                       1078 00105$:
                           0003FF  1079 	C$stm8s_adc1.c$561$2_0$425 ==.
                                   1080 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 561: ADC1->CSR &= (uint8_t) (~Flag);
      00A508 C6 54 00         [ 1] 1081 	ld	a, 0x5400
      00A50B 6B 02            [ 1] 1082 	ld	(0x02, sp), a
      00A50D 7B 05            [ 1] 1083 	ld	a, (0x05, sp)
      00A50F 43               [ 1] 1084 	cpl	a
      00A510 14 02            [ 1] 1085 	and	a, (0x02, sp)
      00A512 C7 54 00         [ 1] 1086 	ld	0x5400, a
      00A515                       1087 00110$:
                           00040C  1088 	C$stm8s_adc1.c$563$1_0$420 ==.
                                   1089 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 563: }
      00A515 5B 02            [ 2] 1090 	addw	sp, #2
                           00040E  1091 	C$stm8s_adc1.c$563$1_0$420 ==.
                           00040E  1092 	XG$ADC1_ClearFlag$0$0 ==.
      00A517 81               [ 4] 1093 	ret
                           00040F  1094 	G$ADC1_GetITStatus$0$0 ==.
                           00040F  1095 	C$stm8s_adc1.c$583$1_0$427 ==.
                                   1096 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 583: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function ADC1_GetITStatus
                                   1099 ;	-----------------------------------------
      00A518                       1100 _ADC1_GetITStatus:
      00A518 88               [ 1] 1101 	push	a
                           000410  1102 	C$stm8s_adc1.c$591$1_0$427 ==.
                                   1103 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 591: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00A519 7B 05            [ 1] 1104 	ld	a, (0x05, sp)
      00A51B A4 F0            [ 1] 1105 	and	a, #0xf0
      00A51D 97               [ 1] 1106 	ld	xl, a
      00A51E 4F               [ 1] 1107 	clr	a
      00A51F 95               [ 1] 1108 	ld	xh, a
      00A520 A3 00 10         [ 2] 1109 	cpw	x, #0x0010
      00A523 26 39            [ 1] 1110 	jrne	00105$
                           00041C  1111 	C$stm8s_adc1.c$594$1_0$427 ==.
                                   1112 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 594: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00A525 7B 05            [ 1] 1113 	ld	a, (0x05, sp)
      00A527 A4 0F            [ 1] 1114 	and	a, #0x0f
      00A529 97               [ 1] 1115 	ld	xl, a
                           000421  1116 	C$stm8s_adc1.c$595$2_0$428 ==.
                                   1117 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 595: if (temp < 8)
      00A52A 9F               [ 1] 1118 	ld	a, xl
      00A52B A1 08            [ 1] 1119 	cp	a, #0x08
      00A52D 24 16            [ 1] 1120 	jrnc	00102$
                           000426  1121 	C$stm8s_adc1.c$597$3_0$429 ==.
                                   1122 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 597: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00A52F C6 54 0D         [ 1] 1123 	ld	a, 0x540d
      00A532 6B 01            [ 1] 1124 	ld	(0x01, sp), a
      00A534 A6 01            [ 1] 1125 	ld	a, #0x01
      00A536 88               [ 1] 1126 	push	a
      00A537 9F               [ 1] 1127 	ld	a, xl
      00A538 4D               [ 1] 1128 	tnz	a
      00A539 27 05            [ 1] 1129 	jreq	00122$
      00A53B                       1130 00121$:
      00A53B 08 01            [ 1] 1131 	sll	(1, sp)
      00A53D 4A               [ 1] 1132 	dec	a
      00A53E 26 FB            [ 1] 1133 	jrne	00121$
      00A540                       1134 00122$:
      00A540 84               [ 1] 1135 	pop	a
      00A541 14 01            [ 1] 1136 	and	a, (0x01, sp)
      00A543 20 22            [ 2] 1137 	jra	00106$
      00A545                       1138 00102$:
                           00043C  1139 	C$stm8s_adc1.c$601$3_0$430 ==.
                                   1140 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 601: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00A545 C6 54 0C         [ 1] 1141 	ld	a, 0x540c
      00A548 6B 01            [ 1] 1142 	ld	(0x01, sp), a
      00A54A 1D 00 08         [ 2] 1143 	subw	x, #8
      00A54D A6 01            [ 1] 1144 	ld	a, #0x01
      00A54F 88               [ 1] 1145 	push	a
      00A550 9F               [ 1] 1146 	ld	a, xl
      00A551 4D               [ 1] 1147 	tnz	a
      00A552 27 05            [ 1] 1148 	jreq	00124$
      00A554                       1149 00123$:
      00A554 08 01            [ 1] 1150 	sll	(1, sp)
      00A556 4A               [ 1] 1151 	dec	a
      00A557 26 FB            [ 1] 1152 	jrne	00123$
      00A559                       1153 00124$:
      00A559 84               [ 1] 1154 	pop	a
      00A55A 14 01            [ 1] 1155 	and	a, (0x01, sp)
      00A55C 20 09            [ 2] 1156 	jra	00106$
      00A55E                       1157 00105$:
                           000455  1158 	C$stm8s_adc1.c$606$2_0$431 ==.
                                   1159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 606: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
      00A55E C6 54 00         [ 1] 1160 	ld	a, 0x5400
      00A561 6B 01            [ 1] 1161 	ld	(0x01, sp), a
      00A563 7B 05            [ 1] 1162 	ld	a, (0x05, sp)
      00A565 14 01            [ 1] 1163 	and	a, (0x01, sp)
      00A567                       1164 00106$:
                           00045E  1165 	C$stm8s_adc1.c$608$1_0$427 ==.
                                   1166 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 608: return ((ITStatus)itstatus);
                           00045E  1167 	C$stm8s_adc1.c$609$1_0$427 ==.
                                   1168 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 609: }
      00A567 5B 01            [ 2] 1169 	addw	sp, #1
                           000460  1170 	C$stm8s_adc1.c$609$1_0$427 ==.
                           000460  1171 	XG$ADC1_GetITStatus$0$0 ==.
      00A569 81               [ 4] 1172 	ret
                           000461  1173 	G$ADC1_ClearITPendingBit$0$0 ==.
                           000461  1174 	C$stm8s_adc1.c$629$1_0$433 ==.
                                   1175 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 629: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
                                   1176 ;	-----------------------------------------
                                   1177 ;	 function ADC1_ClearITPendingBit
                                   1178 ;	-----------------------------------------
      00A56A                       1179 _ADC1_ClearITPendingBit:
      00A56A 88               [ 1] 1180 	push	a
                           000462  1181 	C$stm8s_adc1.c$636$1_0$433 ==.
                                   1182 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 636: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00A56B 7B 05            [ 1] 1183 	ld	a, (0x05, sp)
      00A56D A4 F0            [ 1] 1184 	and	a, #0xf0
      00A56F 97               [ 1] 1185 	ld	xl, a
      00A570 4F               [ 1] 1186 	clr	a
      00A571 95               [ 1] 1187 	ld	xh, a
      00A572 A3 00 10         [ 2] 1188 	cpw	x, #0x0010
      00A575 26 41            [ 1] 1189 	jrne	00105$
                           00046E  1190 	C$stm8s_adc1.c$639$1_0$433 ==.
                                   1191 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 639: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00A577 7B 05            [ 1] 1192 	ld	a, (0x05, sp)
      00A579 A4 0F            [ 1] 1193 	and	a, #0x0f
      00A57B 97               [ 1] 1194 	ld	xl, a
                           000473  1195 	C$stm8s_adc1.c$640$2_0$434 ==.
                                   1196 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 640: if (temp < 8)
      00A57C 9F               [ 1] 1197 	ld	a, xl
      00A57D A1 08            [ 1] 1198 	cp	a, #0x08
      00A57F 24 1A            [ 1] 1199 	jrnc	00102$
                           000478  1200 	C$stm8s_adc1.c$642$3_0$435 ==.
                                   1201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 642: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00A581 C6 54 0D         [ 1] 1202 	ld	a, 0x540d
      00A584 6B 01            [ 1] 1203 	ld	(0x01, sp), a
      00A586 A6 01            [ 1] 1204 	ld	a, #0x01
      00A588 88               [ 1] 1205 	push	a
      00A589 9F               [ 1] 1206 	ld	a, xl
      00A58A 4D               [ 1] 1207 	tnz	a
      00A58B 27 05            [ 1] 1208 	jreq	00122$
      00A58D                       1209 00121$:
      00A58D 08 01            [ 1] 1210 	sll	(1, sp)
      00A58F 4A               [ 1] 1211 	dec	a
      00A590 26 FB            [ 1] 1212 	jrne	00121$
      00A592                       1213 00122$:
      00A592 84               [ 1] 1214 	pop	a
      00A593 43               [ 1] 1215 	cpl	a
      00A594 14 01            [ 1] 1216 	and	a, (0x01, sp)
      00A596 C7 54 0D         [ 1] 1217 	ld	0x540d, a
      00A599 20 2A            [ 2] 1218 	jra	00107$
      00A59B                       1219 00102$:
                           000492  1220 	C$stm8s_adc1.c$646$3_0$436 ==.
                                   1221 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 646: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      00A59B C6 54 0C         [ 1] 1222 	ld	a, 0x540c
      00A59E 6B 01            [ 1] 1223 	ld	(0x01, sp), a
      00A5A0 1D 00 08         [ 2] 1224 	subw	x, #8
      00A5A3 A6 01            [ 1] 1225 	ld	a, #0x01
      00A5A5 88               [ 1] 1226 	push	a
      00A5A6 9F               [ 1] 1227 	ld	a, xl
      00A5A7 4D               [ 1] 1228 	tnz	a
      00A5A8 27 05            [ 1] 1229 	jreq	00124$
      00A5AA                       1230 00123$:
      00A5AA 08 01            [ 1] 1231 	sll	(1, sp)
      00A5AC 4A               [ 1] 1232 	dec	a
      00A5AD 26 FB            [ 1] 1233 	jrne	00123$
      00A5AF                       1234 00124$:
      00A5AF 84               [ 1] 1235 	pop	a
      00A5B0 43               [ 1] 1236 	cpl	a
      00A5B1 14 01            [ 1] 1237 	and	a, (0x01, sp)
      00A5B3 C7 54 0C         [ 1] 1238 	ld	0x540c, a
      00A5B6 20 0D            [ 2] 1239 	jra	00107$
      00A5B8                       1240 00105$:
                           0004AF  1241 	C$stm8s_adc1.c$651$2_0$437 ==.
                                   1242 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 651: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
      00A5B8 C6 54 00         [ 1] 1243 	ld	a, 0x5400
      00A5BB 1E 04            [ 2] 1244 	ldw	x, (0x04, sp)
      00A5BD 53               [ 2] 1245 	cplw	x
      00A5BE 89               [ 2] 1246 	pushw	x
      00A5BF 14 02            [ 1] 1247 	and	a, (2, sp)
      00A5C1 85               [ 2] 1248 	popw	x
      00A5C2 C7 54 00         [ 1] 1249 	ld	0x5400, a
      00A5C5                       1250 00107$:
                           0004BC  1251 	C$stm8s_adc1.c$653$1_0$433 ==.
                                   1252 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_adc1.c: 653: }
      00A5C5 84               [ 1] 1253 	pop	a
                           0004BD  1254 	C$stm8s_adc1.c$653$1_0$433 ==.
                           0004BD  1255 	XG$ADC1_ClearITPendingBit$0$0 ==.
      00A5C6 81               [ 4] 1256 	ret
                                   1257 	.area CODE
                                   1258 	.area CONST
                                   1259 	.area INITIALIZER
                                   1260 	.area CABS (ABS)
