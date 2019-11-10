                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.4 #11422 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uart2_init
                                     12 	.globl _UART2_GetFlagStatus
                                     13 	.globl _UART2_SendData8
                                     14 	.globl _UART2_ReceiveData8
                                     15 	.globl _UART2_ITConfig
                                     16 	.globl _UART2_Init
                                     17 	.globl _UART2_DeInit
                                     18 	.globl _putchar
                                     19 	.globl _getchar
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; global & static initialisations
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area GSINIT
                                     48 ;--------------------------------------------------------
                                     49 ; Home
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area HOME
                                     53 ;--------------------------------------------------------
                                     54 ; code
                                     55 ;--------------------------------------------------------
                                     56 	.area CODE
                           000000    57 	G$uart2_init$0$0 ==.
                           000000    58 	C$uart.c$19$0_0$357 ==.
                                     59 ;	uart.c: 19: void uart2_init(void)
                                     60 ;	-----------------------------------------
                                     61 ;	 function uart2_init
                                     62 ;	-----------------------------------------
      00A859                         63 _uart2_init:
                           000000    64 	C$uart.c$21$1_0$357 ==.
                                     65 ;	uart.c: 21: UART2_DeInit();
      00A859 CD 89 51         [ 4]   66 	call	_UART2_DeInit
                           000003    67 	C$uart.c$25$1_0$357 ==.
                                     68 ;	uart.c: 25: UART2_Init((uint32_t) 9600,
      00A85C 4B 0C            [ 1]   69 	push	#0x0c
      00A85E 4B 80            [ 1]   70 	push	#0x80
      00A860 4B 00            [ 1]   71 	push	#0x00
      00A862 4B 00            [ 1]   72 	push	#0x00
      00A864 4B 00            [ 1]   73 	push	#0x00
      00A866 4B 80            [ 1]   74 	push	#0x80
      00A868 4B 25            [ 1]   75 	push	#0x25
      00A86A 5F               [ 1]   76 	clrw	x
      00A86B 89               [ 2]   77 	pushw	x
      00A86C CD 89 78         [ 4]   78 	call	_UART2_Init
      00A86F 5B 09            [ 2]   79 	addw	sp, #9
                           000018    80 	C$uart.c$33$1_0$357 ==.
                                     81 ;	uart.c: 33: UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
      00A871 4B 01            [ 1]   82 	push	#0x01
      00A873 4B 05            [ 1]   83 	push	#0x05
      00A875 4B 02            [ 1]   84 	push	#0x02
      00A877 CD 8A DF         [ 4]   85 	call	_UART2_ITConfig
      00A87A 5B 03            [ 2]   86 	addw	sp, #3
                           000023    87 	C$uart.c$34$1_0$357 ==.
                                     88 ;	uart.c: 34: }
                           000023    89 	C$uart.c$34$1_0$357 ==.
                           000023    90 	XG$uart2_init$0$0 ==.
      00A87C 81               [ 4]   91 	ret
                           000024    92 	G$putchar$0$0 ==.
                           000024    93 	C$uart.c$52$1_0$359 ==.
                                     94 ;	uart.c: 52: int putchar(int c)
                                     95 ;	-----------------------------------------
                                     96 ;	 function putchar
                                     97 ;	-----------------------------------------
      00A87D                         98 _putchar:
      00A87D 88               [ 1]   99 	push	a
                           000025   100 	C$uart.c$55$1_0$359 ==.
                                    101 ;	uart.c: 55: UART2_SendData8(c);
      00A87E 7B 05            [ 1]  102 	ld	a, (0x05, sp)
      00A880 6B 01            [ 1]  103 	ld	(0x01, sp), a
      00A882 88               [ 1]  104 	push	a
      00A883 CD 8C 40         [ 4]  105 	call	_UART2_SendData8
      00A886 84               [ 1]  106 	pop	a
                           00002E   107 	C$uart.c$58$1_0$359 ==.
                                    108 ;	uart.c: 58: while(UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);
      00A887                        109 00101$:
      00A887 4B 80            [ 1]  110 	push	#0x80
      00A889 4B 00            [ 1]  111 	push	#0x00
      00A88B CD 8C 88         [ 4]  112 	call	_UART2_GetFlagStatus
      00A88E 5B 02            [ 2]  113 	addw	sp, #2
      00A890 4D               [ 1]  114 	tnz	a
      00A891 27 F4            [ 1]  115 	jreq	00101$
                           00003A   116 	C$uart.c$60$1_0$359 ==.
                                    117 ;	uart.c: 60: return((unsigned char)c);
      00A893 5F               [ 1]  118 	clrw	x
      00A894 7B 01            [ 1]  119 	ld	a, (0x01, sp)
      00A896 97               [ 1]  120 	ld	xl, a
                           00003E   121 	C$uart.c$61$1_0$359 ==.
                                    122 ;	uart.c: 61: }
      00A897 84               [ 1]  123 	pop	a
                           00003F   124 	C$uart.c$61$1_0$359 ==.
                           00003F   125 	XG$putchar$0$0 ==.
      00A898 81               [ 4]  126 	ret
                           000040   127 	G$getchar$0$0 ==.
                           000040   128 	C$uart.c$70$1_0$361 ==.
                                    129 ;	uart.c: 70: int getchar(void)
                                    130 ;	-----------------------------------------
                                    131 ;	 function getchar
                                    132 ;	-----------------------------------------
      00A899                        133 _getchar:
                           000040   134 	C$uart.c$76$1_0$361 ==.
                                    135 ;	uart.c: 76: while(UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
      00A899                        136 00101$:
      00A899 4B 20            [ 1]  137 	push	#0x20
      00A89B 4B 00            [ 1]  138 	push	#0x00
      00A89D CD 8C 88         [ 4]  139 	call	_UART2_GetFlagStatus
      00A8A0 5B 02            [ 2]  140 	addw	sp, #2
      00A8A2 4D               [ 1]  141 	tnz	a
      00A8A3 27 F4            [ 1]  142 	jreq	00101$
                           00004C   143 	C$uart.c$78$1_0$361 ==.
                                    144 ;	uart.c: 78: c = UART2_ReceiveData8();
      00A8A5 CD 8C 1E         [ 4]  145 	call	_UART2_ReceiveData8
                           00004F   146 	C$uart.c$80$1_0$361 ==.
                                    147 ;	uart.c: 80: return (c);
      00A8A8 5F               [ 1]  148 	clrw	x
      00A8A9 97               [ 1]  149 	ld	xl, a
                           000051   150 	C$uart.c$81$1_0$361 ==.
                                    151 ;	uart.c: 81: }
                           000051   152 	C$uart.c$81$1_0$361 ==.
                           000051   153 	XG$getchar$0$0 ==.
      00A8AA 81               [ 4]  154 	ret
                                    155 	.area CODE
                                    156 	.area CONST
                                    157 	.area INITIALIZER
                                    158 	.area CABS (ABS)
