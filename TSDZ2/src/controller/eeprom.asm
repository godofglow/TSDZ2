;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeprom_write_variables
	.globl _get_configuration_variables
	.globl _FLASH_GetFlagStatus
	.globl _FLASH_SetProgrammingTime
	.globl _FLASH_ReadByte
	.globl _FLASH_ProgramByte
	.globl _FLASH_Lock
	.globl _FLASH_Unlock
	.globl _eeprom_init
	.globl _eeprom_init_variables
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
Leeprom.eeprom_read_values_to_variables$ui8_temp$1_0$360==.
_eeprom_read_values_to_variables_ui8_temp_65536_360:
	.ds 1
Leeprom.eeprom_read_values_to_variables$ui16_temp$1_0$360==.
_eeprom_read_values_to_variables_ui16_temp_65536_360:
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
Feeprom$array_default_values$0_0$0==.
_array_default_values:
	.ds 47
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
	G$eeprom_init$0$0 ==.
	C$eeprom.c$74$0_0$354 ==.
;	eeprom.c: 74: void eeprom_init(void)
;	-----------------------------------------
;	 function eeprom_init
;	-----------------------------------------
_eeprom_init:
	C$eeprom.c$81$1_0$354 ==.
;	eeprom.c: 81: ui8_key1 = FLASH_ReadByte(ADDR_KEY);
	push	#0x00
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	C$eeprom.c$82$1_0$354 ==.
;	eeprom.c: 82: ui8_key2 = FLASH_ReadByte(ADDR_KEY2);
	push	a
	push	#0x2e
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	xl, a
	pop	a
	C$eeprom.c$83$1_0$354 ==.
;	eeprom.c: 83: if((ui8_key1 != KEY)||(ui8_key2 != KEY2)) // verify if our keys exist
	cp	a, #0xaa
	jrne	00101$
	ld	a, xl
	cp	a, #0x55
	jreq	00104$
00101$:
	C$eeprom.c$85$2_0$355 ==.
;	eeprom.c: 85: eeprom_write_array(array_default_values);
	push	#<(_array_default_values + 0)
	push	#((_array_default_values + 0) >> 8)
	call	_eeprom_write_array
	addw	sp, #2
00104$:
	C$eeprom.c$87$1_0$354 ==.
;	eeprom.c: 87: }
	C$eeprom.c$87$1_0$354 ==.
	XG$eeprom_init$0$0 ==.
	ret
	G$eeprom_init_variables$0$0 ==.
	C$eeprom.c$92$1_0$357 ==.
;	eeprom.c: 92: void eeprom_init_variables(void)
;	-----------------------------------------
;	 function eeprom_init_variables
;	-----------------------------------------
_eeprom_init_variables:
	C$eeprom.c$95$1_0$357 ==.
;	eeprom.c: 95: p_configuration_variables = get_configuration_variables();
	call	_get_configuration_variables
	exgw	x, y
	C$eeprom.c$97$1_0$357 ==.
;	eeprom.c: 97: eeprom_read_values_to_variables();
	pushw	y
	call	_eeprom_read_values_to_variables
	popw	y
	C$eeprom.c$101$1_0$357 ==.
;	eeprom.c: 101: if((p_configuration_variables->ui8_battery_max_current > 100)||
	ldw	x, y
	ld	a, (0x1, x)
	cp	a, #0x64
	jrule	00170$
	jp	00101$
00170$:
	C$eeprom.c$102$1_0$357 ==.
;	eeprom.c: 102: (p_configuration_variables->ui8_motor_power_div10 > 195)||
	ldw	x, y
	ld	a, (0x2, x)
	cp	a, #0xc3
	jrule	00171$
	jp	00101$
00171$:
	C$eeprom.c$103$1_0$357 ==.
;	eeprom.c: 103: (p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 > 630)||
	ldw	x, y
	ldw	x, (0x3, x)
	cpw	x, #0x0276
	jrule	00172$
	jp	00101$
00172$:
	C$eeprom.c$104$1_0$357 ==.
;	eeprom.c: 104: (p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 < 160)||
	cpw	x, #0x00a0
	jrc	00101$
	C$eeprom.c$105$1_0$357 ==.
;	eeprom.c: 105: (p_configuration_variables->ui16_wheel_perimeter > 3000)||
	ldw	x, y
	ldw	x, (0x5, x)
	cpw	x, #0x0bb8
	jrugt	00101$
	C$eeprom.c$106$1_0$357 ==.
;	eeprom.c: 106: (p_configuration_variables->ui16_wheel_perimeter < 750)||
	cpw	x, #0x02ee
	jrc	00101$
	C$eeprom.c$107$1_0$357 ==.
;	eeprom.c: 107: (p_configuration_variables->ui8_battery_cells_number > 15)||
	ldw	x, y
	ld	a, (0x26, x)
	cp	a, #0x0f
	jrugt	00101$
	C$eeprom.c$108$1_0$357 ==.
;	eeprom.c: 108: (p_configuration_variables->ui8_battery_cells_number < 6)||
	cp	a, #0x06
	jrc	00101$
	C$eeprom.c$109$1_0$357 ==.
;	eeprom.c: 109: (p_configuration_variables->ui8_assist_level_factor_x10 > 50)||
	ld	a, (y)
	cp	a, #0x32
	jrugt	00101$
	C$eeprom.c$110$1_0$357 ==.
;	eeprom.c: 110: (p_configuration_variables->ui8_assist_level_power[0] > 50)||
	ldw	x, y
	ld	a, (0x2b, x)
	cp	a, #0x32
	jrugt	00101$
	C$eeprom.c$111$1_0$357 ==.
;	eeprom.c: 111: (p_configuration_variables->ui8_assist_level_power[1] > 50)||
	ldw	x, y
	ld	a, (0x2c, x)
	cp	a, #0x32
	jrugt	00101$
	C$eeprom.c$112$1_0$357 ==.
;	eeprom.c: 112: (p_configuration_variables->ui8_assist_level_power[2] > 50)||
	ldw	x, y
	ld	a, (0x2d, x)
	cp	a, #0x32
	jrugt	00101$
	C$eeprom.c$113$1_0$357 ==.
;	eeprom.c: 113: (p_configuration_variables->ui8_assist_level_power[3] > 50)||
	ldw	x, y
	ld	a, (0x2e, x)
	cp	a, #0x32
	jrugt	00101$
	C$eeprom.c$114$1_0$357 ==.
;	eeprom.c: 114: (p_configuration_variables->ui8_wheel_max_speed > 99))
	ld	a, (0xc, y)
	cp	a, #0x63
	jrule	00116$
