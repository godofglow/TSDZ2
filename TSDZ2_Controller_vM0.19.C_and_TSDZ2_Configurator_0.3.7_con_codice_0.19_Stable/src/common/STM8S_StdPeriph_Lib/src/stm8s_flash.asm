;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module stm8s_flash
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_Unlock
	.globl _FLASH_Lock
	.globl _FLASH_DeInit
	.globl _FLASH_ITConfig
	.globl _FLASH_EraseByte
	.globl _FLASH_ProgramByte
	.globl _FLASH_ReadByte
	.globl _FLASH_ProgramWord
	.globl _FLASH_ProgramOptionByte
	.globl _FLASH_EraseOptionByte
	.globl _FLASH_ReadOptionByte
	.globl _FLASH_SetLowPowerMode
	.globl _FLASH_SetProgrammingTime
	.globl _FLASH_GetLowPowerMode
	.globl _FLASH_GetProgrammingTime
	.globl _FLASH_GetBootSize
	.globl _FLASH_GetFlagStatus
	.globl _FLASH_WaitForLastOperation
	.globl _FLASH_EraseBlock
	.globl _FLASH_ProgramBlock
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$FLASH_Unlock$0$0 ==.
	C$stm8s_flash.c$87$0_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 87: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
;	-----------------------------------------
;	 function FLASH_Unlock
;	-----------------------------------------
_FLASH_Unlock:
	C$stm8s_flash.c$93$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 93: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	ld	a, (0x03, sp)
	cp	a, #0xfd
	jrne	00102$
	C$stm8s_flash.c$95$2_0$347 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 95: FLASH->PUKR = FLASH_RASS_KEY1;
	mov	0x5062+0, #0x56
	C$stm8s_flash.c$96$2_0$347 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 96: FLASH->PUKR = FLASH_RASS_KEY2;
	mov	0x5062+0, #0xae
	jra	00104$
00102$:
	C$stm8s_flash.c$101$2_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 101: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
	mov	0x5064+0, #0xae
	C$stm8s_flash.c$102$2_0$348 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 102: FLASH->DUKR = FLASH_RASS_KEY1;
	mov	0x5064+0, #0x56
00104$:
	C$stm8s_flash.c$104$1_0$346 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 104: }
	C$stm8s_flash.c$104$1_0$346 ==.
	XG$FLASH_Unlock$0$0 ==.
	ret
	G$FLASH_Lock$0$0 ==.
	C$stm8s_flash.c$112$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 112: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
;	-----------------------------------------
;	 function FLASH_Lock
;	-----------------------------------------
_FLASH_Lock:
	C$stm8s_flash.c$118$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 118: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
	ld	a, 0x505f
	and	a, (0x03, sp)
	ld	0x505f, a
	C$stm8s_flash.c$119$1_0$350 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 119: }
	C$stm8s_flash.c$119$1_0$350 ==.
	XG$FLASH_Lock$0$0 ==.
	ret
	G$FLASH_DeInit$0$0 ==.
	C$stm8s_flash.c$126$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 126: void FLASH_DeInit(void)
;	-----------------------------------------
;	 function FLASH_DeInit
;	-----------------------------------------
_FLASH_DeInit:
	C$stm8s_flash.c$128$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 128: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
	mov	0x505a+0, #0x00
	C$stm8s_flash.c$129$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 129: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
	mov	0x505b+0, #0x00
	C$stm8s_flash.c$130$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 130: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
	mov	0x505c+0, #0xff
	C$stm8s_flash.c$131$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 131: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
	bres	20575, #3
	C$stm8s_flash.c$132$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 132: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
	bres	20575, #1
	C$stm8s_flash.c$133$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 133: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
	ld	a, 0x505f
	C$stm8s_flash.c$134$1_0$352 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 134: }
	C$stm8s_flash.c$134$1_0$352 ==.
	XG$FLASH_DeInit$0$0 ==.
	ret
	G$FLASH_ITConfig$0$0 ==.
	C$stm8s_flash.c$142$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 142: void FLASH_ITConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function FLASH_ITConfig
