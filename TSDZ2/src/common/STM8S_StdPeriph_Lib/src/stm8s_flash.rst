                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_flash
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _FLASH_Unlock
                                     12 	.globl _FLASH_Lock
                                     13 	.globl _FLASH_DeInit
                                     14 	.globl _FLASH_ITConfig
                                     15 	.globl _FLASH_EraseByte
                                     16 	.globl _FLASH_ProgramByte
                                     17 	.globl _FLASH_ReadByte
                                     18 	.globl _FLASH_ProgramWord
                                     19 	.globl _FLASH_ProgramOptionByte
                                     20 	.globl _FLASH_EraseOptionByte
                                     21 	.globl _FLASH_ReadOptionByte
                                     22 	.globl _FLASH_SetLowPowerMode
                                     23 	.globl _FLASH_SetProgrammingTime
                                     24 	.globl _FLASH_GetLowPowerMode
                                     25 	.globl _FLASH_GetProgrammingTime
                                     26 	.globl _FLASH_GetBootSize
                                     27 	.globl _FLASH_GetFlagStatus
                                     28 	.globl _FLASH_WaitForLastOperation
                                     29 	.globl _FLASH_EraseBlock
                                     30 	.globl _FLASH_ProgramBlock
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; global & static initialisations
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area GSINIT
                                     57 	.area GSFINAL
                                     58 	.area GSINIT
                                     59 ;--------------------------------------------------------
                                     60 ; Home
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area HOME
                                     64 ;--------------------------------------------------------
                                     65 ; code
                                     66 ;--------------------------------------------------------
                                     67 	.area CODE
                           000000    68 	G$FLASH_Unlock$0$0 ==.
                           000000    69 	C$stm8s_flash.c$87$0_0$346 ==.
                                     70 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 87: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
                                     71 ;	-----------------------------------------
                                     72 ;	 function FLASH_Unlock
                                     73 ;	-----------------------------------------
      00A5C7                         74 _FLASH_Unlock:
                           000000    75 	C$stm8s_flash.c$93$1_0$346 ==.
                                     76 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 93: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A5C7 7B 03            [ 1]   77 	ld	a, (0x03, sp)
      00A5C9 A1 FD            [ 1]   78 	cp	a, #0xfd
      00A5CB 26 0A            [ 1]   79 	jrne	00102$
                           000006    80 	C$stm8s_flash.c$95$2_0$347 ==.
                                     81 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 95: FLASH->PUKR = FLASH_RASS_KEY1;
      00A5CD 35 56 50 62      [ 1]   82 	mov	0x5062+0, #0x56
                           00000A    83 	C$stm8s_flash.c$96$2_0$347 ==.
                                     84 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 96: FLASH->PUKR = FLASH_RASS_KEY2;
      00A5D1 35 AE 50 62      [ 1]   85 	mov	0x5062+0, #0xae
      00A5D5 20 08            [ 2]   86 	jra	00104$
      00A5D7                         87 00102$:
                           000010    88 	C$stm8s_flash.c$101$2_0$348 ==.
                                     89 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 101: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
      00A5D7 35 AE 50 64      [ 1]   90 	mov	0x5064+0, #0xae
                           000014    91 	C$stm8s_flash.c$102$2_0$348 ==.
                                     92 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 102: FLASH->DUKR = FLASH_RASS_KEY1;
      00A5DB 35 56 50 64      [ 1]   93 	mov	0x5064+0, #0x56
      00A5DF                         94 00104$:
                           000018    95 	C$stm8s_flash.c$104$1_0$346 ==.
                                     96 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 104: }
                           000018    97 	C$stm8s_flash.c$104$1_0$346 ==.
                           000018    98 	XG$FLASH_Unlock$0$0 ==.
      00A5DF 81               [ 4]   99 	ret
                           000019   100 	G$FLASH_Lock$0$0 ==.
                           000019   101 	C$stm8s_flash.c$112$1_0$350 ==.
                                    102 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 112: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
                                    103 ;	-----------------------------------------
                                    104 ;	 function FLASH_Lock
                                    105 ;	-----------------------------------------
      00A5E0                        106 _FLASH_Lock:
                           000019   107 	C$stm8s_flash.c$118$1_0$350 ==.
                                    108 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 118: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
      00A5E0 C6 50 5F         [ 1]  109 	ld	a, 0x505f
      00A5E3 14 03            [ 1]  110 	and	a, (0x03, sp)
      00A5E5 C7 50 5F         [ 1]  111 	ld	0x505f, a
                           000021   112 	C$stm8s_flash.c$119$1_0$350 ==.
                                    113 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 119: }
                           000021   114 	C$stm8s_flash.c$119$1_0$350 ==.
                           000021   115 	XG$FLASH_Lock$0$0 ==.
      00A5E8 81               [ 4]  116 	ret
                           000022   117 	G$FLASH_DeInit$0$0 ==.
                           000022   118 	C$stm8s_flash.c$126$1_0$352 ==.
                                    119 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 126: void FLASH_DeInit(void)
                                    120 ;	-----------------------------------------
                                    121 ;	 function FLASH_DeInit
                                    122 ;	-----------------------------------------
      00A5E9                        123 _FLASH_DeInit:
                           000022   124 	C$stm8s_flash.c$128$1_0$352 ==.
                                    125 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 128: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
      00A5E9 35 00 50 5A      [ 1]  126 	mov	0x505a+0, #0x00
                           000026   127 	C$stm8s_flash.c$129$1_0$352 ==.
                                    128 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 129: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
      00A5ED 35 00 50 5B      [ 1]  129 	mov	0x505b+0, #0x00
                           00002A   130 	C$stm8s_flash.c$130$1_0$352 ==.
                                    131 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 130: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
      00A5F1 35 FF 50 5C      [ 1]  132 	mov	0x505c+0, #0xff
                           00002E   133 	C$stm8s_flash.c$131$1_0$352 ==.
                                    134 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 131: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
      00A5F5 72 17 50 5F      [ 1]  135 	bres	20575, #3
                           000032   136 	C$stm8s_flash.c$132$1_0$352 ==.
                                    137 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 132: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
      00A5F9 72 13 50 5F      [ 1]  138 	bres	20575, #1
                           000036   139 	C$stm8s_flash.c$133$1_0$352 ==.
                                    140 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 133: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
      00A5FD C6 50 5F         [ 1]  141 	ld	a, 0x505f
                           000039   142 	C$stm8s_flash.c$134$1_0$352 ==.
                                    143 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 134: }
                           000039   144 	C$stm8s_flash.c$134$1_0$352 ==.
                           000039   145 	XG$FLASH_DeInit$0$0 ==.
      00A600 81               [ 4]  146 	ret
                           00003A   147 	G$FLASH_ITConfig$0$0 ==.
                           00003A   148 	C$stm8s_flash.c$142$1_0$354 ==.
                                    149 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 142: void FLASH_ITConfig(FunctionalState NewState)
                                    150 ;	-----------------------------------------
                                    151 ;	 function FLASH_ITConfig
                                    152 ;	-----------------------------------------
      00A601                        153 _FLASH_ITConfig:
                           00003A   154 	C$stm8s_flash.c$147$1_0$354 ==.
                                    155 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 147: if(NewState != DISABLE)
      00A601 0D 03            [ 1]  156 	tnz	(0x03, sp)
      00A603 27 06            [ 1]  157 	jreq	00102$
                           00003E   158 	C$stm8s_flash.c$149$2_0$355 ==.
                                    159 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 149: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      00A605 72 12 50 5A      [ 1]  160 	bset	20570, #1
      00A609 20 04            [ 2]  161 	jra	00104$
      00A60B                        162 00102$:
                           000044   163 	C$stm8s_flash.c$153$2_0$356 ==.
                                    164 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 153: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
      00A60B 72 13 50 5A      [ 1]  165 	bres	20570, #1
      00A60F                        166 00104$:
                           000048   167 	C$stm8s_flash.c$155$1_0$354 ==.
                                    168 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 155: }
                           000048   169 	C$stm8s_flash.c$155$1_0$354 ==.
                           000048   170 	XG$FLASH_ITConfig$0$0 ==.
      00A60F 81               [ 4]  171 	ret
                           000049   172 	G$FLASH_EraseByte$0$0 ==.
                           000049   173 	C$stm8s_flash.c$164$1_0$358 ==.
                                    174 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 164: void FLASH_EraseByte(uint32_t Address)
                                    175 ;	-----------------------------------------
                                    176 ;	 function FLASH_EraseByte
                                    177 ;	-----------------------------------------
      00A610                        178 _FLASH_EraseByte:
                           000049   179 	C$stm8s_flash.c$170$1_0$358 ==.
                                    180 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 170: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
      00A610 1E 05            [ 2]  181 	ldw	x, (0x05, sp)
      00A612 7F               [ 1]  182 	clr	(x)
                           00004C   183 	C$stm8s_flash.c$171$1_0$358 ==.
                                    184 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 171: }
                           00004C   185 	C$stm8s_flash.c$171$1_0$358 ==.
                           00004C   186 	XG$FLASH_EraseByte$0$0 ==.
      00A613 81               [ 4]  187 	ret
                           00004D   188 	G$FLASH_ProgramByte$0$0 ==.
                           00004D   189 	C$stm8s_flash.c$181$1_0$360 ==.
                                    190 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 181: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
                                    191 ;	-----------------------------------------
                                    192 ;	 function FLASH_ProgramByte
                                    193 ;	-----------------------------------------
      00A614                        194 _FLASH_ProgramByte:
                           00004D   195 	C$stm8s_flash.c$185$1_0$360 ==.
                                    196 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 185: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
      00A614 1E 05            [ 2]  197 	ldw	x, (0x05, sp)
      00A616 7B 07            [ 1]  198 	ld	a, (0x07, sp)
      00A618 F7               [ 1]  199 	ld	(x), a
                           000052   200 	C$stm8s_flash.c$186$1_0$360 ==.
                                    201 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 186: }
                           000052   202 	C$stm8s_flash.c$186$1_0$360 ==.
                           000052   203 	XG$FLASH_ProgramByte$0$0 ==.
      00A619 81               [ 4]  204 	ret
                           000053   205 	G$FLASH_ReadByte$0$0 ==.
                           000053   206 	C$stm8s_flash.c$195$1_0$362 ==.
                                    207 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 195: uint8_t FLASH_ReadByte(uint32_t Address)
                                    208 ;	-----------------------------------------
                                    209 ;	 function FLASH_ReadByte
                                    210 ;	-----------------------------------------
      00A61A                        211 _FLASH_ReadByte:
                           000053   212 	C$stm8s_flash.c$201$1_0$362 ==.
                                    213 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 201: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address);
      00A61A 1E 05            [ 2]  214 	ldw	x, (0x05, sp)
      00A61C F6               [ 1]  215 	ld	a, (x)
                           000056   216 	C$stm8s_flash.c$202$1_0$362 ==.
                                    217 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 202: }
                           000056   218 	C$stm8s_flash.c$202$1_0$362 ==.
                           000056   219 	XG$FLASH_ReadByte$0$0 ==.
      00A61D 81               [ 4]  220 	ret
                           000057   221 	G$FLASH_ProgramWord$0$0 ==.
                           000057   222 	C$stm8s_flash.c$212$1_0$364 ==.
                                    223 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 212: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
                                    224 ;	-----------------------------------------
                                    225 ;	 function FLASH_ProgramWord
                                    226 ;	-----------------------------------------
      00A61E                        227 _FLASH_ProgramWord:
      00A61E 52 04            [ 2]  228 	sub	sp, #4
                           000059   229 	C$stm8s_flash.c$218$1_0$364 ==.
                                    230 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 218: FLASH->CR2 |= FLASH_CR2_WPRG;
      00A620 72 1C 50 5B      [ 1]  231 	bset	20571, #6
                           00005D   232 	C$stm8s_flash.c$219$1_0$364 ==.
                                    233 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 219: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
      00A624 72 1D 50 5C      [ 1]  234 	bres	20572, #6
                           000061   235 	C$stm8s_flash.c$222$1_0$364 ==.
                                    236 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 222: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
      00A628 16 09            [ 2]  237 	ldw	y, (0x09, sp)
      00A62A 96               [ 1]  238 	ldw	x, sp
      00A62B 1C 00 0B         [ 2]  239 	addw	x, #11
      00A62E 1F 01            [ 2]  240 	ldw	(0x01, sp), x
      00A630 F6               [ 1]  241 	ld	a, (x)
      00A631 90 F7            [ 1]  242 	ld	(y), a
                           00006C   243 	C$stm8s_flash.c$224$1_0$364 ==.
                                    244 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 224: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1);
      00A633 93               [ 1]  245 	ldw	x, y
      00A634 5C               [ 1]  246 	incw	x
      00A635 1F 03            [ 2]  247 	ldw	(0x03, sp), x
      00A637 1E 01            [ 2]  248 	ldw	x, (0x01, sp)
      00A639 E6 01            [ 1]  249 	ld	a, (0x1, x)
      00A63B 1E 03            [ 2]  250 	ldw	x, (0x03, sp)
      00A63D F7               [ 1]  251 	ld	(x), a
                           000077   252 	C$stm8s_flash.c$226$1_0$364 ==.
                                    253 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 226: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2);
      00A63E 93               [ 1]  254 	ldw	x, y
      00A63F 5C               [ 1]  255 	incw	x
      00A640 5C               [ 1]  256 	incw	x
      00A641 1F 03            [ 2]  257 	ldw	(0x03, sp), x
      00A643 1E 01            [ 2]  258 	ldw	x, (0x01, sp)
      00A645 E6 02            [ 1]  259 	ld	a, (0x2, x)
      00A647 1E 03            [ 2]  260 	ldw	x, (0x03, sp)
      00A649 F7               [ 1]  261 	ld	(x), a
                           000083   262 	C$stm8s_flash.c$228$1_0$364 ==.
                                    263 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 228: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3);
      00A64A 72 A9 00 03      [ 2]  264 	addw	y, #0x0003
      00A64E 1E 01            [ 2]  265 	ldw	x, (0x01, sp)
      00A650 E6 03            [ 1]  266 	ld	a, (0x3, x)
      00A652 90 F7            [ 1]  267 	ld	(y), a
                           00008D   268 	C$stm8s_flash.c$229$1_0$364 ==.
                                    269 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 229: }
      00A654 5B 04            [ 2]  270 	addw	sp, #4
                           00008F   271 	C$stm8s_flash.c$229$1_0$364 ==.
                           00008F   272 	XG$FLASH_ProgramWord$0$0 ==.
      00A656 81               [ 4]  273 	ret
                           000090   274 	G$FLASH_ProgramOptionByte$0$0 ==.
                           000090   275 	C$stm8s_flash.c$237$1_0$366 ==.
                                    276 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 237: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
                                    277 ;	-----------------------------------------
                                    278 ;	 function FLASH_ProgramOptionByte
                                    279 ;	-----------------------------------------
      00A657                        280 _FLASH_ProgramOptionByte:
                           000090   281 	C$stm8s_flash.c$243$1_0$366 ==.
                                    282 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 243: FLASH->CR2 |= FLASH_CR2_OPT;
      00A657 72 1E 50 5B      [ 1]  283 	bset	20571, #7
                           000094   284 	C$stm8s_flash.c$244$1_0$366 ==.
                                    285 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 244: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00A65B 72 1F 50 5C      [ 1]  286 	bres	20572, #7
                           000098   287 	C$stm8s_flash.c$247$1_0$366 ==.
                                    288 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 247: if(Address == 0x4800)
      00A65F 1E 03            [ 2]  289 	ldw	x, (0x03, sp)
      00A661 A3 48 00         [ 2]  290 	cpw	x, #0x4800
      00A664 26 07            [ 1]  291 	jrne	00102$
                           00009F   292 	C$stm8s_flash.c$250$2_0$367 ==.
                                    293 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 250: *((NEAR uint8_t*)Address) = Data;
      00A666 1E 03            [ 2]  294 	ldw	x, (0x03, sp)
      00A668 7B 05            [ 1]  295 	ld	a, (0x05, sp)
      00A66A F7               [ 1]  296 	ld	(x), a
      00A66B 20 0C            [ 2]  297 	jra	00103$
      00A66D                        298 00102$:
                           0000A6   299 	C$stm8s_flash.c$255$2_0$368 ==.
                                    300 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 255: *((NEAR uint8_t*)Address) = Data;
      00A66D 1E 03            [ 2]  301 	ldw	x, (0x03, sp)
      00A66F 7B 05            [ 1]  302 	ld	a, (0x05, sp)
      00A671 F7               [ 1]  303 	ld	(x), a
                           0000AB   304 	C$stm8s_flash.c$256$2_0$368 ==.
                                    305 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 256: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
      00A672 1E 03            [ 2]  306 	ldw	x, (0x03, sp)
      00A674 5C               [ 1]  307 	incw	x
      00A675 7B 05            [ 1]  308 	ld	a, (0x05, sp)
      00A677 43               [ 1]  309 	cpl	a
      00A678 F7               [ 1]  310 	ld	(x), a
      00A679                        311 00103$:
                           0000B2   312 	C$stm8s_flash.c$258$1_0$366 ==.
                                    313 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 258: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00A679 4B FD            [ 1]  314 	push	#0xfd
      00A67B CD A7 58         [ 4]  315 	call	_FLASH_WaitForLastOperation
      00A67E 84               [ 1]  316 	pop	a
                           0000B8   317 	C$stm8s_flash.c$261$1_0$366 ==.
                                    318 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 261: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00A67F 72 1F 50 5B      [ 1]  319 	bres	20571, #7
                           0000BC   320 	C$stm8s_flash.c$262$1_0$366 ==.
                                    321 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 262: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00A683 72 1E 50 5C      [ 1]  322 	bset	20572, #7
                           0000C0   323 	C$stm8s_flash.c$263$1_0$366 ==.
                                    324 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 263: }
                           0000C0   325 	C$stm8s_flash.c$263$1_0$366 ==.
                           0000C0   326 	XG$FLASH_ProgramOptionByte$0$0 ==.
      00A687 81               [ 4]  327 	ret
                           0000C1   328 	G$FLASH_EraseOptionByte$0$0 ==.
                           0000C1   329 	C$stm8s_flash.c$270$1_0$370 ==.
                                    330 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 270: void FLASH_EraseOptionByte(uint16_t Address)
                                    331 ;	-----------------------------------------
                                    332 ;	 function FLASH_EraseOptionByte
                                    333 ;	-----------------------------------------
      00A688                        334 _FLASH_EraseOptionByte:
                           0000C1   335 	C$stm8s_flash.c$276$1_0$370 ==.
                                    336 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 276: FLASH->CR2 |= FLASH_CR2_OPT;
      00A688 72 1E 50 5B      [ 1]  337 	bset	20571, #7
                           0000C5   338 	C$stm8s_flash.c$277$1_0$370 ==.
                                    339 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 277: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      00A68C 72 1F 50 5C      [ 1]  340 	bres	20572, #7
                           0000C9   341 	C$stm8s_flash.c$280$1_0$370 ==.
                                    342 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 280: if(Address == 0x4800)
      00A690 1E 03            [ 2]  343 	ldw	x, (0x03, sp)
      00A692 A3 48 00         [ 2]  344 	cpw	x, #0x4800
      00A695 26 05            [ 1]  345 	jrne	00102$
                           0000D0   346 	C$stm8s_flash.c$283$2_0$371 ==.
                                    347 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 283: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00A697 1E 03            [ 2]  348 	ldw	x, (0x03, sp)
      00A699 7F               [ 1]  349 	clr	(x)
      00A69A 20 09            [ 2]  350 	jra	00103$
      00A69C                        351 00102$:
                           0000D5   352 	C$stm8s_flash.c$288$2_0$372 ==.
                                    353 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 288: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      00A69C 1E 03            [ 2]  354 	ldw	x, (0x03, sp)
      00A69E 7F               [ 1]  355 	clr	(x)
                           0000D8   356 	C$stm8s_flash.c$289$2_0$372 ==.
                                    357 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 289: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
      00A69F 1E 03            [ 2]  358 	ldw	x, (0x03, sp)
      00A6A1 5C               [ 1]  359 	incw	x
      00A6A2 A6 FF            [ 1]  360 	ld	a, #0xff
      00A6A4 F7               [ 1]  361 	ld	(x), a
      00A6A5                        362 00103$:
                           0000DE   363 	C$stm8s_flash.c$291$1_0$370 ==.
                                    364 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 291: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      00A6A5 4B FD            [ 1]  365 	push	#0xfd
      00A6A7 CD A7 58         [ 4]  366 	call	_FLASH_WaitForLastOperation
      00A6AA 84               [ 1]  367 	pop	a
                           0000E4   368 	C$stm8s_flash.c$294$1_0$370 ==.
                                    369 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 294: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      00A6AB 72 1F 50 5B      [ 1]  370 	bres	20571, #7
                           0000E8   371 	C$stm8s_flash.c$295$1_0$370 ==.
                                    372 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 295: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      00A6AF 72 1E 50 5C      [ 1]  373 	bset	20572, #7
                           0000EC   374 	C$stm8s_flash.c$296$1_0$370 ==.
                                    375 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 296: }
                           0000EC   376 	C$stm8s_flash.c$296$1_0$370 ==.
                           0000EC   377 	XG$FLASH_EraseOptionByte$0$0 ==.
      00A6B3 81               [ 4]  378 	ret
                           0000ED   379 	G$FLASH_ReadOptionByte$0$0 ==.
                           0000ED   380 	C$stm8s_flash.c$303$1_0$374 ==.
                                    381 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 303: uint16_t FLASH_ReadOptionByte(uint16_t Address)
                                    382 ;	-----------------------------------------
                                    383 ;	 function FLASH_ReadOptionByte
                                    384 ;	-----------------------------------------
      00A6B4                        385 _FLASH_ReadOptionByte:
      00A6B4 52 02            [ 2]  386 	sub	sp, #2
                           0000EF   387 	C$stm8s_flash.c$311$1_0$374 ==.
                                    388 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 311: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
      00A6B6 1E 05            [ 2]  389 	ldw	x, (0x05, sp)
      00A6B8 F6               [ 1]  390 	ld	a, (x)
      00A6B9 90 97            [ 1]  391 	ld	yl, a
                           0000F4   392 	C$stm8s_flash.c$312$1_0$374 ==.
                                    393 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 312: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
      00A6BB E6 01            [ 1]  394 	ld	a, (0x1, x)
                           0000F6   395 	C$stm8s_flash.c$315$1_0$374 ==.
                                    396 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 315: if(Address == 0x4800)
      00A6BD 1E 05            [ 2]  397 	ldw	x, (0x05, sp)
      00A6BF A3 48 00         [ 2]  398 	cpw	x, #0x4800
      00A6C2 26 05            [ 1]  399 	jrne	00105$
                           0000FD   400 	C$stm8s_flash.c$317$2_0$375 ==.
                                    401 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 317: res_value =	 value_optbyte;
      00A6C4 93               [ 1]  402 	ldw	x, y
      00A6C5 4F               [ 1]  403 	clr	a
      00A6C6 95               [ 1]  404 	ld	xh, a
      00A6C7 20 2A            [ 2]  405 	jra	00106$
      00A6C9                        406 00105$:
                           000102   407 	C$stm8s_flash.c$321$2_0$376 ==.
                                    408 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 321: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
      00A6C9 88               [ 1]  409 	push	a
      00A6CA 43               [ 1]  410 	cpl	a
      00A6CB 6B 03            [ 1]  411 	ld	(0x03, sp), a
      00A6CD 90 9F            [ 1]  412 	ld	a, yl
      00A6CF 11 03            [ 1]  413 	cp	a, (0x03, sp)
      00A6D1 84               [ 1]  414 	pop	a
      00A6D2 26 1C            [ 1]  415 	jrne	00102$
                           00010D   416 	C$stm8s_flash.c$323$3_0$377 ==.
                                    417 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 323: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
      00A6D4 61               [ 1]  418 	exg	a, yl
      00A6D5 6B 02            [ 1]  419 	ld	(0x02, sp), a
      00A6D7 61               [ 1]  420 	exg	a, yl
      00A6D8 0F 01            [ 1]  421 	clr	(0x01, sp)
      00A6DA 61               [ 1]  422 	exg	a, yl
      00A6DB 7B 02            [ 1]  423 	ld	a, (0x02, sp)
      00A6DD 61               [ 1]  424 	exg	a, yl
      00A6DE 41               [ 1]  425 	exg	a, xl
      00A6DF 4F               [ 1]  426 	clr	a
      00A6E0 41               [ 1]  427 	exg	a, xl
                           00011A   428 	C$stm8s_flash.c$324$3_0$377 ==.
                                    429 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 324: res_value = res_value | (uint16_t)value_optbyte_complement;
      00A6E1 6B 02            [ 1]  430 	ld	(0x02, sp), a
      00A6E3 0F 01            [ 1]  431 	clr	(0x01, sp)
      00A6E5 9F               [ 1]  432 	ld	a, xl
      00A6E6 1A 02            [ 1]  433 	or	a, (0x02, sp)
      00A6E8 97               [ 1]  434 	ld	xl, a
      00A6E9 90 9F            [ 1]  435 	ld	a, yl
      00A6EB 1A 01            [ 1]  436 	or	a, (0x01, sp)
      00A6ED 95               [ 1]  437 	ld	xh, a
      00A6EE 20 03            [ 2]  438 	jra	00106$
      00A6F0                        439 00102$:
                           000129   440 	C$stm8s_flash.c$328$3_0$378 ==.
                                    441 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 328: res_value = FLASH_OPTIONBYTE_ERROR;
      00A6F0 AE 55 55         [ 2]  442 	ldw	x, #0x5555
      00A6F3                        443 00106$:
                           00012C   444 	C$stm8s_flash.c$331$1_0$374 ==.
                                    445 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 331: return(res_value);
                           00012C   446 	C$stm8s_flash.c$332$1_0$374 ==.
                                    447 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 332: }
      00A6F3 5B 02            [ 2]  448 	addw	sp, #2
                           00012E   449 	C$stm8s_flash.c$332$1_0$374 ==.
                           00012E   450 	XG$FLASH_ReadOptionByte$0$0 ==.
      00A6F5 81               [ 4]  451 	ret
                           00012F   452 	G$FLASH_SetLowPowerMode$0$0 ==.
                           00012F   453 	C$stm8s_flash.c$340$1_0$380 ==.
                                    454 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 340: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
                                    455 ;	-----------------------------------------
                                    456 ;	 function FLASH_SetLowPowerMode
                                    457 ;	-----------------------------------------
      00A6F6                        458 _FLASH_SetLowPowerMode:
                           00012F   459 	C$stm8s_flash.c$346$1_0$380 ==.
                                    460 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 346: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT));
      00A6F6 C6 50 5A         [ 1]  461 	ld	a, 0x505a
      00A6F9 A4 F3            [ 1]  462 	and	a, #0xf3
      00A6FB C7 50 5A         [ 1]  463 	ld	0x505a, a
                           000137   464 	C$stm8s_flash.c$349$1_0$380 ==.
                                    465 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 349: FLASH->CR1 |= (uint8_t)FLASH_LPMode;
      00A6FE C6 50 5A         [ 1]  466 	ld	a, 0x505a
      00A701 1A 03            [ 1]  467 	or	a, (0x03, sp)
      00A703 C7 50 5A         [ 1]  468 	ld	0x505a, a
                           00013F   469 	C$stm8s_flash.c$350$1_0$380 ==.
                                    470 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 350: }
                           00013F   471 	C$stm8s_flash.c$350$1_0$380 ==.
                           00013F   472 	XG$FLASH_SetLowPowerMode$0$0 ==.
      00A706 81               [ 4]  473 	ret
                           000140   474 	G$FLASH_SetProgrammingTime$0$0 ==.
                           000140   475 	C$stm8s_flash.c$358$1_0$382 ==.
                                    476 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 358: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
                                    477 ;	-----------------------------------------
                                    478 ;	 function FLASH_SetProgrammingTime
                                    479 ;	-----------------------------------------
      00A707                        480 _FLASH_SetProgrammingTime:
                           000140   481 	C$stm8s_flash.c$363$1_0$382 ==.
                                    482 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 363: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
      00A707 C6 50 5A         [ 1]  483 	ld	a, 0x505a
      00A70A A4 FE            [ 1]  484 	and	a, #0xfe
      00A70C C7 50 5A         [ 1]  485 	ld	0x505a, a
                           000148   486 	C$stm8s_flash.c$364$1_0$382 ==.
                                    487 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 364: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
      00A70F C6 50 5A         [ 1]  488 	ld	a, 0x505a
      00A712 1A 03            [ 1]  489 	or	a, (0x03, sp)
      00A714 C7 50 5A         [ 1]  490 	ld	0x505a, a
                           000150   491 	C$stm8s_flash.c$365$1_0$382 ==.
                                    492 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 365: }
                           000150   493 	C$stm8s_flash.c$365$1_0$382 ==.
                           000150   494 	XG$FLASH_SetProgrammingTime$0$0 ==.
      00A717 81               [ 4]  495 	ret
                           000151   496 	G$FLASH_GetLowPowerMode$0$0 ==.
                           000151   497 	C$stm8s_flash.c$372$1_0$384 ==.
                                    498 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 372: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
                                    499 ;	-----------------------------------------
                                    500 ;	 function FLASH_GetLowPowerMode
                                    501 ;	-----------------------------------------
      00A718                        502 _FLASH_GetLowPowerMode:
                           000151   503 	C$stm8s_flash.c$374$1_0$384 ==.
                                    504 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 374: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
      00A718 C6 50 5A         [ 1]  505 	ld	a, 0x505a
      00A71B A4 0C            [ 1]  506 	and	a, #0x0c
                           000156   507 	C$stm8s_flash.c$375$1_0$384 ==.
                                    508 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 375: }
                           000156   509 	C$stm8s_flash.c$375$1_0$384 ==.
                           000156   510 	XG$FLASH_GetLowPowerMode$0$0 ==.
      00A71D 81               [ 4]  511 	ret
                           000157   512 	G$FLASH_GetProgrammingTime$0$0 ==.
                           000157   513 	C$stm8s_flash.c$382$1_0$386 ==.
                                    514 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 382: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
                                    515 ;	-----------------------------------------
                                    516 ;	 function FLASH_GetProgrammingTime
                                    517 ;	-----------------------------------------
      00A71E                        518 _FLASH_GetProgrammingTime:
                           000157   519 	C$stm8s_flash.c$384$1_0$386 ==.
                                    520 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 384: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
      00A71E C6 50 5A         [ 1]  521 	ld	a, 0x505a
      00A721 A4 01            [ 1]  522 	and	a, #0x01
                           00015C   523 	C$stm8s_flash.c$385$1_0$386 ==.
                                    524 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 385: }
                           00015C   525 	C$stm8s_flash.c$385$1_0$386 ==.
                           00015C   526 	XG$FLASH_GetProgrammingTime$0$0 ==.
      00A723 81               [ 4]  527 	ret
                           00015D   528 	G$FLASH_GetBootSize$0$0 ==.
                           00015D   529 	C$stm8s_flash.c$392$1_0$388 ==.
                                    530 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 392: uint32_t FLASH_GetBootSize(void)
                                    531 ;	-----------------------------------------
                                    532 ;	 function FLASH_GetBootSize
                                    533 ;	-----------------------------------------
      00A724                        534 _FLASH_GetBootSize:
      00A724 52 04            [ 2]  535 	sub	sp, #4
                           00015F   536 	C$stm8s_flash.c$397$1_0$388 ==.
                                    537 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 397: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
      00A726 C6 50 5D         [ 1]  538 	ld	a, 0x505d
      00A729 5F               [ 1]  539 	clrw	x
      00A72A 0F 04            [ 1]  540 	clr	(0x04, sp)
      00A72C 08 04            [ 1]  541 	sll	(0x04, sp)
      00A72E 49               [ 1]  542 	rlc	a
      00A72F 59               [ 2]  543 	rlcw	x
      00A730 90 95            [ 1]  544 	ld	yh, a
      00A732 7B 04            [ 1]  545 	ld	a, (0x04, sp)
      00A734 90 97            [ 1]  546 	ld	yl, a
                           00016F   547 	C$stm8s_flash.c$400$1_0$388 ==.
                                    548 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 400: if(FLASH->FPR == 0xFF)
      00A736 C6 50 5D         [ 1]  549 	ld	a, 0x505d
      00A739 4C               [ 1]  550 	inc	a
      00A73A 26 0B            [ 1]  551 	jrne	00102$
                           000175   552 	C$stm8s_flash.c$402$2_0$389 ==.
                                    553 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 402: temp += 512;
      00A73C 72 A9 02 00      [ 2]  554 	addw	y, #0x0200
      00A740 9F               [ 1]  555 	ld	a, xl
      00A741 A9 00            [ 1]  556 	adc	a, #0x00
      00A743 02               [ 1]  557 	rlwa	x
      00A744 A9 00            [ 1]  558 	adc	a, #0x00
      00A746 95               [ 1]  559 	ld	xh, a
      00A747                        560 00102$:
                           000180   561 	C$stm8s_flash.c$406$1_0$388 ==.
                                    562 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 406: return(temp);
      00A747 51               [ 1]  563 	exgw	x, y
                           000181   564 	C$stm8s_flash.c$407$1_0$388 ==.
                                    565 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 407: }
      00A748 5B 04            [ 2]  566 	addw	sp, #4
                           000183   567 	C$stm8s_flash.c$407$1_0$388 ==.
                           000183   568 	XG$FLASH_GetBootSize$0$0 ==.
      00A74A 81               [ 4]  569 	ret
                           000184   570 	G$FLASH_GetFlagStatus$0$0 ==.
                           000184   571 	C$stm8s_flash.c$417$1_0$391 ==.
                                    572 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 417: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
                                    573 ;	-----------------------------------------
                                    574 ;	 function FLASH_GetFlagStatus
                                    575 ;	-----------------------------------------
      00A74B                        576 _FLASH_GetFlagStatus:
                           000184   577 	C$stm8s_flash.c$424$1_0$391 ==.
                                    578 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 424: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
      00A74B C6 50 5F         [ 1]  579 	ld	a, 0x505f
      00A74E 14 03            [ 1]  580 	and	a, (0x03, sp)
      00A750 27 04            [ 1]  581 	jreq	00102$
                           00018B   582 	C$stm8s_flash.c$426$2_0$392 ==.
                                    583 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 426: status = SET; /* FLASH_FLAG is set */
      00A752 A6 01            [ 1]  584 	ld	a, #0x01
      00A754 20 01            [ 2]  585 	jra	00103$
      00A756                        586 00102$:
                           00018F   587 	C$stm8s_flash.c$430$2_0$393 ==.
                                    588 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 430: status = RESET; /* FLASH_FLAG is reset*/
      00A756 4F               [ 1]  589 	clr	a
      00A757                        590 00103$:
                           000190   591 	C$stm8s_flash.c$434$1_0$391 ==.
                                    592 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 434: return status;
                           000190   593 	C$stm8s_flash.c$435$1_0$391 ==.
                                    594 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 435: }
                           000190   595 	C$stm8s_flash.c$435$1_0$391 ==.
                           000190   596 	XG$FLASH_GetFlagStatus$0$0 ==.
      00A757 81               [ 4]  597 	ret
                           000191   598 	G$FLASH_WaitForLastOperation$0$0 ==.
                           000191   599 	C$stm8s_flash.c$549$1_0$395 ==.
                                    600 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 549: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType))
                                    601 ;	-----------------------------------------
                                    602 ;	 function FLASH_WaitForLastOperation
                                    603 ;	-----------------------------------------
      00A758                        604 _FLASH_WaitForLastOperation:
                           000191   605 	C$stm8s_flash.c$551$2_0$395 ==.
                                    606 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 551: uint8_t flagstatus = 0x00;
      00A758 4F               [ 1]  607 	clr	a
                           000192   608 	C$stm8s_flash.c$557$1_0$395 ==.
                                    609 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 557: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A759 88               [ 1]  610 	push	a
      00A75A 7B 04            [ 1]  611 	ld	a, (0x04, sp)
      00A75C A1 FD            [ 1]  612 	cp	a, #0xfd
      00A75E 84               [ 1]  613 	pop	a
      00A75F 26 10            [ 1]  614 	jrne	00121$
                           00019A   615 	C$stm8s_flash.c$559$1_0$395 ==.
                                    616 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 559: while((flagstatus == 0x00) && (timeout != 0x00))
      00A761 5F               [ 1]  617 	clrw	x
      00A762 5A               [ 2]  618 	decw	x
      00A763                        619 00102$:
      00A763 4D               [ 1]  620 	tnz	a
      00A764 26 1B            [ 1]  621 	jrne	00123$
      00A766 5D               [ 2]  622 	tnzw	x
      00A767 27 18            [ 1]  623 	jreq	00123$
                           0001A2   624 	C$stm8s_flash.c$561$3_0$397 ==.
                                    625 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 561: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
      00A769 C6 50 5F         [ 1]  626 	ld	a, 0x505f
      00A76C A4 05            [ 1]  627 	and	a, #0x05
                           0001A7   628 	C$stm8s_flash.c$563$3_0$397 ==.
                                    629 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 563: timeout--;
      00A76E 5A               [ 2]  630 	decw	x
      00A76F 20 F2            [ 2]  631 	jra	00102$
                           0001AA   632 	C$stm8s_flash.c$568$1_0$395 ==.
                                    633 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 568: while((flagstatus == 0x00) && (timeout != 0x00))
      00A771                        634 00121$:
      00A771 5F               [ 1]  635 	clrw	x
      00A772 5A               [ 2]  636 	decw	x
      00A773                        637 00106$:
      00A773 4D               [ 1]  638 	tnz	a
      00A774 26 0D            [ 1]  639 	jrne	00124$
      00A776 5D               [ 2]  640 	tnzw	x
      00A777 27 0A            [ 1]  641 	jreq	00124$
                           0001B2   642 	C$stm8s_flash.c$570$3_0$399 ==.
                                    643 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 570: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
      00A779 C6 50 5F         [ 1]  644 	ld	a, 0x505f
      00A77C A4 41            [ 1]  645 	and	a, #0x41
                           0001B7   646 	C$stm8s_flash.c$572$3_0$399 ==.
                                    647 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 572: timeout--;
      00A77E 5A               [ 2]  648 	decw	x
      00A77F 20 F2            [ 2]  649 	jra	00106$
      00A781                        650 00123$:
                           0001BA   651 	C$stm8s_flash.c$589$1_0$395 ==.
                                    652 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
      00A781 20 00            [ 2]  653 	jra	00111$
                           0001BC   654 	C$stm8s_flash.c$572$1_0$395 ==.
                                    655 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 572: timeout--;
      00A783                        656 00124$:
      00A783                        657 00111$:
                           0001BC   658 	C$stm8s_flash.c$584$1_0$395 ==.
                                    659 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 584: if(timeout == 0x00 )
      00A783 5D               [ 2]  660 	tnzw	x
      00A784 26 02            [ 1]  661 	jrne	00113$
                           0001BF   662 	C$stm8s_flash.c$586$2_0$400 ==.
                                    663 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 586: flagstatus = FLASH_STATUS_TIMEOUT;
      00A786 A6 02            [ 1]  664 	ld	a, #0x02
      00A788                        665 00113$:
                           0001C1   666 	C$stm8s_flash.c$589$1_0$395 ==.
                                    667 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
                           0001C1   668 	C$stm8s_flash.c$590$1_0$395 ==.
                                    669 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 590: }
                           0001C1   670 	C$stm8s_flash.c$590$1_0$395 ==.
                           0001C1   671 	XG$FLASH_WaitForLastOperation$0$0 ==.
      00A788 81               [ 4]  672 	ret
                           0001C2   673 	G$FLASH_EraseBlock$0$0 ==.
                           0001C2   674 	C$stm8s_flash.c$599$1_0$402 ==.
                                    675 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 599: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
                                    676 ;	-----------------------------------------
                                    677 ;	 function FLASH_EraseBlock
                                    678 ;	-----------------------------------------
      00A789                        679 _FLASH_EraseBlock:
      00A789 52 06            [ 2]  680 	sub	sp, #6
                           0001C4   681 	C$stm8s_flash.c$612$1_0$402 ==.
                                    682 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 612: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A78B 7B 0B            [ 1]  683 	ld	a, (0x0b, sp)
      00A78D A1 FD            [ 1]  684 	cp	a, #0xfd
      00A78F 26 0A            [ 1]  685 	jrne	00102$
                           0001CA   686 	C$stm8s_flash.c$615$2_0$403 ==.
                                    687 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 615: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00A791 AE 80 00         [ 2]  688 	ldw	x, #0x8000
      00A794 1F 03            [ 2]  689 	ldw	(0x03, sp), x
      00A796 5F               [ 1]  690 	clrw	x
      00A797 1F 01            [ 2]  691 	ldw	(0x01, sp), x
      00A799 20 08            [ 2]  692 	jra	00103$
      00A79B                        693 00102$:
                           0001D4   694 	C$stm8s_flash.c$620$2_0$404 ==.
                                    695 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 620: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00A79B AE 40 00         [ 2]  696 	ldw	x, #0x4000
      00A79E 1F 03            [ 2]  697 	ldw	(0x03, sp), x
      00A7A0 5F               [ 1]  698 	clrw	x
      00A7A1 1F 01            [ 2]  699 	ldw	(0x01, sp), x
      00A7A3                        700 00103$:
                           0001DC   701 	C$stm8s_flash.c$628$1_0$402 ==.
                                    702 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 628: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
      00A7A3 1E 09            [ 2]  703 	ldw	x, (0x09, sp)
      00A7A5 58               [ 2]  704 	sllw	x
      00A7A6 58               [ 2]  705 	sllw	x
      00A7A7 58               [ 2]  706 	sllw	x
      00A7A8 58               [ 2]  707 	sllw	x
      00A7A9 58               [ 2]  708 	sllw	x
      00A7AA 58               [ 2]  709 	sllw	x
      00A7AB 58               [ 2]  710 	sllw	x
      00A7AC 1F 05            [ 2]  711 	ldw	(0x05, sp), x
      00A7AE 72 FB 03         [ 2]  712 	addw	x, (0x03, sp)
                           0001EA   713 	C$stm8s_flash.c$632$1_0$402 ==.
                                    714 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 632: FLASH->CR2 |= FLASH_CR2_ERASE;
      00A7B1 72 1A 50 5B      [ 1]  715 	bset	20571, #5
                           0001EE   716 	C$stm8s_flash.c$633$1_0$402 ==.
                                    717 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 633: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
      00A7B5 72 1B 50 5C      [ 1]  718 	bres	20572, #5
                           0001F2   719 	C$stm8s_flash.c$637$1_0$402 ==.
                                    720 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 637: *pwFlash = (uint32_t)0;
      00A7B9 6F 03            [ 1]  721 	clr	(0x3, x)
      00A7BB 6F 02            [ 1]  722 	clr	(0x2, x)
      00A7BD 6F 01            [ 1]  723 	clr	(0x1, x)
      00A7BF 7F               [ 1]  724 	clr	(x)
                           0001F9   725 	C$stm8s_flash.c$645$1_0$402 ==.
                                    726 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 645: }
      00A7C0 5B 06            [ 2]  727 	addw	sp, #6
                           0001FB   728 	C$stm8s_flash.c$645$1_0$402 ==.
                           0001FB   729 	XG$FLASH_EraseBlock$0$0 ==.
      00A7C2 81               [ 4]  730 	ret
                           0001FC   731 	G$FLASH_ProgramBlock$0$0 ==.
                           0001FC   732 	C$stm8s_flash.c$656$1_0$406 ==.
                                    733 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 656: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType,
                                    734 ;	-----------------------------------------
                                    735 ;	 function FLASH_ProgramBlock
                                    736 ;	-----------------------------------------
      00A7C3                        737 _FLASH_ProgramBlock:
      00A7C3 52 08            [ 2]  738 	sub	sp, #8
                           0001FE   739 	C$stm8s_flash.c$665$1_0$406 ==.
                                    740 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 665: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      00A7C5 7B 0D            [ 1]  741 	ld	a, (0x0d, sp)
      00A7C7 A1 FD            [ 1]  742 	cp	a, #0xfd
      00A7C9 26 0A            [ 1]  743 	jrne	00102$
                           000204   744 	C$stm8s_flash.c$668$2_0$407 ==.
                                    745 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 668: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      00A7CB AE 80 00         [ 2]  746 	ldw	x, #0x8000
      00A7CE 1F 03            [ 2]  747 	ldw	(0x03, sp), x
      00A7D0 5F               [ 1]  748 	clrw	x
      00A7D1 1F 01            [ 2]  749 	ldw	(0x01, sp), x
      00A7D3 20 08            [ 2]  750 	jra	00103$
      00A7D5                        751 00102$:
                           00020E   752 	C$stm8s_flash.c$673$2_0$408 ==.
                                    753 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 673: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      00A7D5 AE 40 00         [ 2]  754 	ldw	x, #0x4000
      00A7D8 1F 03            [ 2]  755 	ldw	(0x03, sp), x
      00A7DA 5F               [ 1]  756 	clrw	x
      00A7DB 1F 01            [ 2]  757 	ldw	(0x01, sp), x
      00A7DD                        758 00103$:
                           000216   759 	C$stm8s_flash.c$677$1_0$406 ==.
                                    760 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 677: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
      00A7DD 16 0B            [ 2]  761 	ldw	y, (0x0b, sp)
      00A7DF 5F               [ 1]  762 	clrw	x
      00A7E0 88               [ 1]  763 	push	a
      00A7E1 A6 07            [ 1]  764 	ld	a, #0x07
      00A7E3                        765 00131$:
      00A7E3 90 58            [ 2]  766 	sllw	y
      00A7E5 59               [ 2]  767 	rlcw	x
      00A7E6 4A               [ 1]  768 	dec	a
      00A7E7 26 FA            [ 1]  769 	jrne	00131$
      00A7E9 17 08            [ 2]  770 	ldw	(0x08, sp), y
      00A7EB 84               [ 1]  771 	pop	a
      00A7EC 16 07            [ 2]  772 	ldw	y, (0x07, sp)
      00A7EE 72 F9 03         [ 2]  773 	addw	y, (0x03, sp)
      00A7F1 9F               [ 1]  774 	ld	a, xl
      00A7F2 19 02            [ 1]  775 	adc	a, (0x02, sp)
      00A7F4 02               [ 1]  776 	rlwa	x
      00A7F5 19 01            [ 1]  777 	adc	a, (0x01, sp)
      00A7F7 95               [ 1]  778 	ld	xh, a
      00A7F8 17 03            [ 2]  779 	ldw	(0x03, sp), y
      00A7FA 1F 01            [ 2]  780 	ldw	(0x01, sp), x
                           000235   781 	C$stm8s_flash.c$680$1_0$406 ==.
                                    782 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 680: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
      00A7FC 0D 0E            [ 1]  783 	tnz	(0x0e, sp)
      00A7FE 26 0A            [ 1]  784 	jrne	00105$
                           000239   785 	C$stm8s_flash.c$683$2_0$409 ==.
                                    786 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 683: FLASH->CR2 |= FLASH_CR2_PRG;
      00A800 72 10 50 5B      [ 1]  787 	bset	20571, #0
                           00023D   788 	C$stm8s_flash.c$684$2_0$409 ==.
                                    789 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 684: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
      00A804 72 11 50 5C      [ 1]  790 	bres	20572, #0
      00A808 20 08            [ 2]  791 	jra	00114$
      00A80A                        792 00105$:
                           000243   793 	C$stm8s_flash.c$689$2_0$410 ==.
                                    794 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 689: FLASH->CR2 |= FLASH_CR2_FPRG;
      00A80A 72 18 50 5B      [ 1]  795 	bset	20571, #4
                           000247   796 	C$stm8s_flash.c$690$2_0$410 ==.
                                    797 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 690: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
      00A80E 72 19 50 5C      [ 1]  798 	bres	20572, #4
                           00024B   799 	C$stm8s_flash.c$694$2_0$406 ==.
                                    800 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00A812                        801 00114$:
      00A812 5F               [ 1]  802 	clrw	x
      00A813 1F 07            [ 2]  803 	ldw	(0x07, sp), x
      00A815                        804 00108$:
                           00024E   805 	C$stm8s_flash.c$696$3_0$412 ==.
                                    806 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 696: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
      00A815 1E 03            [ 2]  807 	ldw	x, (0x03, sp)
      00A817 72 FB 07         [ 2]  808 	addw	x, (0x07, sp)
      00A81A 1F 05            [ 2]  809 	ldw	(0x05, sp), x
      00A81C 1E 0F            [ 2]  810 	ldw	x, (0x0f, sp)
      00A81E 72 FB 07         [ 2]  811 	addw	x, (0x07, sp)
      00A821 F6               [ 1]  812 	ld	a, (x)
      00A822 1E 05            [ 2]  813 	ldw	x, (0x05, sp)
      00A824 F7               [ 1]  814 	ld	(x), a
                           00025E   815 	C$stm8s_flash.c$694$2_0$411 ==.
                                    816 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      00A825 1E 07            [ 2]  817 	ldw	x, (0x07, sp)
      00A827 5C               [ 1]  818 	incw	x
      00A828 1F 07            [ 2]  819 	ldw	(0x07, sp), x
      00A82A A3 00 80         [ 2]  820 	cpw	x, #0x0080
      00A82D 25 E6            [ 1]  821 	jrc	00108$
                           000268   822 	C$stm8s_flash.c$698$2_0$406 ==.
                                    823 ;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 698: }
      00A82F 5B 08            [ 2]  824 	addw	sp, #8
                           00026A   825 	C$stm8s_flash.c$698$2_0$406 ==.
                           00026A   826 	XG$FLASH_ProgramBlock$0$0 ==.
      00A831 81               [ 4]  827 	ret
                                    828 	.area CODE
                                    829 	.area CONST
                                    830 	.area INITIALIZER
                                    831 	.area CABS (ABS)