00101$:
	C$eeprom.c$116$2_0$358 ==.
;	eeprom.c: 116: eeprom_write_array(array_default_values);
	push	#<(_array_default_values + 0)
	push	#((_array_default_values + 0) >> 8)
	call	_eeprom_write_array
	addw	sp, #2
	C$eeprom.c$117$2_0$358 ==.
;	eeprom.c: 117: eeprom_read_values_to_variables();
	call	_eeprom_read_values_to_variables
00116$:
	C$eeprom.c$119$1_0$357 ==.
;	eeprom.c: 119: }
	C$eeprom.c$119$1_0$357 ==.
	XG$eeprom_init_variables$0$0 ==.
	ret
	Feeprom$eeprom_read_values_to_variables$0$0 ==.
	C$eeprom.c$124$1_0$360 ==.
;	eeprom.c: 124: static void eeprom_read_values_to_variables(void)
;	-----------------------------------------
;	 function eeprom_read_values_to_variables
;	-----------------------------------------
_eeprom_read_values_to_variables:
	sub	sp, #6
	C$eeprom.c$130$1_0$360 ==.
;	eeprom.c: 130: p_configuration_variables = get_configuration_variables();
	call	_get_configuration_variables
	ldw	(0x01, sp), x
	C$eeprom.c$132$1_0$360 ==.
;	eeprom.c: 132: p_configuration_variables->ui8_assist_level_factor_x10 = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_X10);
	push	#0x01
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x01, sp)
	ld	(x), a
	C$eeprom.c$134$1_0$360 ==.
;	eeprom.c: 134: ui8_temp = FLASH_ReadByte(ADDR_CONFIG_0);
	push	#0x02
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$135$1_0$360 ==.
;	eeprom.c: 135: p_configuration_variables->ui8_lights = ui8_temp & 1 ? 1 : 0;
	ldw	y, (0x01, sp)
	addw	y, #0x0007
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	srl	a
	jrnc	00103$
	clrw	x
	incw	x
	.byte 0x21
00103$:
	clrw	x
00104$:
	ld	a, xl
	ld	(y), a
	C$eeprom.c$136$1_0$360 ==.
;	eeprom.c: 136: p_configuration_variables->ui8_walk_assist = ui8_temp & (1 << 1) ? 1 : 0;
	ldw	y, (0x01, sp)
	addw	y, #0x0008
	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #1, 00135$
	jra	00105$
00135$:
	clrw	x
	incw	x
	.byte 0x21
00105$:
	clrw	x
00106$:
	ld	a, xl
	ld	(y), a
	C$eeprom.c$137$1_0$360 ==.
;	eeprom.c: 137: p_configuration_variables->ui8_offroad_mode = ui8_temp & (1 << 2) ? 1 : 0;
	ldw	y, (0x01, sp)
	addw	y, #0x0009
	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #2, 00137$
	jra	00107$
00137$:
	clrw	x
	incw	x
	.byte 0x21
00107$:
	clrw	x
00108$:
	ld	a, xl
	ld	(y), a
	C$eeprom.c$138$1_0$360 ==.
;	eeprom.c: 138: p_configuration_variables->ui8_emtb_mode = ui8_temp & (1 << 3) ? 1 : 0;
	ldw	y, (0x01, sp)
	addw	y, #0x000a
	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #3, 00139$
	jra	00109$
00139$:
	clrw	x
	incw	x
	.byte 0x21
00109$:
	clrw	x
00110$:
	ld	a, xl
	ld	(y), a
	C$eeprom.c$139$1_0$360 ==.
;	eeprom.c: 139: p_configuration_variables->ui8_emtb_enabled_on_startup = ui8_temp & (1 << 4) ? 1 : 0;
	ldw	y, (0x01, sp)
	addw	y, #0x000b
	btjt	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, #4, 00141$
	jra	00111$
00141$:
	clrw	x
	incw	x
	.byte 0x21
00111$:
	clrw	x
00112$:
	ld	a, xl
	ld	(y), a
	C$eeprom.c$141$1_0$360 ==.
;	eeprom.c: 141: p_configuration_variables->ui8_battery_max_current = FLASH_ReadByte(ADDR_BATTERY_MAX_CURRENT);
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x05, sp), x
	push	#0x03
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$142$1_0$360 ==.
;	eeprom.c: 142: p_configuration_variables->ui8_motor_power_div10 = FLASH_ReadByte(MOTOR_MAX_POWER_DIV10);
	ldw	x, (0x01, sp)
	incw	x
	incw	x
	ldw	(0x05, sp), x
	push	#0x19
	clrw	x
	pushw	x
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$144$1_0$360 ==.
;	eeprom.c: 144: ui16_temp = FLASH_ReadByte(ADDR_BATTERY_LOW_VOLTAGE_CUT_OFF_X10_0);
	push	#0x05
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	clrw	x
	ld	xl, a
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$145$1_0$360 ==.
;	eeprom.c: 145: ui8_temp = FLASH_ReadByte(ADDR_BATTERY_LOW_VOLTAGE_CUT_OFF_X10_1);
	push	#0x06
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$146$1_0$360 ==.
;	eeprom.c: 146: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	ld	xh, a
	clr	a
	ld	xl, a
	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$147$1_0$360 ==.
;	eeprom.c: 147: p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 = ui16_temp;
	ldw	x, (0x01, sp)
	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	(0x0003, x), y
	C$eeprom.c$149$1_0$360 ==.
;	eeprom.c: 149: ui16_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_0);
	push	#0x07
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	clrw	x
	ld	xl, a
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$150$1_0$360 ==.
;	eeprom.c: 150: ui8_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_1);
	push	#0x08
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$151$1_0$360 ==.
;	eeprom.c: 151: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	ld	xh, a
	clr	a
	ld	xl, a
	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$152$1_0$360 ==.