;	-----------------------------------------
_FLASH_ITConfig:
	C$stm8s_flash.c$147$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 147: if(NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	C$stm8s_flash.c$149$2_0$355 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 149: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
	bset	20570, #1
	jra	00104$
00102$:
	C$stm8s_flash.c$153$2_0$356 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 153: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
	bres	20570, #1
00104$:
	C$stm8s_flash.c$155$1_0$354 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 155: }
	C$stm8s_flash.c$155$1_0$354 ==.
	XG$FLASH_ITConfig$0$0 ==.
	ret
	G$FLASH_EraseByte$0$0 ==.
	C$stm8s_flash.c$164$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 164: void FLASH_EraseByte(uint32_t Address)
;	-----------------------------------------
;	 function FLASH_EraseByte
;	-----------------------------------------
_FLASH_EraseByte:
	C$stm8s_flash.c$170$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 170: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
	ldw	x, (0x05, sp)
	clr	(x)
	C$stm8s_flash.c$171$1_0$358 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 171: }
	C$stm8s_flash.c$171$1_0$358 ==.
	XG$FLASH_EraseByte$0$0 ==.
	ret
	G$FLASH_ProgramByte$0$0 ==.
	C$stm8s_flash.c$181$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 181: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramByte
;	-----------------------------------------
_FLASH_ProgramByte:
	C$stm8s_flash.c$185$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 185: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
	ldw	x, (0x05, sp)
	ld	a, (0x07, sp)
	ld	(x), a
	C$stm8s_flash.c$186$1_0$360 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 186: }
	C$stm8s_flash.c$186$1_0$360 ==.
	XG$FLASH_ProgramByte$0$0 ==.
	ret
	G$FLASH_ReadByte$0$0 ==.
	C$stm8s_flash.c$195$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 195: uint8_t FLASH_ReadByte(uint32_t Address)
;	-----------------------------------------
;	 function FLASH_ReadByte
;	-----------------------------------------
_FLASH_ReadByte:
	C$stm8s_flash.c$201$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 201: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address);
	ldw	x, (0x05, sp)
	ld	a, (x)
	C$stm8s_flash.c$202$1_0$362 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 202: }
	C$stm8s_flash.c$202$1_0$362 ==.
	XG$FLASH_ReadByte$0$0 ==.
	ret
	G$FLASH_ProgramWord$0$0 ==.
	C$stm8s_flash.c$212$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 212: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramWord
;	-----------------------------------------
_FLASH_ProgramWord:
	sub	sp, #6
	C$stm8s_flash.c$218$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 218: FLASH->CR2 |= FLASH_CR2_WPRG;
	bset	20571, #6
	C$stm8s_flash.c$219$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 219: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
	bres	20572, #6
	C$stm8s_flash.c$222$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 222: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
	ldw	y, (0x0b, sp)
	ldw	x, sp
	addw	x, #13
	ldw	(0x03, sp), x
	ld	a, (x)
	ld	(y), a
	C$stm8s_flash.c$224$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 224: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1);
	ldw	x, y
	incw	x
	ldw	(0x01, sp), x
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	ldw	x, (0x01, sp)
	ld	(x), a
	C$stm8s_flash.c$226$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 226: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2);
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x05, sp), x
	ldw	x, (0x03, sp)
	ld	a, (0x2, x)
	ldw	x, (0x05, sp)
	ld	(x), a
	C$stm8s_flash.c$228$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 228: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3);
	addw	y, #0x0003
	ldw	x, (0x03, sp)
	ld	a, (0x3, x)
	ld	(y), a
	C$stm8s_flash.c$229$1_0$364 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 229: }
	addw	sp, #6
	C$stm8s_flash.c$229$1_0$364 ==.
	XG$FLASH_ProgramWord$0$0 ==.
	ret
	G$FLASH_ProgramOptionByte$0$0 ==.
	C$stm8s_flash.c$237$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 237: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramOptionByte
;	-----------------------------------------
_FLASH_ProgramOptionByte:
	C$stm8s_flash.c$243$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 243: FLASH->CR2 |= FLASH_CR2_OPT;
	bset	20571, #7
	C$stm8s_flash.c$244$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 244: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
	ld	a, 0x505c
	and	a, #0x7f
	ld	0x505c, a
	C$stm8s_flash.c$247$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 247: if(Address == 0x4800)
	ldw	x, (0x03, sp)
	cpw	x, #0x4800
	jrne	00102$
	C$stm8s_flash.c$250$2_0$367 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 250: *((NEAR uint8_t*)Address) = Data;
	ldw	x, (0x03, sp)
	ld	a, (0x05, sp)
	ld	(x), a
	jra	00103$
00102$:
	C$stm8s_flash.c$255$2_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 255: *((NEAR uint8_t*)Address) = Data;
	ldw	x, (0x03, sp)
	ld	a, (0x05, sp)
	ld	(x), a
	C$stm8s_flash.c$256$2_0$368 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 256: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
	ldw	x, (0x03, sp)
	incw	x
	ld	a, (0x05, sp)
	cpl	a
	ld	(x), a
00103$:
	C$stm8s_flash.c$258$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 258: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
	push	#0xfd
	call	_FLASH_WaitForLastOperation
	pop	a
	C$stm8s_flash.c$261$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 261: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
	bres	20571, #7
	C$stm8s_flash.c$262$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 262: FLASH->NCR2 |= FLASH_NCR2_NOPT;
	bset	20572, #7
	C$stm8s_flash.c$263$1_0$366 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 263: }
	C$stm8s_flash.c$263$1_0$366 ==.
	XG$FLASH_ProgramOptionByte$0$0 ==.
	ret
	G$FLASH_EraseOptionByte$0$0 ==.
	C$stm8s_flash.c$270$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 270: void FLASH_EraseOptionByte(uint16_t Address)
;	-----------------------------------------
;	 function FLASH_EraseOptionByte
;	-----------------------------------------
_FLASH_EraseOptionByte:
	C$stm8s_flash.c$276$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 276: FLASH->CR2 |= FLASH_CR2_OPT;
	bset	20571, #7
	C$stm8s_flash.c$277$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 277: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
	ld	a, 0x505c
	and	a, #0x7f
	ld	0x505c, a
	C$stm8s_flash.c$280$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 280: if(Address == 0x4800)
	ldw	x, (0x03, sp)
	cpw	x, #0x4800
	jrne	00102$
	C$stm8s_flash.c$283$2_0$371 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 283: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
	ldw	x, (0x03, sp)
	clr	(x)
	jra	00103$
00102$:
	C$stm8s_flash.c$288$2_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 288: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
	ldw	x, (0x03, sp)
	clr	(x)
	C$stm8s_flash.c$289$2_0$372 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 289: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
	ldw	x, (0x03, sp)
	incw	x
	ld	a, #0xff
	ld	(x), a
00103$:
	C$stm8s_flash.c$291$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 291: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
	push	#0xfd
	call	_FLASH_WaitForLastOperation
	pop	a
	C$stm8s_flash.c$294$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 294: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
	bres	20571, #7
	C$stm8s_flash.c$295$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 295: FLASH->NCR2 |= FLASH_NCR2_NOPT;
	bset	20572, #7
	C$stm8s_flash.c$296$1_0$370 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 296: }
	C$stm8s_flash.c$296$1_0$370 ==.
	XG$FLASH_EraseOptionByte$0$0 ==.
	ret
	G$FLASH_ReadOptionByte$0$0 ==.
	C$stm8s_flash.c$303$1_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 303: uint16_t FLASH_ReadOptionByte(uint16_t Address)
;	-----------------------------------------
;	 function FLASH_ReadOptionByte
;	-----------------------------------------
_FLASH_ReadOptionByte:
	sub	sp, #5
	C$stm8s_flash.c$311$1_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 311: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
	ldw	x, (0x08, sp)
	ld	a, (x)
	ld	yl, a
	C$stm8s_flash.c$312$1_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 312: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
	ld	a, (0x1, x)
	C$stm8s_flash.c$315$1_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 315: if(Address == 0x4800)
	ldw	x, (0x08, sp)
	cpw	x, #0x4800
	jrne	00105$
	C$stm8s_flash.c$317$2_0$375 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 317: res_value =	 value_optbyte;
	ldw	x, y
	clr	a
	ld	xh, a
	jra	00106$