;	eeprom.c: 152: p_configuration_variables->ui16_wheel_perimeter = ui16_temp;
	ldw	x, (0x01, sp)
	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	(0x0005, x), y
	C$eeprom.c$154$1_0$360 ==.
;	eeprom.c: 154: p_configuration_variables->ui8_wheel_max_speed = FLASH_ReadByte(ADDR_WHEEL_MAX_SPEED);
	ldw	x, (0x01, sp)
	addw	x, #0x000c
	pushw	x
	push	#0x09
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$156$1_0$360 ==.
;	eeprom.c: 156: ui8_temp = FLASH_ReadByte(ADDR_CONFIG_1);
	push	#0x0a
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$157$1_0$360 ==.
;	eeprom.c: 157: p_configuration_variables->ui8_motor_type = ui8_temp & 3;
	ldw	x, (0x01, sp)
	addw	x, #0x000d
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	and	a, #0x03
	ld	(x), a
	C$eeprom.c$158$1_0$360 ==.
;	eeprom.c: 158: p_configuration_variables->ui8_motor_assistance_startup_without_pedal_rotation = (ui8_temp & 4) >> 2;
	ldw	y, (0x01, sp)
	addw	y, #0x000e
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	ld	(0x06, sp), a
	clr	(0x05, sp)
	ld	a, (0x06, sp)
	and	a, #0x04
	ld	xl, a
	clr	a
	ld	xh, a
	sraw	x
	sraw	x
	ld	a, xl
	ld	(y), a
	C$eeprom.c$160$1_0$360 ==.
;	eeprom.c: 160: ui8_temp = FLASH_ReadByte(ADDR_STREET_CONFIG);
	push	#0x0b
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$161$1_0$360 ==.
;	eeprom.c: 161: p_configuration_variables->ui8_street_feature_enabled = ui8_temp & 1;
	ldw	x, (0x01, sp)
	addw	x, #0x001e
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	and	a, #0x01
	ld	(x), a
	C$eeprom.c$162$1_0$360 ==.
;	eeprom.c: 162: p_configuration_variables->ui8_street_enabled_on_startup = ui8_temp & (1 << 1);
	ldw	x, (0x01, sp)
	addw	x, #0x001f
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	and	a, #0x02
	ld	(x), a
	C$eeprom.c$163$1_0$360 ==.
;	eeprom.c: 163: p_configuration_variables->ui8_street_power_limit_enabled = ui8_temp & (1 << 2);
	ldw	x, (0x01, sp)
	addw	x, #0x0021
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	and	a, #0x04
	ld	(x), a
	C$eeprom.c$165$1_0$360 ==.
;	eeprom.c: 165: p_configuration_variables->ui8_street_speed_limit = FLASH_ReadByte(ADDR_STREET_SPEED_LIMIT);
	ldw	x, (0x01, sp)
	addw	x, #0x0020
	pushw	x
	push	#0x0c
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$166$1_0$360 ==.
;	eeprom.c: 166: p_configuration_variables->ui8_street_power_limit_div25 = FLASH_ReadByte(ADDR_STREET_POWER_LIMIT_DIV25);
	ldw	x, (0x01, sp)
	addw	x, #0x0022
	pushw	x
	push	#0x0d
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$168$1_0$360 ==.
;	eeprom.c: 168: p_configuration_variables->ui8_battery_cells_number = FLASH_ReadByte(ADDR_BATTERY_CELLS_NUMBER);
	ldw	x, (0x01, sp)
	addw	x, #0x0026
	pushw	x
	push	#0x0e
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$170$1_0$360 ==.
;	eeprom.c: 170: ui16_temp = FLASH_ReadByte(ADDR_BATTERY_PACK_RESISTANCE_0);
	push	#0x0f
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	clrw	x
	ld	xl, a
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$171$1_0$360 ==.
;	eeprom.c: 171: ui8_temp = FLASH_ReadByte(ADDR_BATTERY_PACK_RESISTANCE_1);
	push	#0x10
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$172$1_0$360 ==.
;	eeprom.c: 172: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	ld	xh, a
	clr	a
	ld	xl, a
	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$173$1_0$360 ==.
;	eeprom.c: 173: p_configuration_variables->ui16_battery_pack_resistance_x1000 = ui16_temp;
	ldw	x, (0x01, sp)
	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	(0x0027, x), y
	C$eeprom.c$175$1_0$360 ==.
;	eeprom.c: 175: ui16_temp = FLASH_ReadByte(ADDR_OEM_WHEEL_SPEED_DIVISOR_0);
	push	#0x11
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	clrw	x
	ld	xl, a
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$176$1_0$360 ==.
;	eeprom.c: 176: ui8_temp = FLASH_ReadByte(ADDR_OEM_WHEEL_SPEED_DIVISOR_1);
	push	#0x12
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$177$1_0$360 ==.
;	eeprom.c: 177: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	ld	xh, a
	clr	a
	ld	xl, a
	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$178$1_0$360 ==.
;	eeprom.c: 178: p_configuration_variables->ui16_oem_wheel_speed_factor = ui16_temp;
	ldw	x, (0x01, sp)
	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	(0x0029, x), y
	C$eeprom.c$180$1_0$360 ==.