00105$:
	C$stm8s_flash.c$321$2_0$376 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 321: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
	push	a
	cpl	a
	ld	(0x02, sp), a
	ld	a, yl
	cp	a, (0x02, sp)
	pop	a
	jrne	00102$
	C$stm8s_flash.c$323$3_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 323: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
	clr	(0x04, sp)
	exg	a, xl
	clr	a
	exg	a, xl
	C$stm8s_flash.c$324$3_0$377 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 324: res_value = res_value | (uint16_t)value_optbyte_complement;
	clr	(0x02, sp)
	pushw	x
	or	a, (2, sp)
	popw	x
	ld	xl, a
	ld	a, yl
	or	a, (0x02, sp)
	ld	xh, a
	jra	00106$
00102$:
	C$stm8s_flash.c$328$3_0$378 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 328: res_value = FLASH_OPTIONBYTE_ERROR;
	ldw	x, #0x5555
00106$:
	C$stm8s_flash.c$331$1_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 331: return(res_value);
	C$stm8s_flash.c$332$1_0$374 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 332: }
	addw	sp, #5
	C$stm8s_flash.c$332$1_0$374 ==.
	XG$FLASH_ReadOptionByte$0$0 ==.
	ret
	G$FLASH_SetLowPowerMode$0$0 ==.
	C$stm8s_flash.c$340$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 340: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
;	-----------------------------------------
;	 function FLASH_SetLowPowerMode
;	-----------------------------------------
_FLASH_SetLowPowerMode:
	C$stm8s_flash.c$346$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 346: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT));
	ld	a, 0x505a
	and	a, #0xf3
	ld	0x505a, a
	C$stm8s_flash.c$349$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 349: FLASH->CR1 |= (uint8_t)FLASH_LPMode;
	ld	a, 0x505a
	or	a, (0x03, sp)
	ld	0x505a, a
	C$stm8s_flash.c$350$1_0$380 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 350: }
	C$stm8s_flash.c$350$1_0$380 ==.
	XG$FLASH_SetLowPowerMode$0$0 ==.
	ret
	G$FLASH_SetProgrammingTime$0$0 ==.
	C$stm8s_flash.c$358$1_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 358: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
;	-----------------------------------------
;	 function FLASH_SetProgrammingTime
;	-----------------------------------------
_FLASH_SetProgrammingTime:
	C$stm8s_flash.c$363$1_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 363: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
	ld	a, 0x505a
	and	a, #0xfe
	ld	0x505a, a
	C$stm8s_flash.c$364$1_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 364: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
	ld	a, 0x505a
	or	a, (0x03, sp)
	ld	0x505a, a
	C$stm8s_flash.c$365$1_0$382 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 365: }
	C$stm8s_flash.c$365$1_0$382 ==.
	XG$FLASH_SetProgrammingTime$0$0 ==.
	ret
	G$FLASH_GetLowPowerMode$0$0 ==.
	C$stm8s_flash.c$372$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 372: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
;	-----------------------------------------
;	 function FLASH_GetLowPowerMode
;	-----------------------------------------
_FLASH_GetLowPowerMode:
	C$stm8s_flash.c$374$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 374: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
	ld	a, 0x505a
	and	a, #0x0c
	C$stm8s_flash.c$375$1_0$384 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 375: }
	C$stm8s_flash.c$375$1_0$384 ==.
	XG$FLASH_GetLowPowerMode$0$0 ==.
	ret
	G$FLASH_GetProgrammingTime$0$0 ==.
	C$stm8s_flash.c$382$1_0$386 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 382: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
;	-----------------------------------------
;	 function FLASH_GetProgrammingTime
;	-----------------------------------------
_FLASH_GetProgrammingTime:
	C$stm8s_flash.c$384$1_0$386 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 384: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
	ld	a, 0x505a
	and	a, #0x01
	C$stm8s_flash.c$385$1_0$386 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 385: }
	C$stm8s_flash.c$385$1_0$386 ==.
	XG$FLASH_GetProgrammingTime$0$0 ==.
	ret
	G$FLASH_GetBootSize$0$0 ==.
	C$stm8s_flash.c$392$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 392: uint32_t FLASH_GetBootSize(void)