;	eeprom.c: 180: p_configuration_variables->ui8_assist_level_power[0] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_1);
	ldw	x, (0x01, sp)
	addw	x, #0x002b
	pushw	x
	push	#0x13
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$181$1_0$360 ==.
;	eeprom.c: 181: p_configuration_variables->ui8_assist_level_power[1] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_2);
	ldw	x, (0x01, sp)
	addw	x, #0x002b
	ldw	(0x03, sp), x
	incw	x
	ldw	(0x05, sp), x
	push	#0x14
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$182$1_0$360 ==.
;	eeprom.c: 182: p_configuration_variables->ui8_assist_level_power[2] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_3);
	ldw	x, (0x03, sp)
	incw	x
	incw	x
	ldw	(0x05, sp), x
	push	#0x15
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$183$1_0$360 ==.
;	eeprom.c: 183: p_configuration_variables->ui8_assist_level_power[3] = FLASH_ReadByte(ADDR_ASSIST_LEVEL_FACTOR_4);
	ldw	x, (0x03, sp)
	addw	x, #0x0003
	pushw	x
	push	#0x16
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$185$1_0$360 ==.
;	eeprom.c: 185: p_configuration_variables->ui8_startup_motor_power_boost_state = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_STATE);
	ldw	x, (0x01, sp)
	addw	x, #0x0013
	pushw	x
	push	#0x17
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$186$1_0$360 ==.
;	eeprom.c: 186: p_configuration_variables->ui8_startup_motor_power_boost_feature_enabled = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_FEATURE_ENABLED);
	ldw	x, (0x01, sp)
	addw	x, #0x0011
	pushw	x
	push	#0x18
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$187$1_0$360 ==.
;	eeprom.c: 187: p_configuration_variables->ui8_startup_motor_power_boost[0] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_1);
	ldw	x, (0x01, sp)
	addw	x, #0x0030
	pushw	x
	push	#0x19
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$188$1_0$360 ==.
;	eeprom.c: 188: p_configuration_variables->ui8_startup_motor_power_boost[1] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_2);
	ldw	x, (0x01, sp)
	addw	x, #0x0030
	ldw	(0x03, sp), x
	incw	x
	ldw	(0x05, sp), x
	push	#0x1a
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$189$1_0$360 ==.
;	eeprom.c: 189: p_configuration_variables->ui8_startup_motor_power_boost[2] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_3);
	ldw	x, (0x03, sp)
	incw	x
	incw	x
	ldw	(0x05, sp), x
	push	#0x1b
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$190$1_0$360 ==.
;	eeprom.c: 190: p_configuration_variables->ui8_startup_motor_power_boost[3] = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_ASSIST_LEVEL_4);
	ldw	x, (0x03, sp)
	addw	x, #0x0003
	pushw	x
	push	#0x1c
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$191$1_0$360 ==.
;	eeprom.c: 191: p_configuration_variables->ui8_startup_motor_power_boost_time = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_TIME);
	ldw	x, (0x01, sp)
	addw	x, #0x0015
	pushw	x
	push	#0x1d
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$192$1_0$360 ==.
;	eeprom.c: 192: p_configuration_variables->ui8_startup_motor_power_boost_fade_time = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_FADE_TIME);
	ldw	x, (0x01, sp)
	addw	x, #0x0016
	pushw	x
	push	#0x1e
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$193$1_0$360 ==.
;	eeprom.c: 193: p_configuration_variables->ui8_startup_motor_power_boost_limit_to_max_power = FLASH_ReadByte(ADDR_STARTUP_MOTOR_POWER_BOOST_LIMIT_MAX_POWER);
	ldw	x, (0x01, sp)
	addw	x, #0x0014
	pushw	x
	push	#0x1f
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$195$1_0$360 ==.
;	eeprom.c: 195: p_configuration_variables->ui8_target_battery_max_power_div25 = FLASH_ReadByte(ADDR_TARGET_MAX_BATTERY_POWER_DIV25);
	ldw	x, (0x01, sp)
	addw	x, #0x000f
	pushw	x
	push	#0x20
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$197$1_0$360 ==.
;	eeprom.c: 197: p_configuration_variables->ui8_temperature_limit_feature_enabled = FLASH_ReadByte(ADDR_TEMPERATURE_LIMIT_FEATURE_ENABLED);
	ldw	x, (0x01, sp)
	addw	x, #0x0017
	pushw	x
	push	#0x21
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$198$1_0$360 ==.
;	eeprom.c: 198: p_configuration_variables->ui8_motor_temperature_min_value_to_limit = FLASH_ReadByte(ADDR_MOTOR_TEMPERATURE_MIN_VALUE_LIMIT);
	ldw	x, (0x01, sp)
	addw	x, #0x0018
	pushw	x
	push	#0x22
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$199$1_0$360 ==.
;	eeprom.c: 199: p_configuration_variables->ui8_motor_temperature_max_value_to_limit = FLASH_ReadByte(ADDR_MOTOR_TEMPERATURE_MAX_VALUE_LIMIT);
	ldw	x, (0x01, sp)
	addw	x, #0x0019
	pushw	x
	push	#0x23
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$201$1_0$360 ==.
;	eeprom.c: 201: p_configuration_variables->ui8_walk_assist_percentage_current = FLASH_ReadByte(ADDR_WALK_ASSIST_PERCENTAGE_CURRENT);
	ldw	x, (0x01, sp)
	addw	x, #0x0034
	pushw	x
	push	#0x24
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$202$1_0$360 ==.
;	eeprom.c: 202: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[0] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_0);
	ldw	x, (0x01, sp)
	addw	x, #0x0036
	ldw	(0x03, sp), x
	push	#0x25
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x03, sp)
	ld	(x), a
	C$eeprom.c$203$1_0$360 ==.
;	eeprom.c: 203: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[1] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_1);
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x05, sp), x
	push	#0x26
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$204$1_0$360 ==.
;	eeprom.c: 204: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[2] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_2);
	ldw	x, (0x03, sp)
	incw	x
	incw	x
	ldw	(0x05, sp), x
	push	#0x27
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ldw	x, (0x05, sp)
	ld	(x), a
	C$eeprom.c$205$1_0$360 ==.
;	eeprom.c: 205: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[3] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_3);
	ldw	x, (0x03, sp)
	addw	x, #0x0003
	pushw	x
	push	#0x28
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$206$1_0$360 ==.
;	eeprom.c: 206: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[4] = FLASH_ReadByte(ADDR_WALK_ASSIST_PWM_DUTY_CYCLE_LEVEL_4);
	ldw	x, (0x03, sp)
	addw	x, #0x0004
	pushw	x
	push	#0x29
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$207$1_0$360 ==.
;	eeprom.c: 207: p_configuration_variables->ui8_walk_assist_ramp_time = FLASH_ReadByte(ADDR_WALK_ASSIST_MAX_RAMP_TIME);
	ldw	x, (0x01, sp)
	addw	x, #0x003b
	pushw	x
	push	#0x2a
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$208$1_0$360 ==.
;	eeprom.c: 208: p_configuration_variables->ui8_walk_assist_off_delay_pwm = FLASH_ReadByte(ADDR_WALK_ASSIST_OFF_DELAY_PWM);
	ldw	x, (0x01, sp)
	addw	x, #0x003c
	pushw	x
	push	#0x2b
	push	#0x40
	push	#0x00
	push	#0x00
	call	_FLASH_ReadByte
	addw	sp, #4
	popw	x
	ld	(x), a
	C$eeprom.c$209$1_0$360 ==.