;	-----------------------------------------
;	 function FLASH_GetBootSize
;	-----------------------------------------
_FLASH_GetBootSize:
	sub	sp, #4
	C$stm8s_flash.c$397$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 397: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
	ld	a, 0x505d
	clrw	x
	clr	(0x04, sp)
	sll	(0x04, sp)
	rlc	a
	rlcw	x
	ld	yh, a
	ld	a, (0x04, sp)
	ld	yl, a
	C$stm8s_flash.c$400$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 400: if(FLASH->FPR == 0xFF)
	ld	a, 0x505d
	inc	a
	jrne	00102$
	C$stm8s_flash.c$402$2_0$389 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 402: temp += 512;
	addw	y, #0x0200
	ld	a, xl
	adc	a, #0x00
	rlwa	x
	adc	a, #0x00
	ld	xh, a
00102$:
	C$stm8s_flash.c$406$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 406: return(temp);
	exgw	x, y
	C$stm8s_flash.c$407$1_0$388 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 407: }
	addw	sp, #4
	C$stm8s_flash.c$407$1_0$388 ==.
	XG$FLASH_GetBootSize$0$0 ==.
	ret
	G$FLASH_GetFlagStatus$0$0 ==.
	C$stm8s_flash.c$417$1_0$391 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 417: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
;	-----------------------------------------
;	 function FLASH_GetFlagStatus
;	-----------------------------------------
_FLASH_GetFlagStatus:
	C$stm8s_flash.c$424$1_0$391 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 424: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
	ld	a, 0x505f
	and	a, (0x03, sp)
	jreq	00102$
	C$stm8s_flash.c$426$2_0$392 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 426: status = SET; /* FLASH_FLAG is set */
	ld	a, #0x01
	jra	00103$
00102$:
	C$stm8s_flash.c$430$2_0$393 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 430: status = RESET; /* FLASH_FLAG is reset*/
	clr	a
00103$:
	C$stm8s_flash.c$434$1_0$391 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 434: return status;
	C$stm8s_flash.c$435$1_0$391 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 435: }
	C$stm8s_flash.c$435$1_0$391 ==.
	XG$FLASH_GetFlagStatus$0$0 ==.
	ret
	G$FLASH_WaitForLastOperation$0$0 ==.
	C$stm8s_flash.c$549$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 549: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType))
;	-----------------------------------------
;	 function FLASH_WaitForLastOperation
;	-----------------------------------------
_FLASH_WaitForLastOperation:
	C$stm8s_flash.c$551$2_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 551: uint8_t flagstatus = 0x00;
	clr	a
	C$stm8s_flash.c$557$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 557: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	push	a
	ld	a, (0x04, sp)
	cp	a, #0xfd
	pop	a
	jrne	00121$
	C$stm8s_flash.c$559$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 559: while((flagstatus == 0x00) && (timeout != 0x00))
	clrw	x
	decw	x
00102$:
	tnz	a
	jrne	00123$
	tnzw	x
	jreq	00123$
	C$stm8s_flash.c$561$3_0$397 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 561: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
	ld	a, 0x505f
	and	a, #0x05
	C$stm8s_flash.c$563$3_0$397 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 563: timeout--;
	decw	x
	jra	00102$
	C$stm8s_flash.c$568$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 568: while((flagstatus == 0x00) && (timeout != 0x00))
00121$:
	clrw	x
	decw	x
00106$:
	tnz	a
	jrne	00124$
	tnzw	x
	jreq	00124$
	C$stm8s_flash.c$570$3_0$399 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 570: flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
	ld	a, 0x505f
	and	a, #0x41
	C$stm8s_flash.c$572$3_0$399 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 572: timeout--;
	decw	x
	jra	00106$
00123$:
	C$stm8s_flash.c$589$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
	jra	00111$
	C$stm8s_flash.c$572$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 572: timeout--;
00124$:
00111$:
	C$stm8s_flash.c$584$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 584: if(timeout == 0x00 )
	tnzw	x
	jrne	00113$
	C$stm8s_flash.c$586$2_0$400 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 586: flagstatus = FLASH_STATUS_TIMEOUT;
	ld	a, #0x02
00113$:
	C$stm8s_flash.c$589$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 589: return((FLASH_Status_TypeDef)flagstatus);
	C$stm8s_flash.c$590$1_0$395 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 590: }
	C$stm8s_flash.c$590$1_0$395 ==.
	XG$FLASH_WaitForLastOperation$0$0 ==.
	ret
	G$FLASH_EraseBlock$0$0 ==.
	C$stm8s_flash.c$599$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 599: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
;	-----------------------------------------
;	 function FLASH_EraseBlock
;	-----------------------------------------
_FLASH_EraseBlock:
	sub	sp, #6
	C$stm8s_flash.c$612$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 612: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	ld	a, (0x0b, sp)
	cp	a, #0xfd
	jrne	00102$
	C$stm8s_flash.c$615$2_0$403 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 615: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
	ldw	x, #0x8000
	ldw	(0x05, sp), x
	clr	(0x03, sp)
	jra	00103$
00102$:
	C$stm8s_flash.c$620$2_0$404 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 620: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
	ldw	x, #0x4000
	ldw	(0x05, sp), x
	clr	(0x03, sp)
00103$:
	C$stm8s_flash.c$628$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 628: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
	ldw	x, (0x09, sp)
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
	addw	x, (0x05, sp)
	C$stm8s_flash.c$632$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 632: FLASH->CR2 |= FLASH_CR2_ERASE;
	bset	20571, #5
	C$stm8s_flash.c$633$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 633: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
	bres	20572, #5
	C$stm8s_flash.c$637$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 637: *pwFlash = (uint32_t)0;
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
	C$stm8s_flash.c$645$1_0$402 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 645: }
	addw	sp, #6
	C$stm8s_flash.c$645$1_0$402 ==.
	XG$FLASH_EraseBlock$0$0 ==.
	ret
	G$FLASH_ProgramBlock$0$0 ==.
	C$stm8s_flash.c$656$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 656: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType,
;	-----------------------------------------
;	 function FLASH_ProgramBlock
;	-----------------------------------------
_FLASH_ProgramBlock:
	sub	sp, #16
	C$stm8s_flash.c$665$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 665: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	ld	a, (0x15, sp)
	cp	a, #0xfd
	jrne	00102$
	C$stm8s_flash.c$668$2_0$407 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 668: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
	clr	(0x0a, sp)
	ld	a, #0x80
	clrw	x
	ldw	(0x07, sp), x
	jra	00103$
00102$:
	C$stm8s_flash.c$673$2_0$408 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 673: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
	clr	(0x0a, sp)
	ld	a, #0x40
	clrw	x
	ldw	(0x07, sp), x
00103$:
	C$stm8s_flash.c$677$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 677: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
	ldw	y, (0x13, sp)
	clrw	x
	push	a
	ld	a, #0x07
00131$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00131$
	ldw	(0x06, sp), y
	pop	a
	ld	yh, a
	exg	a, yl
	ld	a, (0x0a, sp)
	exg	a, yl
	addw	y, (0x05, sp)
	ld	a, xl
	adc	a, (0x08, sp)
	rlwa	x
	adc	a, (0x07, sp)
	ld	xh, a
	ldw	(0x0b, sp), x
	C$stm8s_flash.c$680$1_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 680: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
	tnz	(0x16, sp)
	jrne	00105$
	C$stm8s_flash.c$683$2_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 683: FLASH->CR2 |= FLASH_CR2_PRG;
	bset	20571, #0
	C$stm8s_flash.c$684$2_0$409 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 684: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
	bres	20572, #0
	jra	00114$
00105$:
	C$stm8s_flash.c$689$2_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 689: FLASH->CR2 |= FLASH_CR2_FPRG;
	bset	20571, #4
	C$stm8s_flash.c$690$2_0$410 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 690: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
	bres	20572, #4
	C$stm8s_flash.c$694$2_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
00114$:
	clrw	x
	ldw	(0x0f, sp), x
00108$:
	C$stm8s_flash.c$696$3_0$412 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 696: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
	ldw	x, y
	addw	x, (0x0f, sp)
	ldw	(0x01, sp), x
	ldw	x, (0x17, sp)
	addw	x, (0x0f, sp)
	ld	a, (x)
	ldw	x, (0x01, sp)
	ld	(x), a
	C$stm8s_flash.c$694$2_0$411 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 694: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
	ldw	x, (0x0f, sp)
	incw	x
	ldw	(0x0f, sp), x
	cpw	x, #0x0080
	jrc	00108$
	C$stm8s_flash.c$698$2_0$406 ==.
;	../common/STM8S_StdPeriph_Lib/src/stm8s_flash.c: 698: }
	addw	sp, #16
	C$stm8s_flash.c$698$2_0$406 ==.
	XG$FLASH_ProgramBlock$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