;	eeprom.c: 209: ui16_temp = FLASH_ReadByte(ADDR_WALK_ASSIST_OFF_DELAY_TIME_0);
	push	#0x2c
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	clrw	x
	ld	xl, a
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$210$1_0$360 ==.
;	eeprom.c: 210: ui8_temp = FLASH_ReadByte(ADDR_WALK_ASSIST_OFF_DELAY_TIME_1);
	push	#0x2d
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_eeprom_read_values_to_variables_ui8_temp_65536_360+0, a
	C$eeprom.c$211$1_0$360 ==.
;	eeprom.c: 211: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xff00);
	ld	a, _eeprom_read_values_to_variables_ui8_temp_65536_360+0
	ld	xh, a
	clr	a
	ld	xl, a
	addw	x, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	_eeprom_read_values_to_variables_ui16_temp_65536_360+0, x
	C$eeprom.c$212$1_0$360 ==.
;	eeprom.c: 212: p_configuration_variables->ui16_walk_assist_off_delay_time = ui16_temp;
	ldw	x, (0x01, sp)
	ldw	y, _eeprom_read_values_to_variables_ui16_temp_65536_360+0
	ldw	(0x003d, x), y
	C$eeprom.c$213$1_0$360 ==.
;	eeprom.c: 213: p_configuration_variables->ui8_walk_assist_pwm_duty_cycle = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[0];
	ldw	x, (0x01, sp)
	addw	x, #0x0035
	ldw	y, (0x03, sp)
	ld	a, (y)
	ld	(x), a
	C$eeprom.c$214$1_0$360 ==.
;	eeprom.c: 214: }
	addw	sp, #6
	C$eeprom.c$214$1_0$360 ==.
	XFeeprom$eeprom_read_values_to_variables$0$0 ==.
	ret
	G$eeprom_write_variables$0$0 ==.
	C$eeprom.c$219$1_0$362 ==.
;	eeprom.c: 219: void eeprom_write_variables(void)
;	-----------------------------------------
;	 function eeprom_write_variables
;	-----------------------------------------
_eeprom_write_variables:
	sub	sp, #47
	C$eeprom.c$222$1_0$362 ==.
;	eeprom.c: 222: variables_to_array(array_variables);
	ldw	x, sp
	incw	x
	ldw	y, x
	pushw	x
	pushw	y
	call	_variables_to_array
	addw	sp, #2
	popw	x
	C$eeprom.c$223$1_0$362 ==.
;	eeprom.c: 223: eeprom_write_array(array_variables);
	pushw	x
	call	_eeprom_write_array
	addw	sp, #2
	C$eeprom.c$224$1_0$362 ==.
;	eeprom.c: 224: }
	addw	sp, #47
	C$eeprom.c$224$1_0$362 ==.
	XG$eeprom_write_variables$0$0 ==.
	ret
	Feeprom$variables_to_array$0$0 ==.
	C$eeprom.c$229$1_0$364 ==.
;	eeprom.c: 229: static void variables_to_array(uint8_t *ui8_array)
;	-----------------------------------------
;	 function variables_to_array
;	-----------------------------------------
_variables_to_array:
	sub	sp, #5
	C$eeprom.c$232$1_0$364 ==.
;	eeprom.c: 232: p_configuration_variables = get_configuration_variables();
	call	_get_configuration_variables
	ldw	(0x01, sp), x
	C$eeprom.c$234$1_0$364 ==.
;	eeprom.c: 234: ui8_array[0] = KEY;
	ldw	y, (0x08, sp)
	ldw	(0x03, sp), y
	ldw	x, y
	ld	a, #0xaa
	ld	(x), a
	C$eeprom.c$235$1_0$364 ==.
;	eeprom.c: 235: ui8_array[1] = p_configuration_variables->ui8_assist_level_factor_x10;
	ldw	x, (0x03, sp)
	incw	x
	ldw	y, (0x01, sp)
	ld	a, (y)
	ld	(x), a
	C$eeprom.c$236$1_0$364 ==.
;	eeprom.c: 236: ui8_array[2] = (p_configuration_variables->ui8_lights & 1) |
	ldw	y, (0x03, sp)
	addw	y, #0x0002
	ldw	x, (0x01, sp)
	ld	a, (0x7, x)
	and	a, #0x01
	ld	(0x05, sp), a
	C$eeprom.c$237$1_0$364 ==.
;	eeprom.c: 237: ((p_configuration_variables->ui8_walk_assist & 1) << 1) |
	ldw	x, (0x01, sp)
	ld	a, (0x8, x)
	and	a, #0x01
	sll	a
	or	a, (0x05, sp)
	ld	(0x05, sp), a
	C$eeprom.c$238$1_0$364 ==.
;	eeprom.c: 238: ((p_configuration_variables->ui8_offroad_mode & 1) << 2) |
	ldw	x, (0x01, sp)
	ld	a, (0x9, x)
	and	a, #0x01
	sll	a
	sll	a
	or	a, (0x05, sp)
	ld	(0x05, sp), a
	C$eeprom.c$239$1_0$364 ==.
;	eeprom.c: 239: ((p_configuration_variables->ui8_emtb_mode & 1) << 3) |
	ldw	x, (0x01, sp)
	ld	a, (0xa, x)
	and	a, #0x01
	sll	a
	sll	a
	sll	a
	or	a, (0x05, sp)
	ld	(0x05, sp), a
	C$eeprom.c$240$1_0$364 ==.
;	eeprom.c: 240: ((p_configuration_variables->ui8_emtb_enabled_on_startup) << 4);
	ldw	x, (0x01, sp)
	ld	a, (0xb, x)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	ld	(y), a
	C$eeprom.c$241$1_0$364 ==.
;	eeprom.c: 241: ui8_array[3] = p_configuration_variables->ui8_battery_max_current;
	ldw	x, (0x03, sp)
	addw	x, #0x0003
	ldw	y, (0x01, sp)
	ld	a, (0x1, y)
	ld	(x), a
	C$eeprom.c$242$1_0$364 ==.
;	eeprom.c: 242: ui8_array[4] = p_configuration_variables->ui8_motor_power_div10;
	ldw	x, (0x03, sp)
	addw	x, #0x0004
	ldw	y, (0x01, sp)
	ld	a, (0x2, y)
	ld	(x), a
	C$eeprom.c$243$1_0$364 ==.
;	eeprom.c: 243: ui8_array[5] = p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x0005
	ldw	y, (0x01, sp)
	addw	y, #0x0003
	ld	a, (0x1, y)
	ld	(x), a
	C$eeprom.c$244$1_0$364 ==.
;	eeprom.c: 244: ui8_array[6] = (p_configuration_variables->ui16_battery_low_voltage_cut_off_x10 >> 8) & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x0006
	ldw	y, (y)
	ld	a, yh
	ld	(x), a
	C$eeprom.c$245$1_0$364 ==.
;	eeprom.c: 245: ui8_array[7] = p_configuration_variables->ui16_wheel_perimeter & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x0007
	ldw	y, (0x01, sp)
	addw	y, #0x0005
	ld	a, (0x1, y)
	ld	(x), a
	C$eeprom.c$246$1_0$364 ==.
;	eeprom.c: 246: ui8_array[8] = (p_configuration_variables->ui16_wheel_perimeter >> 8) & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x0008
	ldw	y, (y)
	ld	a, yh
	ld	(x), a
	C$eeprom.c$247$1_0$364 ==.
;	eeprom.c: 247: ui8_array[9] = p_configuration_variables->ui8_wheel_max_speed;
	ldw	x, (0x03, sp)
	addw	x, #0x0009
	ldw	y, (0x01, sp)
	ld	a, (0xc, y)
	ld	(x), a
	C$eeprom.c$248$1_0$364 ==.
;	eeprom.c: 248: ui8_array[10] = (p_configuration_variables->ui8_motor_type & 3) |
	ldw	x, (0x03, sp)
	addw	x, #0x000a
	ldw	y, (0x01, sp)
	ld	a, (0xd, y)
	and	a, #0x03
	ld	(0x05, sp), a
	C$eeprom.c$249$1_0$364 ==.
;	eeprom.c: 249: ((p_configuration_variables->ui8_motor_assistance_startup_without_pedal_rotation & 1) << 2);
	ldw	y, (0x01, sp)
	ld	a, (0xe, y)
	and	a, #0x01
	sll	a
	sll	a
	or	a, (0x05, sp)
	ld	(x), a
	C$eeprom.c$250$1_0$364 ==.
;	eeprom.c: 250: ui8_array[11] = (p_configuration_variables->ui8_street_feature_enabled & 1) |
	ldw	y, (0x03, sp)
	addw	y, #0x000b
	ldw	x, (0x01, sp)
	ld	a, (0x1e, x)
	and	a, #0x01
	ld	(0x05, sp), a
	C$eeprom.c$251$1_0$364 ==.
;	eeprom.c: 251: ((p_configuration_variables->ui8_street_enabled_on_startup & 1) << 1) |
	ldw	x, (0x01, sp)
	ld	a, (0x1f, x)
	and	a, #0x01
	sll	a
	or	a, (0x05, sp)
	ld	(0x05, sp), a
	C$eeprom.c$252$1_0$364 ==.
;	eeprom.c: 252: ((p_configuration_variables->ui8_street_power_limit_enabled & 1) << 2);
	ldw	x, (0x01, sp)
	ld	a, (0x21, x)
	and	a, #0x01
	sll	a
	sll	a
	or	a, (0x05, sp)
	ld	(y), a
	C$eeprom.c$253$1_0$364 ==.
;	eeprom.c: 253: ui8_array[12] = p_configuration_variables->ui8_street_speed_limit;
	ldw	x, (0x03, sp)
	addw	x, #0x000c
	ldw	y, (0x01, sp)
	ld	a, (0x20, y)
	ld	(x), a
	C$eeprom.c$254$1_0$364 ==.
;	eeprom.c: 254: ui8_array[13] = p_configuration_variables->ui8_street_power_limit_div25;
	ldw	x, (0x03, sp)
	addw	x, #0x000d
	ldw	y, (0x01, sp)
	ld	a, (0x22, y)
	ld	(x), a
	C$eeprom.c$255$1_0$364 ==.
;	eeprom.c: 255: ui8_array[14] = p_configuration_variables->ui8_battery_cells_number;
	ldw	x, (0x03, sp)
	addw	x, #0x000e
	ldw	y, (0x01, sp)
	ld	a, (0x26, y)
	ld	(x), a
	C$eeprom.c$256$1_0$364 ==.
;	eeprom.c: 256: ui8_array[15] = p_configuration_variables->ui16_battery_pack_resistance_x1000 & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x000f
	ldw	y, (0x01, sp)
	addw	y, #0x0027
	ld	a, (0x1, y)
	ld	(x), a
	C$eeprom.c$257$1_0$364 ==.
;	eeprom.c: 257: ui8_array[16] = (p_configuration_variables->ui16_battery_pack_resistance_x1000 >> 8) & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x0010
	ldw	y, (y)
	ld	a, yh
	ld	(x), a
	C$eeprom.c$258$1_0$364 ==.
;	eeprom.c: 258: ui8_array[17] = p_configuration_variables->ui16_oem_wheel_speed_factor & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x0011
	ldw	y, (0x01, sp)
	addw	y, #0x0029
	ld	a, (0x1, y)
	ld	(x), a
	C$eeprom.c$259$1_0$364 ==.
;	eeprom.c: 259: ui8_array[18] = (p_configuration_variables->ui16_oem_wheel_speed_factor >> 8) & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x0012
	ldw	y, (y)
	ld	a, yh
	ld	(x), a
	C$eeprom.c$261$1_0$364 ==.
;	eeprom.c: 261: ui8_array[19] = p_configuration_variables->ui8_assist_level_power[0];
	ldw	x, (0x03, sp)
	addw	x, #0x0013
	ldw	y, (0x01, sp)
	ld	a, (0x2b, y)
	ld	(x), a
	C$eeprom.c$262$1_0$364 ==.
;	eeprom.c: 262: ui8_array[20] = p_configuration_variables->ui8_assist_level_power[1];
	ldw	x, (0x03, sp)
	addw	x, #0x0014
	ldw	y, (0x01, sp)
	ld	a, (0x2c, y)
	ld	(x), a
	C$eeprom.c$263$1_0$364 ==.
;	eeprom.c: 263: ui8_array[21] = p_configuration_variables->ui8_assist_level_power[2];
	ldw	x, (0x03, sp)
	addw	x, #0x0015
	ldw	y, (0x01, sp)
	ld	a, (0x2d, y)
	ld	(x), a
	C$eeprom.c$264$1_0$364 ==.
;	eeprom.c: 264: ui8_array[22] = p_configuration_variables->ui8_assist_level_power[3];
	ldw	x, (0x03, sp)
	addw	x, #0x0016
	ldw	y, (0x01, sp)
	ld	a, (0x2e, y)
	ld	(x), a
	C$eeprom.c$266$1_0$364 ==.
;	eeprom.c: 266: ui8_array[23] = p_configuration_variables->ui8_startup_motor_power_boost_state;
	ldw	x, (0x03, sp)
	addw	x, #0x0017
	ldw	y, (0x01, sp)
	ld	a, (0x13, y)
	ld	(x), a
	C$eeprom.c$267$1_0$364 ==.
;	eeprom.c: 267: ui8_array[24] = p_configuration_variables->ui8_startup_motor_power_boost_feature_enabled;
	ldw	x, (0x03, sp)
	addw	x, #0x0018
	ldw	y, (0x01, sp)
	ld	a, (0x11, y)
	ld	(x), a
	C$eeprom.c$268$1_0$364 ==.
;	eeprom.c: 268: ui8_array[25] = p_configuration_variables->ui8_startup_motor_power_boost[0];
	ldw	x, (0x03, sp)
	addw	x, #0x0019
	ldw	y, (0x01, sp)
	ld	a, (0x30, y)
	ld	(x), a
	C$eeprom.c$269$1_0$364 ==.
;	eeprom.c: 269: ui8_array[26] = p_configuration_variables->ui8_startup_motor_power_boost[1];
	ldw	x, (0x03, sp)
	addw	x, #0x001a
	ldw	y, (0x01, sp)
	ld	a, (0x31, y)
	ld	(x), a
	C$eeprom.c$270$1_0$364 ==.
;	eeprom.c: 270: ui8_array[27] = p_configuration_variables->ui8_startup_motor_power_boost[2];
	ldw	x, (0x03, sp)
	addw	x, #0x001b
	ldw	y, (0x01, sp)
	ld	a, (0x32, y)
	ld	(x), a
	C$eeprom.c$271$1_0$364 ==.
;	eeprom.c: 271: ui8_array[28] = p_configuration_variables->ui8_startup_motor_power_boost[3];
	ldw	x, (0x03, sp)
	addw	x, #0x001c
	ldw	y, (0x01, sp)
	ld	a, (0x33, y)
	ld	(x), a
	C$eeprom.c$272$1_0$364 ==.
;	eeprom.c: 272: ui8_array[29] = p_configuration_variables->ui8_startup_motor_power_boost_time;
	ldw	x, (0x03, sp)
	addw	x, #0x001d
	ldw	y, (0x01, sp)
	ld	a, (0x15, y)
	ld	(x), a
	C$eeprom.c$273$1_0$364 ==.
;	eeprom.c: 273: ui8_array[30] = p_configuration_variables->ui8_startup_motor_power_boost_fade_time;
	ldw	x, (0x03, sp)
	addw	x, #0x001e
	ldw	y, (0x01, sp)
	ld	a, (0x16, y)
	ld	(x), a
	C$eeprom.c$274$1_0$364 ==.
;	eeprom.c: 274: ui8_array[31] = p_configuration_variables->ui8_startup_motor_power_boost_limit_to_max_power;
	ldw	x, (0x03, sp)
	addw	x, #0x001f
	ldw	y, (0x01, sp)
	ld	a, (0x14, y)
	ld	(x), a
	C$eeprom.c$276$1_0$364 ==.
;	eeprom.c: 276: ui8_array[32] = p_configuration_variables->ui8_target_battery_max_power_div25;
	ldw	x, (0x03, sp)
	addw	x, #0x0020
	ldw	y, (0x01, sp)
	ld	a, (0xf, y)
	ld	(x), a
	C$eeprom.c$278$1_0$364 ==.
;	eeprom.c: 278: ui8_array[33] = p_configuration_variables->ui8_temperature_limit_feature_enabled;
	ldw	x, (0x03, sp)
	addw	x, #0x0021
	ldw	y, (0x01, sp)
	ld	a, (0x17, y)
	ld	(x), a
	C$eeprom.c$279$1_0$364 ==.
;	eeprom.c: 279: ui8_array[34] = p_configuration_variables->ui8_motor_temperature_min_value_to_limit;
	ldw	x, (0x03, sp)
	addw	x, #0x0022
	ldw	y, (0x01, sp)
	ld	a, (0x18, y)
	ld	(x), a
	C$eeprom.c$280$1_0$364 ==.
;	eeprom.c: 280: ui8_array[35] = p_configuration_variables->ui8_motor_temperature_max_value_to_limit;
	ldw	x, (0x03, sp)
	addw	x, #0x0023
	ldw	y, (0x01, sp)
	ld	a, (0x19, y)
	ld	(x), a
	C$eeprom.c$282$1_0$364 ==.
;	eeprom.c: 282: ui8_array[36] = p_configuration_variables->ui8_walk_assist_percentage_current;
	ldw	x, (0x03, sp)
	addw	x, #0x0024
	ldw	y, (0x01, sp)
	ld	a, (0x34, y)
	ld	(x), a
	C$eeprom.c$283$1_0$364 ==.
;	eeprom.c: 283: ui8_array[37] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[0];
	ldw	x, (0x03, sp)
	addw	x, #0x0025
	ldw	y, (0x01, sp)
	ld	a, (0x36, y)
	ld	(x), a
	C$eeprom.c$284$1_0$364 ==.
;	eeprom.c: 284: ui8_array[38] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[1];
	ldw	x, (0x03, sp)
	addw	x, #0x0026
	ldw	y, (0x01, sp)
	ld	a, (0x37, y)
	ld	(x), a
	C$eeprom.c$285$1_0$364 ==.
;	eeprom.c: 285: ui8_array[39] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[2];
	ldw	x, (0x03, sp)
	addw	x, #0x0027
	ldw	y, (0x01, sp)
	ld	a, (0x38, y)
	ld	(x), a
	C$eeprom.c$286$1_0$364 ==.
;	eeprom.c: 286: ui8_array[40] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[3];
	ldw	x, (0x03, sp)
	addw	x, #0x0028
	ldw	y, (0x01, sp)
	ld	a, (0x39, y)
	ld	(x), a
	C$eeprom.c$287$1_0$364 ==.
;	eeprom.c: 287: ui8_array[41] = p_configuration_variables->ui8_walk_assist_pwm_duty_cycle_level[4];
	ldw	x, (0x03, sp)
	addw	x, #0x0029
	ldw	y, (0x01, sp)
	ld	a, (0x3a, y)
	ld	(x), a
	C$eeprom.c$288$1_0$364 ==.
;	eeprom.c: 288: ui8_array[42] = p_configuration_variables->ui8_walk_assist_ramp_time;
	ldw	x, (0x03, sp)
	addw	x, #0x002a
	ldw	y, (0x01, sp)
	ld	a, (0x3b, y)
	ld	(x), a
	C$eeprom.c$289$1_0$364 ==.
;	eeprom.c: 289: ui8_array[43] = p_configuration_variables->ui8_walk_assist_off_delay_pwm;
	ldw	x, (0x03, sp)
	addw	x, #0x002b
	ldw	y, (0x01, sp)
	ld	a, (0x3c, y)
	ld	(x), a
	C$eeprom.c$290$1_0$364 ==.
;	eeprom.c: 290: ui8_array[44] = p_configuration_variables->ui16_walk_assist_off_delay_time & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x002c
	ldw	y, (0x01, sp)
	addw	y, #0x003d
	ld	a, (0x1, y)
	ld	(x), a
	C$eeprom.c$291$1_0$364 ==.
;	eeprom.c: 291: ui8_array[45] = (p_configuration_variables->ui16_walk_assist_off_delay_time >> 8) & 255;
	ldw	x, (0x03, sp)
	addw	x, #0x002d
	ldw	y, (y)
	ld	a, yh
	ld	(x), a
	C$eeprom.c$292$1_0$364 ==.
;	eeprom.c: 292: ui8_array[46] = KEY2;
	ldw	x, (0x03, sp)
	ld	a, #0x55
	ld	(0x002e, x), a
	C$eeprom.c$293$1_0$364 ==.
;	eeprom.c: 293: }
	addw	sp, #5
	C$eeprom.c$293$1_0$364 ==.
	XFeeprom$variables_to_array$0$0 ==.
	ret
	Feeprom$eeprom_write_array$0$0 ==.
	C$eeprom.c$298$1_0$366 ==.
;	eeprom.c: 298: static void eeprom_write_array(uint8_t *array)
;	-----------------------------------------
;	 function eeprom_write_array
;	-----------------------------------------
_eeprom_write_array:
	sub	sp, #5
	C$eeprom.c$302$1_0$366 ==.
;	eeprom.c: 302: FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
	push	#0x00
	call	_FLASH_SetProgrammingTime
	pop	a
	C$eeprom.c$304$1_0$366 ==.
;	eeprom.c: 304: FLASH_Unlock(FLASH_MEMTYPE_DATA); // Unlock Data memory  
	push	#0xf7
	call	_FLASH_Unlock
	pop	a
	C$eeprom.c$305$1_0$366 ==.
;	eeprom.c: 305: while(FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET) { } // Wait until Data EEPROM area unlocked flag is set
00101$:
	push	#0x08
	call	_FLASH_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00101$
	C$eeprom.c$307$1_0$366 ==.
;	eeprom.c: 307: for(ui8_i = 0; ui8_i < EEPROM_BYTES_STORED; ui8_i++)
	ldw	x, (0x08, sp)
	clr	(0x05, sp)
00105$:
	C$eeprom.c$309$3_0$369 ==.
;	eeprom.c: 309: FLASH_ProgramByte(EEPROM_BASE_ADDR + ui8_i, *array++);
	ld	a, (x)
	incw	x
	clrw	y
	exg	a, yl
	ld	a, (0x05, sp)
	exg	a, yl
	addw	y, #0x4000
	ldw	(0x03, sp), y
	clrw	y
	tnz	(0x03, sp)
	jrpl	00127$
	decw	y
00127$:
	pushw	x
	push	a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	pushw	y
	call	_FLASH_ProgramByte
	addw	sp, #5
	popw	x
	C$eeprom.c$307$2_0$368 ==.
;	eeprom.c: 307: for(ui8_i = 0; ui8_i < EEPROM_BYTES_STORED; ui8_i++)
	inc	(0x05, sp)
	ld	a, (0x05, sp)
	cp	a, #0x2f
	jrc	00105$
	C$eeprom.c$312$1_0$366 ==.
;	eeprom.c: 312: FLASH_Lock(FLASH_MEMTYPE_DATA);
	push	#0xf7
	call	_FLASH_Lock
	pop	a
	C$eeprom.c$313$1_0$366 ==.
;	eeprom.c: 313: }
	addw	sp, #5
	C$eeprom.c$313$1_0$366 ==.
	XFeeprom$eeprom_write_array$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
Feeprom$__xinit_array_default_values$0_0$0 == .
__xinit__array_default_values:
	.db #0xaa	; 170
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x19	; 25
	.db #0x90	; 144
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x08	; 8
	.db #0x32	; 50	'2'
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x0a	; 10
	.db #0x0d	; 13
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x0c	; 12
	.db #0x17	; 23
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x55	; 85	'U'
	.db #0x14	; 20
	.db #0x19	; 25
	.db #0x21	; 33
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x0a	; 10
	.db #0x33	; 51	'3'
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.area CABS (ABS)
