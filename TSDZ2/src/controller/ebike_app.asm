;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module ebike_app
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART2_IRQHandler
	.globl _putchar
	.globl _enable_pwm
	.globl _disable_pwm
	.globl _motor_set_adc_battery_voltage_cut_off
	.globl _motor_get_adc_battery_voltage_filtered_10b
	.globl _motor_get_adc_battery_current_filtered_10b
	.globl _ui16_motor_get_motor_speed_erps
	.globl _motor_set_pwm_duty_cycle_target
	.globl _ui8_limit_max
	.globl _ui8_min
	.globl _map
	.globl _ui16_adc_read_throttle_10b
	.globl _UART2_GetFlagStatus
	.globl _UART2_ReceiveData8
	.globl _FLASH_ReadByte
	.globl _ui8_emtb_flag
	.globl _ui8_boost_flag
	.globl _ui8_mode_flag
	.globl _ui8_lights_flag
	.globl _ui8_default_flag
	.globl _ui8_walk_assist_pwm_step
	.globl _ui8_walk_assist_pwm
	.globl _ui8_walk_assist_start
	.globl _ui8_walk_assist_current_per_cent
	.globl _ui8_walk_assist
	.globl _ui8_walk_assist_flag
	.globl _ui8_enable_walk_assist
	.globl _ui8_display_ready_flag
	.globl _ui8_walk_assist_delay_off_flag
	.globl _ui16_walk_assist_delay_off
	.globl _ui8_lights_counter
	.globl _ui8_startup_counter
	.globl _ui8_timer_counter
	.globl _ui16_soft_start_time
	.globl _f_soft_start_factor_old
	.globl _f_soft_start_factor
	.globl _ui8_battery_state_of_charge
	.globl _ui16_battery_current_accumulated_x5
	.globl _ui32_battery_voltage_accumulated_x10000
	.globl _ui8_adc_motor_target_current
	.globl _ui8_adc_battery_target_current
	.globl _ui8_overtemperature
	.globl _ui16_adc_motor_temperatured_accumulated
	.globl _ui8_rtst_counter
	.globl _ui8_tstr_state_machine
	.globl _ui8_state_machine
	.globl _ui8_byte_received
	.globl _ui8_tx_counter
	.globl _ui8_rx_counter
	.globl _ui8_received_package_flag
	.globl _ui16_oem_wheel_speed
	.globl _f_oem_wheel_speed
	.globl _ui32_wheel_speed_sensor_tick_counter
	.globl _f_wheel_speed_x10
	.globl _ui16_wheel_speed_sensor_pwm_cycles_ticks
	.globl _ui16_startup_boost_fade_variable_step_amount_x256
	.globl _ui16_startup_boost_fade_variable_x256
	.globl _ui8_startup_boost_fade_steps
	.globl _ui8_startup_boost_timer
	.globl _ui8_startup_boost_state_machine
	.globl _ui8_startup_boost_fade_enable
	.globl _ui8_startup_boost_enable
	.globl _ui16_max_pedal_power_x_emtb_motor_pull_factor
	.globl _ui16_pedal_torque_x_cadence
	.globl _ui16_pedal_torque_x10
	.globl _ui8_pas_backwards_cadence_rpm
	.globl _ui8_pas_cadence_rpm
	.globl _ui8_assist_level
	.globl _ui8_pas_direction
	.globl _ui8_pedaling_direction
	.globl _ui16_pas_pwm_cycles_ticks
	.globl _ui8_system_state
	.globl _f_torque_assist_ratio
	.globl _ui8_adc_motor_current_max
	.globl _ui8_adc_battery_current_max
	.globl _ui8_adc_target_motor_max_current
	.globl _ui8_adc_target_battery_max_current
	.globl _ui8_ebike_app_state
	.globl _ui8_adc_battery_current_offset
	.globl _ui8_adc_torque_sensor_max_value
	.globl _ui8_adc_torque_sensor_min_value
	.globl _f_pedal_torque_sensor_unit
	.globl _ui8_torque_sensor_raw
	.globl _ui8_torque_sensor
	.globl _ui8_throttle
	.globl _configuration_variables
	.globl _ui8_tx_buffer
	.globl _ui8_rx_buffer
	.globl _ebike_app_init
	.globl _ebike_app_controller
	.globl _get_configuration_variables
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
G$ui8_rx_buffer$0_0$0==.
_ui8_rx_buffer::
	.ds 7
G$ui8_tx_buffer$0_0$0==.
_ui8_tx_buffer::
	.ds 9
G$configuration_variables$0_0$0==.
_configuration_variables::
	.ds 64
Lebike_app.ebike_control_motor$ui32_vartemp$1_0$430==.
_ebike_control_motor_ui32_vartemp_65536_430:
	.ds 4
Lebike_app.uart_send_package$ui8_overtemperature_counter$3_0$513==.
_uart_send_package_ui8_overtemperature_counter_196608_513:
	.ds 1
Lebike_app.check_system$ui8_motor_blocked_counter$1_0$612==.
_check_system_ui8_motor_blocked_counter_65536_612:
	.ds 1
Lebike_app.check_system$ui8_motor_blocked_reset_counter$1_0$612==.
_check_system_ui8_motor_blocked_reset_counter_65536_612:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$ui8_throttle$0_0$0==.
_ui8_throttle::
	.ds 1
G$ui8_torque_sensor$0_0$0==.
_ui8_torque_sensor::
	.ds 1
G$ui8_torque_sensor_raw$0_0$0==.
_ui8_torque_sensor_raw::
	.ds 1
G$f_pedal_torque_sensor_unit$0_0$0==.
_f_pedal_torque_sensor_unit::
	.ds 4
G$ui8_adc_torque_sensor_min_value$0_0$0==.
_ui8_adc_torque_sensor_min_value::
	.ds 1
G$ui8_adc_torque_sensor_max_value$0_0$0==.
_ui8_adc_torque_sensor_max_value::
	.ds 1
G$ui8_adc_battery_current_offset$0_0$0==.
_ui8_adc_battery_current_offset::
	.ds 1
G$ui8_ebike_app_state$0_0$0==.
_ui8_ebike_app_state::
	.ds 1
G$ui8_adc_target_battery_max_current$0_0$0==.
_ui8_adc_target_battery_max_current::
	.ds 1
G$ui8_adc_target_motor_max_current$0_0$0==.
_ui8_adc_target_motor_max_current::
	.ds 1
G$ui8_adc_battery_current_max$0_0$0==.
_ui8_adc_battery_current_max::
	.ds 1
G$ui8_adc_motor_current_max$0_0$0==.
_ui8_adc_motor_current_max::
	.ds 1
G$f_torque_assist_ratio$0_0$0==.
_f_torque_assist_ratio::
	.ds 4
G$ui8_system_state$0_0$0==.
_ui8_system_state::
	.ds 1
G$ui16_pas_pwm_cycles_ticks$0_0$0==.
_ui16_pas_pwm_cycles_ticks::
	.ds 2
Febike_app$ui8_motor_enabled$0_0$0==.
_ui8_motor_enabled:
	.ds 1
G$ui8_pedaling_direction$0_0$0==.
_ui8_pedaling_direction::
	.ds 1
G$ui8_pas_direction$0_0$0==.
_ui8_pas_direction::
	.ds 1
G$ui8_assist_level$0_0$0==.
_ui8_assist_level::
	.ds 1
G$ui8_pas_cadence_rpm$0_0$0==.
_ui8_pas_cadence_rpm::
	.ds 1
G$ui8_pas_backwards_cadence_rpm$0_0$0==.
_ui8_pas_backwards_cadence_rpm::
	.ds 1
G$ui16_pedal_torque_x10$0_0$0==.
_ui16_pedal_torque_x10::
	.ds 2
G$ui16_pedal_torque_x_cadence$0_0$0==.
_ui16_pedal_torque_x_cadence::
	.ds 2
G$ui16_max_pedal_power_x_emtb_motor_pull_factor$0_0$0==.
_ui16_max_pedal_power_x_emtb_motor_pull_factor::
	.ds 2
G$ui8_startup_boost_enable$0_0$0==.
_ui8_startup_boost_enable::
	.ds 1
G$ui8_startup_boost_fade_enable$0_0$0==.
_ui8_startup_boost_fade_enable::
	.ds 1
G$ui8_startup_boost_state_machine$0_0$0==.
_ui8_startup_boost_state_machine::
	.ds 1
G$ui8_startup_boost_timer$0_0$0==.
_ui8_startup_boost_timer::
	.ds 1
G$ui8_startup_boost_fade_steps$0_0$0==.
_ui8_startup_boost_fade_steps::
	.ds 1
G$ui16_startup_boost_fade_variable_x256$0_0$0==.
_ui16_startup_boost_fade_variable_x256::
	.ds 2
G$ui16_startup_boost_fade_variable_step_amount_x256$0_0$0==.
_ui16_startup_boost_fade_variable_step_amount_x256::
	.ds 2
G$ui16_wheel_speed_sensor_pwm_cycles_ticks$0_0$0==.
_ui16_wheel_speed_sensor_pwm_cycles_ticks::
	.ds 2
G$f_wheel_speed_x10$0_0$0==.
_f_wheel_speed_x10::
	.ds 4
Febike_app$ui16_wheel_speed_x10$0_0$0==.
_ui16_wheel_speed_x10:
	.ds 2
G$ui32_wheel_speed_sensor_tick_counter$0_0$0==.
_ui32_wheel_speed_sensor_tick_counter::
	.ds 4
G$f_oem_wheel_speed$0_0$0==.
_f_oem_wheel_speed::
	.ds 4
G$ui16_oem_wheel_speed$0_0$0==.
_ui16_oem_wheel_speed::
	.ds 2
G$ui8_received_package_flag$0_0$0==.
_ui8_received_package_flag::
	.ds 1
G$ui8_rx_counter$0_0$0==.
_ui8_rx_counter::
	.ds 1
G$ui8_tx_counter$0_0$0==.
_ui8_tx_counter::
	.ds 1
G$ui8_byte_received$0_0$0==.
_ui8_byte_received::
	.ds 1
G$ui8_state_machine$0_0$0==.
_ui8_state_machine::
	.ds 1
G$ui8_tstr_state_machine$0_0$0==.
_ui8_tstr_state_machine::
	.ds 1
G$ui8_rtst_counter$0_0$0==.
_ui8_rtst_counter::
	.ds 1
G$ui16_adc_motor_temperatured_accumulated$0_0$0==.
_ui16_adc_motor_temperatured_accumulated::
	.ds 2
G$ui8_overtemperature$0_0$0==.
_ui8_overtemperature::
	.ds 1
G$ui8_adc_battery_target_current$0_0$0==.
_ui8_adc_battery_target_current::
	.ds 1
G$ui8_adc_motor_target_current$0_0$0==.
_ui8_adc_motor_target_current::
	.ds 1
Febike_app$ui8_brake_is_set$0_0$0==.
_ui8_brake_is_set:
	.ds 1
G$ui32_battery_voltage_accumulated_x10000$0_0$0==.
_ui32_battery_voltage_accumulated_x10000::
	.ds 4
G$ui16_battery_current_accumulated_x5$0_0$0==.
_ui16_battery_current_accumulated_x5::
	.ds 2
G$ui8_battery_state_of_charge$0_0$0==.
_ui8_battery_state_of_charge::
	.ds 1
G$f_soft_start_factor$0_0$0==.
_f_soft_start_factor::
	.ds 4
G$f_soft_start_factor_old$0_0$0==.
_f_soft_start_factor_old::
	.ds 4
G$ui16_soft_start_time$0_0$0==.
_ui16_soft_start_time::
	.ds 2
G$ui8_timer_counter$0_0$0==.
_ui8_timer_counter::
	.ds 1
G$ui8_startup_counter$0_0$0==.
_ui8_startup_counter::
	.ds 1
G$ui8_lights_counter$0_0$0==.
_ui8_lights_counter::
	.ds 1
G$ui16_walk_assist_delay_off$0_0$0==.
_ui16_walk_assist_delay_off::
	.ds 2
G$ui8_walk_assist_delay_off_flag$0_0$0==.
_ui8_walk_assist_delay_off_flag::
	.ds 1
G$ui8_display_ready_flag$0_0$0==.
_ui8_display_ready_flag::
	.ds 1
G$ui8_enable_walk_assist$0_0$0==.
_ui8_enable_walk_assist::
	.ds 1
G$ui8_walk_assist_flag$0_0$0==.
_ui8_walk_assist_flag::
	.ds 1
G$ui8_walk_assist$0_0$0==.
_ui8_walk_assist::
	.ds 1
G$ui8_walk_assist_current_per_cent$0_0$0==.
_ui8_walk_assist_current_per_cent::
	.ds 1
G$ui8_walk_assist_start$0_0$0==.
_ui8_walk_assist_start::
	.ds 1
G$ui8_walk_assist_pwm$0_0$0==.
_ui8_walk_assist_pwm::
	.ds 1
G$ui8_walk_assist_pwm_step$0_0$0==.
_ui8_walk_assist_pwm_step::
	.ds 1
G$ui8_default_flag$0_0$0==.
_ui8_default_flag::
	.ds 1
G$ui8_lights_flag$0_0$0==.
_ui8_lights_flag::
	.ds 1
G$ui8_mode_flag$0_0$0==.
_ui8_mode_flag::
	.ds 1
G$ui8_boost_flag$0_0$0==.
_ui8_boost_flag::
	.ds 1
G$ui8_emtb_flag$0_0$0==.
_ui8_emtb_flag::
	.ds 1
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
	Febike_app$uart_send_package$0$0 ==.
	C$ebike_app.c$1350$2_0$508 ==.
;	ebike_app.c: 1350: static uint8_t ui8_overtemperature_counter = 0;
	clr	_uart_send_package_ui8_overtemperature_counter_196608_513+0
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$ebike_app_init$0$0 ==.
	C$ebike_app.c$147$0_0$426 ==.
;	ebike_app.c: 147: void ebike_app_init(void)
;	-----------------------------------------
;	 function ebike_app_init
;	-----------------------------------------
_ebike_app_init:
	C$ebike_app.c$151$1_0$426 ==.
;	ebike_app.c: 151: ebike_app_set_battery_max_current(ADC_BATTERY_CURRENT_MAX_LIMIT);
	push	#0x12
	call	_ebike_app_set_battery_max_current
	pop	a
	C$ebike_app.c$152$1_0$426 ==.
;	ebike_app.c: 152: ebike_app_set_motor_max_current(MOTOR_PHASE_CURRENT_MAX_AMP);
	push	#0x1e
	call	_ebike_app_set_motor_max_current
	pop	a
	C$ebike_app.c$153$1_0$426 ==.
;	ebike_app.c: 153: ebike_app_set_torque_assist_ratio();
	call	_ebike_app_set_torque_assist_ratio
	C$ebike_app.c$156$1_0$426 ==.
;	ebike_app.c: 156: configuration_variables.ui8_function_code = NO_FUNCTION;
	mov	_configuration_variables+36, #0x00
	C$ebike_app.c$158$1_0$426 ==.
;	ebike_app.c: 158: if(configuration_variables.ui8_emtb_enabled_on_startup)
	ld	a, _configuration_variables+11
	jreq	00102$
	C$ebike_app.c$159$1_0$426 ==.
;	ebike_app.c: 159: configuration_variables.ui8_emtb_mode = 1;
	mov	_configuration_variables+10, #0x01
	jra	00103$
00102$:
	C$ebike_app.c$161$1_0$426 ==.
;	ebike_app.c: 161: configuration_variables.ui8_emtb_mode = 0;
	mov	_configuration_variables+10, #0x00
00103$:
	C$ebike_app.c$163$1_0$426 ==.
;	ebike_app.c: 163: if(configuration_variables.ui8_street_enabled_on_startup)
	ld	a, _configuration_variables+31
	jreq	00105$
	C$ebike_app.c$165$1_0$426 ==.
;	ebike_app.c: 165: configuration_variables.ui8_offroad_mode = 0;
	mov	_configuration_variables+9, #0x00
	jra	00107$
00105$:
	C$ebike_app.c$168$1_0$426 ==.
;	ebike_app.c: 168: configuration_variables.ui8_offroad_mode = 1;
	mov	_configuration_variables+9, #0x01
00107$:
	C$ebike_app.c$169$1_0$426 ==.
;	ebike_app.c: 169: }
	C$ebike_app.c$169$1_0$426 ==.
	XG$ebike_app_init$0$0 ==.
	ret
	G$ebike_app_controller$0$0 ==.
	C$ebike_app.c$174$1_0$428 ==.
;	ebike_app.c: 174: void ebike_app_controller(void)
;	-----------------------------------------
;	 function ebike_app_controller
;	-----------------------------------------
_ebike_app_controller:
	C$ebike_app.c$176$1_0$428 ==.
;	ebike_app.c: 176: check_battery_soc();
	call	_check_battery_soc
	C$ebike_app.c$177$1_0$428 ==.
;	ebike_app.c: 177: walk_assist_read();
	call	_walk_assist_read
	C$ebike_app.c$178$1_0$428 ==.
;	ebike_app.c: 178: throttle_read();
	call	_throttle_read
	C$ebike_app.c$179$1_0$428 ==.
;	ebike_app.c: 179: torque_sensor_read();
	call	_torque_sensor_read
	C$ebike_app.c$180$1_0$428 ==.
;	ebike_app.c: 180: read_pas_cadence();
	call	_read_pas_cadence
	C$ebike_app.c$181$1_0$428 ==.
;	ebike_app.c: 181: calc_pedal_force_and_torque();
	call	_calc_pedal_force_and_torque
	C$ebike_app.c$182$1_0$428 ==.
;	ebike_app.c: 182: calc_wheel_speed();
	call	_calc_wheel_speed
	C$ebike_app.c$183$1_0$428 ==.
;	ebike_app.c: 183: calc_motor_temperature();
	call	_calc_motor_temperature
	C$ebike_app.c$184$1_0$428 ==.
;	ebike_app.c: 184: check_system();
	call	_check_system
	C$ebike_app.c$185$1_0$428 ==.
;	ebike_app.c: 185: ebike_control_motor();
	call	_ebike_control_motor
	C$ebike_app.c$186$1_0$428 ==.
;	ebike_app.c: 186: uart_receive_package();
	call	_uart_receive_package
	C$ebike_app.c$187$1_0$428 ==.
;	ebike_app.c: 187: uart_send_package();
	call	_uart_send_package
	C$ebike_app.c$191$1_0$428 ==.
;	ebike_app.c: 191: }
	C$ebike_app.c$191$1_0$428 ==.
	XG$ebike_app_controller$0$0 ==.
	ret
	Febike_app$ebike_control_motor$0$0 ==.
	C$ebike_app.c$304$1_0$430 ==.
;	ebike_app.c: 304: static void ebike_control_motor(void)
;	-----------------------------------------
;	 function ebike_control_motor
;	-----------------------------------------
_ebike_control_motor:
	sub	sp, #19
	C$ebike_app.c$311$2_0$430 ==.
;	ebike_app.c: 311: uint8_t ui8_adc_max_motor_current = 0;
	clr	(0x01, sp)
	C$ebike_app.c$313$2_0$430 ==.
;	ebike_app.c: 313: uint8_t ui8_boost_enabled_and_applied = 0;
	clr	(0x04, sp)
	C$ebike_app.c$315$2_0$430 ==.
;	ebike_app.c: 315: uint8_t ui8_adc_max_motor_current_boost_state = 0;
	clr	(0x03, sp)
	C$ebike_app.c$318$2_0$430 ==.
;	ebike_app.c: 318: float f_temp = 0;
	clrw	x
	ldw	(0x07, sp), x
	ldw	(0x05, sp), x
	C$ebike_app.c$323$1_0$430 ==.
;	ebike_app.c: 323: uint16_t ui16_battery_voltage_filtered = calc_filtered_battery_voltage();
	call	_calc_filtered_battery_voltage
	ldw	(0x09, sp), x
	C$ebike_app.c$329$1_0$430 ==.
;	ebike_app.c: 329: ui8_brake_is_set = 0;
	clr	_ui8_brake_is_set+0
	C$ebike_app.c$333$1_0$430 ==.
;	ebike_app.c: 333: ui8_adc_max_motor_current_boost_state = 0;
	clr	(0x03, sp)
	C$ebike_app.c$336$1_0$430 ==.
;	ebike_app.c: 336: ui8_adc_battery_target_current = ui8_adc_battery_current_max;
	mov	_ui8_adc_battery_target_current+0, _ui8_adc_battery_current_max+0
	C$ebike_app.c$337$1_0$430 ==.
;	ebike_app.c: 337: ui8_adc_motor_target_current = 0;
	clr	_ui8_adc_motor_target_current+0
	C$ebike_app.c$340$1_0$430 ==.
;	ebike_app.c: 340: ui8_adc_max_battery_power_current = 0;
	clr	(0x0b, sp)
	C$ebike_app.c$343$1_0$430 ==.
;	ebike_app.c: 343: if(ui16_battery_voltage_filtered > 15)
	ldw	x, (0x09, sp)
	cpw	x, #0x000f
	jrugt	00385$
	jp	00132$
00385$:
	C$ebike_app.c$348$2_0$431 ==.
;	ebike_app.c: 348: if(configuration_variables.ui8_startup_motor_power_boost_assist_level > 0)
	ld	a, _configuration_variables+18
	jrne	00386$
	jp	00102$
00386$:
	C$ebike_app.c$350$3_0$432 ==.
;	ebike_app.c: 350: ui32_vartemp = (uint32_t)((float) configuration_variables.ui8_startup_motor_power_boost_assist_level * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio);
	ld	a, _configuration_variables+18
	push	a
	call	___uchar2fs
	pop	a
	ldw	(0x0e, sp), x
	pushw	y
	push	_ui16_pedal_torque_x10+1
	push	_ui16_pedal_torque_x10+0
	call	___uint2fs
	addw	sp, #2
	ldw	(0x14, sp), x
	ldw	(0x12, sp), y
	popw	y
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	push	_f_torque_assist_ratio+3
	push	_f_torque_assist_ratio+2
	push	_f_torque_assist_ratio+1
	push	_f_torque_assist_ratio+0
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2ulong
	addw	sp, #4
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
	C$ebike_app.c$351$1_0$430 ==.
;	ebike_app.c: 351: ui32_vartemp /= 100;
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	push	_ebike_control_motor_ui32_vartemp_65536_430+3
	push	_ebike_control_motor_ui32_vartemp_65536_430+2
	push	_ebike_control_motor_ui32_vartemp_65536_430+1
	push	_ebike_control_motor_ui32_vartemp_65536_430+0
	call	__divulong
	addw	sp, #8
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
	C$ebike_app.c$355$1_0$430 ==.
;	ebike_app.c: 355: ui32_vartemp = ui32_vartemp * 13;
	push	_ebike_control_motor_ui32_vartemp_65536_430+3
	push	_ebike_control_motor_ui32_vartemp_65536_430+2
	push	_ebike_control_motor_ui32_vartemp_65536_430+1
	push	_ebike_control_motor_ui32_vartemp_65536_430+0
	push	#0x0d
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
	C$ebike_app.c$356$1_0$430 ==.
;	ebike_app.c: 356: ui8_adc_max_motor_current_boost_state = ui32_vartemp >> 3;
	ldw	x, _ebike_control_motor_ui32_vartemp_65536_430+2
	srlw	x
	srlw	x
	srlw	x
	exg	a, xl
	ld	(0x03, sp), a
	exg	a, xl
	C$ebike_app.c$357$3_0$432 ==.
;	ebike_app.c: 357: ui8_limit_max(&ui8_adc_max_motor_current_boost_state, 255);
	ldw	x, sp
	addw	x, #3
	push	#0xff
	pushw	x
	call	_ui8_limit_max
	addw	sp, #3
00102$:
	C$ebike_app.c$400$2_0$431 ==.
;	ebike_app.c: 400: if(configuration_variables.ui8_assist_level_factor_x10 > 0)
	ld	a, _configuration_variables+0
	jrne	00387$
	jp	00128$
00387$:
	C$ebike_app.c$403$3_0$434 ==.
;	ebike_app.c: 403: if(configuration_variables.ui8_startup_motor_power_boost_feature_enabled == 0)
	ld	a, _configuration_variables+17
	ld	(0x13, sp), a
	jreq	00388$
	jp	00116$
00388$:
	C$ebike_app.c$407$4_0$435 ==.
;	ebike_app.c: 407: if(ui8_pas_cadence_rpm == 0)
	tnz	_ui8_pas_cadence_rpm+0
	jrne	00104$
	C$ebike_app.c$410$5_0$436 ==.
;	ebike_app.c: 410: f_soft_start_factor = 0.0;
	clrw	x
	ldw	_f_soft_start_factor+2, x
	ldw	_f_soft_start_factor+0, x
	C$ebike_app.c$413$5_0$436 ==.
;	ebike_app.c: 413: f_soft_start_factor_old = 0.0;
	clrw	x
	ldw	_f_soft_start_factor_old+2, x
	ldw	_f_soft_start_factor_old+0, x
	C$ebike_app.c$416$5_0$436 ==.
;	ebike_app.c: 416: ui16_soft_start_time = 0;
	clrw	x
	ldw	_ui16_soft_start_time+0, x
00104$:
	C$ebike_app.c$436$1_0$430 ==.
;	ebike_app.c: 436: if(f_soft_start_factor < 1.0)	
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	push	_f_soft_start_factor+3
	push	_f_soft_start_factor+2
	push	_f_soft_start_factor+1
	push	_f_soft_start_factor+0
	call	___fslt
	addw	sp, #8
	tnz	a
	jrne	00390$
	jp	00117$
00390$:
	C$ebike_app.c$439$5_0$437 ==.
;	ebike_app.c: 439: if(ui16_soft_start_time++ < SOFT_START_TIMEOUT)
	ldw	y, _ui16_soft_start_time+0
	ldw	x, y
	incw	x
	ldw	_ui16_soft_start_time+0, x
	cpw	y, #0x0005
	jrc	00391$
	jp	00111$
00391$:
	C$ebike_app.c$442$6_0$438 ==.
;	ebike_app.c: 442: if(ui8_pas_cadence_rpm > THRESHOLD_SOFT_START_PAS_CADENCE)
	ld	a, _ui8_pas_cadence_rpm+0
	cp	a, #0x01
	jrule	00106$
	C$ebike_app.c$462$7_0$439 ==.
;	ebike_app.c: 462: f_temp = 1.000;
	clrw	x
	ldw	(0x07, sp), x
	ldw	x, #0x3f80
	ldw	(0x05, sp), x
	C$ebike_app.c$464$1_0$430 ==.
;	ebike_app.c: 464: f_soft_start_factor += f_k_soft_start_factor;
	push	#0xcd
	push	#0xcc
	push	#0x4c
	push	#0x3e
	push	_f_soft_start_factor+3
	push	_f_soft_start_factor+2
	push	_f_soft_start_factor+1
	push	_f_soft_start_factor+0
	call	___fsadd
	addw	sp, #8
	ldw	_f_soft_start_factor+2, x
	ldw	_f_soft_start_factor+0, y
00106$:
	C$ebike_app.c$469$6_0$438 ==.
;	ebike_app.c: 469: if(configuration_variables.ui8_assist_level_factor_x10 > INITIAL_SOFT_START_ASSIST_VALUE)
	ld	a, _configuration_variables+0
	cp	a, #0x02
	jrule	00108$
	C$ebike_app.c$472$7_0$440 ==.
;	ebike_app.c: 472: f_temp = (float) (configuration_variables.ui8_assist_level_factor_x10 - INITIAL_SOFT_START_ASSIST_VALUE) * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
	ld	a, _configuration_variables+0
	clrw	x
	ld	xl, a
	decw	x
	decw	x
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x12, sp), x
	ldw	(0x10, sp), y
	push	_ui16_pedal_torque_x10+1
	push	_ui16_pedal_torque_x10+0
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	push	_f_torque_assist_ratio+3
	push	_f_torque_assist_ratio+2
	push	_f_torque_assist_ratio+1
	push	_f_torque_assist_ratio+0
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
	jra	00117$
00108$:
	C$ebike_app.c$477$7_0$441 ==.
;	ebike_app.c: 477: f_soft_start_factor = 1.0;
	clrw	x
	ldw	_f_soft_start_factor+2, x
	ldw	x, #0x3f80
	ldw	_f_soft_start_factor+0, x
	jra	00117$
00111$:
	C$ebike_app.c$483$6_0$442 ==.
;	ebike_app.c: 483: f_soft_start_factor = 1.0;
	clrw	x
	ldw	_f_soft_start_factor+2, x
	ldw	x, #0x3f80
	ldw	_f_soft_start_factor+0, x
	jra	00117$
00116$:
	C$ebike_app.c$491$4_0$443 ==.
;	ebike_app.c: 491: f_soft_start_factor = 1.0;				
	clrw	x
	ldw	_f_soft_start_factor+2, x
	ldw	x, #0x3f80
	ldw	_f_soft_start_factor+0, x
00117$:
	C$ebike_app.c$495$1_0$430 ==.
;	ebike_app.c: 495: if(f_soft_start_factor < 1.0)
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	push	_f_soft_start_factor+3
	push	_f_soft_start_factor+2
	push	_f_soft_start_factor+1
	push	_f_soft_start_factor+0
	call	___fslt
	addw	sp, #8
	ld	(0x13, sp), a
	jreq	00119$
	C$ebike_app.c$497$1_0$430 ==.
;	ebike_app.c: 497: f_pedal_torque_x_assist_level_factor = f_temp * f_soft_start_factor;
	push	_f_soft_start_factor+3
	push	_f_soft_start_factor+2
	push	_f_soft_start_factor+1
	push	_f_soft_start_factor+0
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x12, sp), x
	ldw	(0x10, sp), y
	C$ebike_app.c$498$1_0$430 ==.
;	ebike_app.c: 498: f_temp = (float) INITIAL_SOFT_START_ASSIST_VALUE * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
	push	_ui16_pedal_torque_x10+1
	push	_ui16_pedal_torque_x10+0
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x00
	push	#0x40
	call	___fsmul
	addw	sp, #8
	push	_f_torque_assist_ratio+3
	push	_f_torque_assist_ratio+2
	push	_f_torque_assist_ratio+1
	push	_f_torque_assist_ratio+0
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	C$ebike_app.c$499$1_0$430 ==.
;	ebike_app.c: 499: f_pedal_torque_x_assist_level_factor += f_temp; 
	pushw	x
	pushw	y
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x12, sp), x
	ldw	(0x10, sp), y
	jra	00120$
00119$:
	C$ebike_app.c$503$4_0$445 ==.
;	ebike_app.c: 503: f_pedal_torque_x_assist_level_factor = (float) configuration_variables.ui8_assist_level_factor_x10 * (float) ui16_pedal_torque_x10 / f_torque_assist_ratio;
	ld	a, _configuration_variables+0
	push	a
	call	___uchar2fs
	pop	a
	ldw	(0x12, sp), x
	ldw	(0x10, sp), y
	push	_ui16_pedal_torque_x10+1
	push	_ui16_pedal_torque_x10+0
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	push	_f_torque_assist_ratio+3
	push	_f_torque_assist_ratio+2
	push	_f_torque_assist_ratio+1
	push	_f_torque_assist_ratio+0
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	ldw	(0x12, sp), x
	ldw	(0x10, sp), y
00120$:
	C$ebike_app.c$507$3_0$434 ==.
;	ebike_app.c: 507: if(configuration_variables.ui8_motor_assistance_startup_without_pedal_rotation == 0)
	ld	a, _configuration_variables+14
	jrne	00125$
	C$ebike_app.c$509$1_0$430 ==.
;	ebike_app.c: 509: ui32_vartemp = (uint32_t) f_pedal_torque_x_assist_level_factor;
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
	jra	00126$
00125$:
	C$ebike_app.c$513$4_0$447 ==.
;	ebike_app.c: 513: if(ui8_pas_cadence_rpm)
	tnz	_ui8_pas_cadence_rpm+0
	jreq	00122$
	C$ebike_app.c$515$1_0$430 ==.
;	ebike_app.c: 515: ui32_vartemp = (uint32_t) f_pedal_torque_x_assist_level_factor;
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
	jra	00126$
00122$:
	C$ebike_app.c$519$1_0$430 ==.
;	ebike_app.c: 519: ui32_vartemp = (uint32_t) f_pedal_torque_x_assist_level_factor;
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
00126$:
	C$ebike_app.c$523$1_0$430 ==.
;	ebike_app.c: 523: ui32_vartemp = ui32_vartemp * 13;
	push	_ebike_control_motor_ui32_vartemp_65536_430+3
	push	_ebike_control_motor_ui32_vartemp_65536_430+2
	push	_ebike_control_motor_ui32_vartemp_65536_430+1
	push	_ebike_control_motor_ui32_vartemp_65536_430+0
	push	#0x0d
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
	C$ebike_app.c$524$1_0$430 ==.
;	ebike_app.c: 524: ui32_vartemp /= 100;
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	push	_ebike_control_motor_ui32_vartemp_65536_430+3
	push	_ebike_control_motor_ui32_vartemp_65536_430+2
	push	_ebike_control_motor_ui32_vartemp_65536_430+1
	push	_ebike_control_motor_ui32_vartemp_65536_430+0
	call	__divulong
	addw	sp, #8
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+2, x
	ldw	_ebike_control_motor_ui32_vartemp_65536_430+0, y
	C$ebike_app.c$525$1_0$430 ==.
;	ebike_app.c: 525: ui8_adc_max_motor_current = ui32_vartemp >> 3;
	ldw	x, _ebike_control_motor_ui32_vartemp_65536_430+2
	srlw	x
	srlw	x
	srlw	x
	exg	a, xl
	ld	(0x01, sp), a
	exg	a, xl
	C$ebike_app.c$526$3_0$434 ==.
;	ebike_app.c: 526: ui8_limit_max(&ui8_adc_max_motor_current, 255);
	ldw	x, sp
	incw	x
	push	#0xff
	pushw	x
	call	_ui8_limit_max
	addw	sp, #3
	C$ebike_app.c$527$3_0$434 ==.
;	ebike_app.c: 527: ui8_adc_motor_target_current = ui8_adc_max_motor_current;
	ld	a, (0x01, sp)
	ld	_ui8_adc_motor_target_current+0, a
00128$:
	C$ebike_app.c$534$2_0$431 ==.
;	ebike_app.c: 534: if(configuration_variables.ui8_target_battery_max_power_div25 > 0) //TODO: add real feature toggle for max power feature
	ld	a, _configuration_variables+15
	jreq	00132$
	C$ebike_app.c$536$3_0$451 ==.
;	ebike_app.c: 536: ui32_adc_max_battery_current_x4 = (((uint32_t) configuration_variables.ui8_target_battery_max_power_div25) * 160) / ((uint32_t) ui16_battery_voltage_filtered);
	ld	a, _configuration_variables+15
	clrw	x
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0xa0
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x12, sp), x
	ldw	(0x10, sp), y
	ldw	y, (0x09, sp)
	clrw	x
	pushw	y
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	C$ebike_app.c$537$1_0$430 ==.
;	ebike_app.c: 537: ui8_adc_max_battery_power_current = ui32_adc_max_battery_current_x4 >> 2;
	srlw	x
	srlw	x
	exg	a, xl
	ld	(0x0b, sp), a
	exg	a, xl
00132$:
	C$ebike_app.c$550$1_0$430 ==.
;	ebike_app.c: 550: ui8_tmp_pas_cadence_rpm = ui8_pas_cadence_rpm;
	ld	a, _ui8_pas_cadence_rpm+0
	ld	(0x13, sp), a
	C$ebike_app.c$553$1_0$430 ==.
;	ebike_app.c: 553: if(configuration_variables.ui8_motor_assistance_startup_without_pedal_rotation)
	ld	a, _configuration_variables+14
	jreq	00136$
	C$ebike_app.c$555$2_0$454 ==.
;	ebike_app.c: 555: if(ui8_pas_cadence_rpm < MIN_PAS_CADENCE_RPM){ui8_tmp_pas_cadence_rpm = MIN_PAS_CADENCE_RPM;}
	ld	a, _ui8_pas_cadence_rpm+0
	cp	a, #0x05
	jrnc	00136$
	ld	a, #0x05
	ld	(0x13, sp), a
00136$:
	C$ebike_app.c$559$1_0$430 ==.
;	ebike_app.c: 559: if(configuration_variables.ui8_startup_motor_power_boost_feature_enabled)
	ld	a, _configuration_variables+17
	jreq	00138$
	C$ebike_app.c$561$2_0$456 ==.
;	ebike_app.c: 561: boost_run_statemachine();  
	call	_boost_run_statemachine
	C$ebike_app.c$562$2_0$456 ==.
;	ebike_app.c: 562: ui8_boost_enabled_and_applied = apply_boost(ui8_tmp_pas_cadence_rpm, ui8_adc_max_motor_current_boost_state, &ui8_adc_motor_target_current);
	push	#<(_ui8_adc_motor_target_current + 0)
	push	#((_ui8_adc_motor_target_current + 0) >> 8)
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x16, sp)
	push	a
	call	_apply_boost
	addw	sp, #4
	ld	(0x04, sp), a
	C$ebike_app.c$563$2_0$456 ==.
;	ebike_app.c: 563: apply_boost_fade_out(&ui8_adc_motor_target_current);
	push	#<(_ui8_adc_motor_target_current + 0)
	push	#((_ui8_adc_motor_target_current + 0) >> 8)
	call	_apply_boost_fade_out
	addw	sp, #2
00138$:
	C$ebike_app.c$572$1_0$430 ==.
;	ebike_app.c: 572: if(ui8_walk_assist_flag)
	tnz	_ui8_walk_assist_flag+0
	jreq	00140$
	C$ebike_app.c$574$2_0$457 ==.
;	ebike_app.c: 574: ui8_adc_motor_target_current = (ui8_adc_motor_current_max	* ui8_walk_assist_current_per_cent) / 100;
	ld	a, _ui8_adc_motor_current_max+0
	ld	xl, a
	ld	a, _ui8_walk_assist_current_per_cent+0
	mul	x, a
	push	#0x64
	push	#0x00
	pushw	x
	call	__divsint
	addw	sp, #4
	ld	a, xl
	ld	_ui8_adc_motor_target_current+0, a
	C$ebike_app.c$575$2_0$457 ==.
;	ebike_app.c: 575: apply_walk_assist(ui8_walk_assist, &ui8_adc_motor_target_current);
	push	#<(_ui8_adc_motor_target_current + 0)
	push	#((_ui8_adc_motor_target_current + 0) >> 8)
	push	_ui8_walk_assist+0
	call	_apply_walk_assist
	addw	sp, #3
00140$:
	C$ebike_app.c$579$1_0$430 ==.
;	ebike_app.c: 579: ui8_tmp_max_speed = configuration_variables.ui8_wheel_max_speed;
	ld	a, _configuration_variables+12
	ld	(0x02, sp), a
	C$ebike_app.c$582$1_0$430 ==.
;	ebike_app.c: 582: if(configuration_variables.ui8_street_feature_enabled)
	ld	a, _configuration_variables+30
	jreq	00142$
	C$ebike_app.c$584$2_0$458 ==.
;	ebike_app.c: 584: apply_street_mode(ui16_battery_voltage_filtered, &ui8_tmp_max_speed, &ui8_adc_battery_target_current);
	ldw	x, sp
	incw	x
	incw	x
	push	#<(_ui8_adc_battery_target_current + 0)
	push	#((_ui8_adc_battery_target_current + 0) >> 8)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	_apply_street_mode
	addw	sp, #6
00142$:
	C$ebike_app.c$588$1_0$430 ==.
;	ebike_app.c: 588: apply_speed_limit(ui16_wheel_speed_x10, ui8_tmp_max_speed, &ui8_adc_motor_target_current);
	push	#<(_ui8_adc_motor_target_current + 0)
	push	#((_ui8_adc_motor_target_current + 0) >> 8)
	ld	a, (0x04, sp)
	push	a
	push	_ui16_wheel_speed_x10+1
	push	_ui16_wheel_speed_x10+0
	call	_apply_speed_limit
	addw	sp, #5
	C$ebike_app.c$591$1_0$430 ==.
;	ebike_app.c: 591: if(configuration_variables.ui8_target_battery_max_power_div25 > 0) //TODO: add real feature toggle for max power feature
	ld	a, _configuration_variables+15
	jreq	00148$
	C$ebike_app.c$596$2_0$459 ==.
;	ebike_app.c: 596: if((configuration_variables.ui8_startup_motor_power_boost_limit_to_max_power == 1)||
	ld	a, _configuration_variables+20
	dec	a
	jreq	00143$
	C$ebike_app.c$597$2_0$459 ==.
;	ebike_app.c: 597: (!((ui8_boost_enabled_and_applied == 1)||
	ld	a, (0x04, sp)
	dec	a
	jreq	00148$
	C$ebike_app.c$598$2_0$459 ==.
;	ebike_app.c: 598: (ui8_startup_boost_fade_enable == 1))))
	ld	a, _ui8_startup_boost_fade_enable+0
	dec	a
	jreq	00148$
00143$:
	C$ebike_app.c$601$3_0$460 ==.
;	ebike_app.c: 601: ui8_adc_battery_target_current = ui8_min(ui8_adc_battery_target_current, ui8_adc_max_battery_power_current);
	ld	a, (0x0b, sp)
	push	a
	push	_ui8_adc_battery_target_current+0
	call	_ui8_min
	addw	sp, #2
	ld	_ui8_adc_battery_target_current+0, a
00148$:
	C$ebike_app.c$606$1_0$430 ==.
;	ebike_app.c: 606: if(configuration_variables.ui8_temperature_limit_feature_enabled)
	ld	a, _configuration_variables+23
	jreq	00156$
	C$ebike_app.c$608$2_0$461 ==.
;	ebike_app.c: 608: apply_temperature_limiting(&ui8_adc_motor_target_current);
	push	#<(_ui8_adc_motor_target_current + 0)
	push	#((_ui8_adc_motor_target_current + 0) >> 8)
	call	_apply_temperature_limiting
	addw	sp, #2
	C$ebike_app.c$610$2_0$461 ==.
;	ebike_app.c: 610: if(configuration_variables.ui8_motor_temperature >= configuration_variables.ui8_motor_temperature_max_value_to_limit)
	ld	a, _configuration_variables+29
	ld	(0x13, sp), a
	ld	a, _configuration_variables+25
	cp	a, (0x13, sp)
	jrugt	00153$
	C$ebike_app.c$611$2_0$461 ==.
;	ebike_app.c: 611: ui8_overtemperature = 2;
	mov	_ui8_overtemperature+0, #0x02
	jra	00157$
00153$:
	C$ebike_app.c$612$2_0$461 ==.
;	ebike_app.c: 612: else if(configuration_variables.ui8_motor_temperature >= configuration_variables.ui8_motor_temperature_min_value_to_limit)
	ld	a, _configuration_variables+29
	ld	(0x13, sp), a
	ld	a, _configuration_variables+24
	cp	a, (0x13, sp)
	jrugt	00150$
	C$ebike_app.c$613$2_0$461 ==.
;	ebike_app.c: 613: ui8_overtemperature = 1;
	mov	_ui8_overtemperature+0, #0x01
	jra	00157$
00150$:
	C$ebike_app.c$615$2_0$461 ==.
;	ebike_app.c: 615: ui8_overtemperature = 0;
	clr	_ui8_overtemperature+0
	jra	00157$
00156$:
	C$ebike_app.c$633$2_0$462 ==.
;	ebike_app.c: 633: ui8_overtemperature = 0;
	clr	_ui8_overtemperature+0
00157$:
	C$ebike_app.c$637$1_0$430 ==.
;	ebike_app.c: 637: if((ui8_brake_is_set)||(ui8_system_state != NO_ERROR))
	tnz	_ui8_brake_is_set+0
	jrne	00158$
	tnz	_ui8_system_state+0
	jreq	00159$
00158$:
	C$ebike_app.c$639$2_0$463 ==.
;	ebike_app.c: 639: ui8_adc_battery_target_current = 0;
	clr	_ui8_adc_battery_target_current+0
	C$ebike_app.c$640$2_0$463 ==.
;	ebike_app.c: 640: ui8_adc_motor_target_current = 0;
	clr	_ui8_adc_motor_target_current+0
00159$:
	C$ebike_app.c$645$1_0$430 ==.
;	ebike_app.c: 645: if((!ui8_motor_enabled)&&
	tnz	_ui8_motor_enabled+0
	jrne	00162$
	C$ebike_app.c$646$1_0$430 ==.
;	ebike_app.c: 646: (ui16_motor_get_motor_speed_erps() == 0)&&
	call	_ui16_motor_get_motor_speed_erps
	tnzw	x
	jrne	00162$
	C$ebike_app.c$647$1_0$430 ==.
;	ebike_app.c: 647: (ui8_adc_motor_target_current))
	tnz	_ui8_adc_motor_target_current+0
	jreq	00162$
	C$ebike_app.c$649$2_0$464 ==.
;	ebike_app.c: 649: ui8_motor_enabled = 1;
	mov	_ui8_motor_enabled+0, #0x01
	C$ebike_app.c$650$2_0$464 ==.
;	ebike_app.c: 650: ui8_duty_cycle = 0;
	clr	_ui8_duty_cycle+0
	C$ebike_app.c$651$2_0$464 ==.
;	ebike_app.c: 651: enable_pwm();
	call	_enable_pwm
00162$:
	C$ebike_app.c$655$1_0$430 ==.
;	ebike_app.c: 655: if((ui8_motor_enabled)&&
	tnz	_ui8_motor_enabled+0
	jreq	00166$
	C$ebike_app.c$656$1_0$430 ==.
;	ebike_app.c: 656: (ui16_motor_get_motor_speed_erps() == 0)&&
	call	_ui16_motor_get_motor_speed_erps
	tnzw	x
	jrne	00166$
	C$ebike_app.c$657$1_0$430 ==.
;	ebike_app.c: 657: (ui8_adc_motor_target_current == 0)&&
	tnz	_ui8_adc_motor_target_current+0
	jrne	00166$
	C$ebike_app.c$658$1_0$430 ==.
;	ebike_app.c: 658: (ui8_duty_cycle == 0))
	tnz	_ui8_duty_cycle+0
	jrne	00166$
	C$ebike_app.c$660$2_0$465 ==.
;	ebike_app.c: 660: ui8_motor_enabled = 0;
	clr	_ui8_motor_enabled+0
	C$ebike_app.c$661$2_0$465 ==.
;	ebike_app.c: 661: disable_pwm();
	call	_disable_pwm
00166$:
	C$ebike_app.c$665$1_0$430 ==.
;	ebike_app.c: 665: if(ui8_motor_enabled)
	tnz	_ui8_motor_enabled+0
	jreq	00171$
	C$ebike_app.c$668$2_0$466 ==.
;	ebike_app.c: 668: ebike_app_set_target_adc_battery_max_current(ui8_adc_battery_target_current);
	push	_ui8_adc_battery_target_current+0
	call	_ebike_app_set_target_adc_battery_max_current
	pop	a
	C$ebike_app.c$669$2_0$466 ==.
;	ebike_app.c: 669: ebike_app_set_target_adc_motor_max_current(ui8_adc_motor_target_current);
	push	_ui8_adc_motor_target_current+0
	call	_ebike_app_set_target_adc_motor_max_current
	pop	a
	jra	00172$
00171$:
	C$ebike_app.c$674$2_0$467 ==.
;	ebike_app.c: 674: ebike_app_set_target_adc_battery_max_current(0);
	push	#0x00
	call	_ebike_app_set_target_adc_battery_max_current
	pop	a
	C$ebike_app.c$675$2_0$467 ==.
;	ebike_app.c: 675: ebike_app_set_target_adc_motor_max_current(0);
	push	#0x00
	call	_ebike_app_set_target_adc_motor_max_current
	pop	a
	C$ebike_app.c$676$2_0$467 ==.
;	ebike_app.c: 676: ui8_duty_cycle = 0;
	clr	_ui8_duty_cycle+0
00172$:
	C$ebike_app.c$685$1_0$430 ==.
;	ebike_app.c: 685: if((ui8_adc_motor_target_current)&&(!ui8_brake_is_set))
	tnz	_ui8_adc_motor_target_current+0
	jrne	00426$
	jp	00185$
00426$:
	tnz	_ui8_brake_is_set+0
	jreq	00427$
	jp	00185$
00427$:
	C$ebike_app.c$688$2_0$468 ==.
;	ebike_app.c: 688: if(ui8_walk_assist_flag)
	tnz	_ui8_walk_assist_flag+0
	jrne	00428$
	jp	00182$
00428$:
	C$ebike_app.c$691$3_0$469 ==.
;	ebike_app.c: 691: if(ui8_walk_assist_start == 0)
	tnz	_ui8_walk_assist_start+0
	jrne	00177$
	C$ebike_app.c$694$4_0$470 ==.
;	ebike_app.c: 694: ui8_walk_assist_start = 1;
	mov	_ui8_walk_assist_start+0, #0x01
	C$ebike_app.c$697$4_0$470 ==.
;	ebike_app.c: 697: ui8_walk_assist_pwm = 0;
	clr	_ui8_walk_assist_pwm+0
	C$ebike_app.c$700$4_0$470 ==.
;	ebike_app.c: 700: if(ui8_walk_assist_pwm < configuration_variables.ui8_walk_assist_ramp_time)
	ld	a, _configuration_variables+59
	cp	a, _ui8_walk_assist_pwm+0
	jrule	00174$
	C$ebike_app.c$701$4_0$470 ==.
;	ebike_app.c: 701: ui8_walk_assist_pwm_step = 1;
	mov	_ui8_walk_assist_pwm_step+0, #0x01
	jra	00177$
00174$:
	C$ebike_app.c$703$4_0$470 ==.
;	ebike_app.c: 703: ui8_walk_assist_pwm_step = configuration_variables.ui8_walk_assist_pwm_duty_cycle / configuration_variables.ui8_walk_assist_ramp_time;
	ld	a, _configuration_variables+53
	ld	xl, a
	ld	a, _configuration_variables+59
	rlwa	x
	clr	a
	rrwa	x
	div	x, a
	ld	a, xl
	ld	_ui8_walk_assist_pwm_step+0, a
00177$:
	C$ebike_app.c$707$3_0$469 ==.
;	ebike_app.c: 707: if((ui8_walk_assist_pwm + ui8_walk_assist_pwm_step) <= configuration_variables.ui8_walk_assist_pwm_duty_cycle)
	ld	a, _ui8_walk_assist_pwm+0
	ld	(0x13, sp), a
	clr	(0x12, sp)
	clrw	x
	ld	a, _ui8_walk_assist_pwm_step+0
	ld	xl, a
	addw	x, (0x12, sp)
	ld	a, _configuration_variables+53
	ld	(0x13, sp), a
	clr	(0x12, sp)
	cpw	x, (0x12, sp)
	jrsgt	00179$
	C$ebike_app.c$708$3_0$469 ==.
;	ebike_app.c: 708: ui8_walk_assist_pwm += ui8_walk_assist_pwm_step;
	ld	a, _ui8_walk_assist_pwm+0
	add	a, _ui8_walk_assist_pwm_step+0
	ld	_ui8_walk_assist_pwm+0, a
	jra	00180$
00179$:
	C$ebike_app.c$710$3_0$469 ==.
;	ebike_app.c: 710: ui8_walk_assist_pwm = configuration_variables.ui8_walk_assist_pwm_duty_cycle;
	ld	a, _configuration_variables+53
	ld	_ui8_walk_assist_pwm+0, a
00180$:
	C$ebike_app.c$713$3_0$469 ==.
;	ebike_app.c: 713: motor_set_pwm_duty_cycle_target(ui8_walk_assist_pwm);
	push	_ui8_walk_assist_pwm+0
	call	_motor_set_pwm_duty_cycle_target
	pop	a
	jra	00188$
00182$:
	C$ebike_app.c$717$3_0$471 ==.
;	ebike_app.c: 717: motor_set_pwm_duty_cycle_target(255);
	push	#0xff
	call	_motor_set_pwm_duty_cycle_target
	pop	a
	jra	00188$
00185$:
	C$ebike_app.c$723$2_0$472 ==.
;	ebike_app.c: 723: motor_set_pwm_duty_cycle_target(0);
	push	#0x00
	call	_motor_set_pwm_duty_cycle_target
	pop	a
	C$ebike_app.c$726$2_0$472 ==.
;	ebike_app.c: 726: ui8_walk_assist_flag = 0;
	clr	_ui8_walk_assist_flag+0
	C$ebike_app.c$727$2_0$472 ==.
;	ebike_app.c: 727: ui8_walk_assist_start = 0;
	clr	_ui8_walk_assist_start+0
	C$ebike_app.c$728$2_0$472 ==.
;	ebike_app.c: 728: ui8_walk_assist_delay_off_flag = 0;
	clr	_ui8_walk_assist_delay_off_flag+0
	C$ebike_app.c$729$2_0$472 ==.
;	ebike_app.c: 729: ui8_walk_assist_current_per_cent = 0;
	clr	_ui8_walk_assist_current_per_cent+0
00188$:
	C$ebike_app.c$731$1_0$430 ==.
;	ebike_app.c: 731: }
	addw	sp, #19
	C$ebike_app.c$731$1_0$430 ==.
	XFebike_app$ebike_control_motor$0$0 ==.
	ret
	Febike_app$check_battery_soc$0$0 ==.
	C$ebike_app.c$736$1_0$474 ==.
;	ebike_app.c: 736: static void check_battery_soc(void)
;	-----------------------------------------
;	 function check_battery_soc
;	-----------------------------------------
_check_battery_soc:
	sub	sp, #6
	C$ebike_app.c$747$1_0$474 ==.
;	ebike_app.c: 747: ui16_adc_battery_voltage = motor_get_adc_battery_voltage_filtered_10b();
	call	_motor_get_adc_battery_voltage_filtered_10b
	ldw	(0x01, sp), x
	C$ebike_app.c$750$1_0$474 ==.
;	ebike_app.c: 750: ui32_battery_voltage_accumulated_x10000 -= ui32_battery_voltage_accumulated_x10000 >> SOC_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
	ldw	x, _ui32_battery_voltage_accumulated_x10000+2
	ldw	(0x05, sp), x
	ldw	x, _ui32_battery_voltage_accumulated_x10000+0
	srlw	x
	rrc	(0x05, sp)
	rrc	(0x06, sp)
	srlw	x
	rrc	(0x05, sp)
	rrc	(0x06, sp)
	ldw	y, _ui32_battery_voltage_accumulated_x10000+2
	subw	y, (0x05, sp)
	ld	a, _ui32_battery_voltage_accumulated_x10000+1
	pushw	x
	sbc	a, (#2, sp)
	popw	x
	ld	xl, a
	ld	a, _ui32_battery_voltage_accumulated_x10000+0
	pushw	x
	sbc	a, (#1, sp)
	popw	x
	ld	xh, a
	ldw	_ui32_battery_voltage_accumulated_x10000+2, y
	ldw	_ui32_battery_voltage_accumulated_x10000+0, x
	C$ebike_app.c$751$1_0$474 ==.
;	ebike_app.c: 751: ui32_battery_voltage_accumulated_x10000 += (uint32_t) ui16_adc_battery_voltage * SOC_ADC_BATTERY_VOLTAGE_PER_ADC_STEP_X10000;
	ldw	x, (0x01, sp)
	pushw	x
	push	#0x62
	push	#0x03
	call	___muluint2ulong
	addw	sp, #4
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
	ldw	x, _ui32_battery_voltage_accumulated_x10000+2
	addw	x, (0x05, sp)
	ldw	y, _ui32_battery_voltage_accumulated_x10000+0
	jrnc	00151$
	incw	y
00151$:
	addw	y, (0x03, sp)
	ldw	_ui32_battery_voltage_accumulated_x10000+2, x
	ldw	_ui32_battery_voltage_accumulated_x10000+0, y
	C$ebike_app.c$752$1_0$474 ==.
;	ebike_app.c: 752: ui16_battery_voltage_filtered_x10 = ((uint32_t) (ui32_battery_voltage_accumulated_x10000 >> SOC_BATTERY_VOLTAGE_FILTER_COEFFICIENT)) / 1000;
	ldw	x, _ui32_battery_voltage_accumulated_x10000+2
	ldw	y, _ui32_battery_voltage_accumulated_x10000+0
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	push	#0xe8
	push	#0x03
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x05, sp), x
	C$ebike_app.c$755$1_0$474 ==.
;	ebike_app.c: 755: ui8_battery_current_x5 = (uint8_t) ((float) motor_get_adc_battery_current_filtered_10b() * 0.826);
	call	_motor_get_adc_battery_current_filtered_10b
	push	a
	call	___uchar2fs
	pop	a
	pushw	x
	pushw	y
	push	#0xbc
	push	#0x74
	push	#0x53
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uchar
	addw	sp, #4
	C$ebike_app.c$758$1_0$474 ==.
;	ebike_app.c: 758: ui16_battery_current_accumulated_x5 -= ui16_battery_current_accumulated_x5 >> SOC_BATTERY_CURRENT_FILTER_COEFFICIENT;
	ldw	x, _ui16_battery_current_accumulated_x5+0
	srlw	x
	srlw	x
	negw	x
	addw	x, _ui16_battery_current_accumulated_x5+0
	ldw	_ui16_battery_current_accumulated_x5+0, x
	C$ebike_app.c$759$1_0$474 ==.
;	ebike_app.c: 759: ui16_battery_current_accumulated_x5 += (uint16_t) ui8_battery_current_x5;
	clrw	x
	ld	xl, a
	addw	x, _ui16_battery_current_accumulated_x5+0
	ldw	_ui16_battery_current_accumulated_x5+0, x
	C$ebike_app.c$760$1_0$474 ==.
;	ebike_app.c: 760: ui16_battery_current_filtered_x5 = ui16_battery_current_accumulated_x5 >> SOC_BATTERY_CURRENT_FILTER_COEFFICIENT;
	ldw	x, _ui16_battery_current_accumulated_x5+0
	srlw	x
	srlw	x
	C$ebike_app.c$763$1_0$474 ==.
;	ebike_app.c: 763: ui16_fluctuate_battery_voltage_x10 = (uint16_t) ((((uint32_t) configuration_variables.ui16_battery_pack_resistance_x1000) * ((uint32_t) ui16_battery_current_filtered_x5)) / ((uint32_t) 500));
	ldw	y, _configuration_variables+39
	pushw	x
	pushw	y
	call	___muluint2ulong
	addw	sp, #4
	push	#0xf4
	push	#0x01
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	C$ebike_app.c$765$1_0$474 ==.
;	ebike_app.c: 765: ui16_battery_voltage_soc_x10 = ui16_battery_voltage_filtered_x10 + ui16_fluctuate_battery_voltage_x10;
	addw	x, (0x05, sp)
	ldw	(0x01, sp), x
	C$ebike_app.c$768$1_0$474 ==.
;	ebike_app.c: 768: ui8_battery_cells_number_x10 = configuration_variables.ui8_battery_cells_number * 10;
	ld	a, _configuration_variables+38
	ld	xl, a
	ld	a, #0x0a
	mul	x, a
	C$ebike_app.c$771$1_0$474 ==.
;	ebike_app.c: 771: if(ui8_timer_counter++ >= 1)
	ld	a, _ui8_timer_counter+0
	ld	xh, a
	inc	a
	ld	_ui8_timer_counter+0, a
	ld	a, xh
	cp	a, #0x01
	jrnc	00152$
	jp	00121$
00152$:
	C$ebike_app.c$773$2_0$475 ==.
;	ebike_app.c: 773: ui8_timer_counter = 0;
	clr	_ui8_timer_counter+0
	C$ebike_app.c$776$1_0$474 ==.
;	ebike_app.c: 776: if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_5))) {ui8_battery_state_of_charge = 6;}				// 4 bars --> full + overvoltage
	ld	a, xl
	push	a
	call	___uchar2fs
	pop	a
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x88
	push	#0x40
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uint
	addw	sp, #4
	cpw	x, (0x01, sp)
	jrnc	00117$
	mov	_ui8_battery_state_of_charge+0, #0x06
	jp	00121$
00117$:
	C$ebike_app.c$777$1_0$474 ==.
;	ebike_app.c: 777: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_4))) {ui8_battery_state_of_charge = 5;}	// 4 bars --> full
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0xa4
	push	#0x70
	push	#0x7d
	push	#0x40
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uint
	addw	sp, #4
	cpw	x, (0x01, sp)
	jrnc	00114$
	mov	_ui8_battery_state_of_charge+0, #0x05
	jp	00121$
00114$:
	C$ebike_app.c$778$1_0$474 ==.
;	ebike_app.c: 778: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_3))) {ui8_battery_state_of_charge = 4;}	// 3 bars
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0xcd
	push	#0xcc
	push	#0x6c
	push	#0x40
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uint
	addw	sp, #4
	cpw	x, (0x01, sp)
	jrnc	00111$
	mov	_ui8_battery_state_of_charge+0, #0x04
	jp	00121$
00111$:
	C$ebike_app.c$779$1_0$474 ==.
;	ebike_app.c: 779: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_2))) {ui8_battery_state_of_charge = 3;}	// 2 bars
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0xf6
	push	#0x28
	push	#0x5c
	push	#0x40
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uint
	addw	sp, #4
	cpw	x, (0x01, sp)
	jrnc	00108$
	mov	_ui8_battery_state_of_charge+0, #0x03
	jra	00121$
00108$:
	C$ebike_app.c$780$1_0$474 ==.
;	ebike_app.c: 780: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_1))) {ui8_battery_state_of_charge = 2;}	// 1 bar
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0x33
	push	#0x33
	push	#0x53
	push	#0x40
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uint
	addw	sp, #4
	cpw	x, (0x01, sp)
	jrnc	00105$
	mov	_ui8_battery_state_of_charge+0, #0x02
	jra	00121$
00105$:
	C$ebike_app.c$781$1_0$474 ==.
;	ebike_app.c: 781: else if(ui16_battery_voltage_soc_x10 > ((uint16_t) ((float) ui8_battery_cells_number_x10 * LI_ION_CELL_VOLTS_0))) {ui8_battery_state_of_charge = 1;}	// blink --> empty
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0xe1
	push	#0x7a
	push	#0x44
	push	#0x40
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uint
	addw	sp, #4
	cpw	x, (0x01, sp)
	jrnc	00102$
	mov	_ui8_battery_state_of_charge+0, #0x01
	jra	00121$
00102$:
	C$ebike_app.c$782$3_0$482 ==.
;	ebike_app.c: 782: else{ui8_battery_state_of_charge = 0;} // undervoltage
	clr	_ui8_battery_state_of_charge+0
00121$:
	C$ebike_app.c$807$1_0$474 ==.
;	ebike_app.c: 807: }
	addw	sp, #6
	C$ebike_app.c$807$1_0$474 ==.
	XFebike_app$check_battery_soc$0$0 ==.
	ret
	Febike_app$uart_receive_package$0$0 ==.
	C$ebike_app.c$812$1_0$484 ==.
;	ebike_app.c: 812: static void uart_receive_package(void)
;	-----------------------------------------
;	 function uart_receive_package
;	-----------------------------------------
_uart_receive_package:
	sub	sp, #2
	C$ebike_app.c$820$1_0$484 ==.
;	ebike_app.c: 820: ui16_walk_assist_delay_off++;
	ldw	x, _ui16_walk_assist_delay_off+0
	incw	x
	ldw	_ui16_walk_assist_delay_off+0, x
	C$ebike_app.c$823$1_0$484 ==.
;	ebike_app.c: 823: ui8_lights_counter++;
	inc	_ui8_lights_counter+0
	C$ebike_app.c$825$1_0$484 ==.
;	ebike_app.c: 825: if(ui8_received_package_flag)
	tnz	_ui8_received_package_flag+0
	jrne	00238$
	jp	00140$
00238$:
	C$ebike_app.c$828$2_0$485 ==.
;	ebike_app.c: 828: ui8_rx_check_code = 0x00;
	clr	(0x01, sp)
	C$ebike_app.c$829$1_0$484 ==.
;	ebike_app.c: 829: for(ui8_i = 0; ui8_i < RX_CHECK_CODE; ui8_i++)
	clr	(0x02, sp)
00138$:
	C$ebike_app.c$831$4_0$487 ==.
;	ebike_app.c: 831: ui8_rx_check_code += ui8_rx_buffer[ui8_i];
	clrw	x
	ld	a, (0x02, sp)
	ld	xl, a
	addw	x, #(_ui8_rx_buffer + 0)
	ld	a, (x)
	add	a, (0x01, sp)
	ld	(0x01, sp), a
	C$ebike_app.c$829$3_0$486 ==.
;	ebike_app.c: 829: for(ui8_i = 0; ui8_i < RX_CHECK_CODE; ui8_i++)
	inc	(0x02, sp)
	ld	a, (0x02, sp)
	cp	a, #0x06
	jrc	00138$
	C$ebike_app.c$835$2_0$485 ==.
;	ebike_app.c: 835: if(ui8_rx_check_code == ui8_rx_buffer[RX_CHECK_CODE])
	ld	a, _ui8_rx_buffer+6
	cp	a, (0x01, sp)
	jreq	00242$
	jp	00135$
00242$:
	C$ebike_app.c$838$3_0$488 ==.
;	ebike_app.c: 838: ui8_enable_walk_assist = 1;
	mov	_ui8_enable_walk_assist+0, #0x01
	C$ebike_app.c$841$3_0$488 ==.
;	ebike_app.c: 841: ui8_assist_level = ui8_rx_buffer[1] & 0x5E; // mask: 01011110
	ld	a, _ui8_rx_buffer+1
	and	a, #0x5e
	ld	_ui8_assist_level+0, a
	C$ebike_app.c$843$3_0$488 ==.
;	ebike_app.c: 843: switch(ui8_assist_level)
	ld	a, _ui8_assist_level+0
	ld	(0x02, sp), a
	cp	a, #0x02
	jrne	00244$
	jp	00104$
00244$:
	ld	a, (0x02, sp)
	cp	a, #0x04
	jrne	00247$
	jp	00105$
00247$:
	ld	a, (0x02, sp)
	cp	a, #0x08
	jrne	00250$
	jp	00106$
00250$:
	ld	a, (0x02, sp)
	cp	a, #0x10
	jreq	00102$
	ld	a, (0x02, sp)
	cp	a, #0x40
	jreq	00103$
	jp	00108$
	C$ebike_app.c$845$4_0$489 ==.
;	ebike_app.c: 845: case ASSIST_PEDAL_LEVEL0:
00102$:
	C$ebike_app.c$847$4_0$489 ==.
;	ebike_app.c: 847: configuration_variables.ui8_assist_level_factor_x10 = 0;
	mov	_configuration_variables+0, #0x00
	C$ebike_app.c$850$4_0$489 ==.
;	ebike_app.c: 850: configuration_variables.ui8_startup_motor_power_boost_assist_level = 0;
	mov	_configuration_variables+18, #0x00
	C$ebike_app.c$853$4_0$489 ==.
;	ebike_app.c: 853: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[0];
	ld	a, _configuration_variables+54
	ld	_configuration_variables+53, a
	C$ebike_app.c$856$4_0$489 ==.
;	ebike_app.c: 856: configuration_variables.ui8_offroad_mode = 0;
	mov	_configuration_variables+9, #0x00
	C$ebike_app.c$857$4_0$489 ==.
;	ebike_app.c: 857: configuration_variables.ui8_startup_motor_power_boost_feature_enabled = 0;
	mov	_configuration_variables+17, #0x00
	C$ebike_app.c$858$4_0$489 ==.
;	ebike_app.c: 858: configuration_variables.ui8_emtb_mode = 0;
	mov	_configuration_variables+10, #0x00
	C$ebike_app.c$859$4_0$489 ==.
;	ebike_app.c: 859: configuration_variables.ui8_function_code = DEFAULT_FUNCTION_ENABLED;
	mov	_configuration_variables+36, #0x0f
	C$ebike_app.c$865$4_0$489 ==.
;	ebike_app.c: 865: break;
	jp	00108$
	C$ebike_app.c$867$4_0$489 ==.
;	ebike_app.c: 867: case ASSIST_PEDAL_LEVEL1:
00103$:
	C$ebike_app.c$869$4_0$489 ==.
;	ebike_app.c: 869: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[ECO];
	ld	a, _configuration_variables+43
	ld	_configuration_variables+0, a
	C$ebike_app.c$872$4_0$489 ==.
;	ebike_app.c: 872: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[0];
	ld	a, _configuration_variables+48
	ld	_configuration_variables+18, a
	C$ebike_app.c$879$4_0$489 ==.
;	ebike_app.c: 879: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[1];
	ld	a, _configuration_variables+55
	ld	_configuration_variables+53, a
	C$ebike_app.c$881$4_0$489 ==.
;	ebike_app.c: 881: break;
	jp	00108$
	C$ebike_app.c$883$4_0$489 ==.
;	ebike_app.c: 883: case ASSIST_PEDAL_LEVEL2:
00104$:
	C$ebike_app.c$885$4_0$489 ==.
;	ebike_app.c: 885: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[TOUR];
	ld	a, _configuration_variables+44
	ld	_configuration_variables+0, a
	C$ebike_app.c$888$4_0$489 ==.
;	ebike_app.c: 888: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[1];
	ld	a, _configuration_variables+49
	ld	_configuration_variables+18, a
	C$ebike_app.c$891$4_0$489 ==.
;	ebike_app.c: 891: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[2];
	ld	a, _configuration_variables+56
	ld	_configuration_variables+53, a
	C$ebike_app.c$899$4_0$489 ==.
;	ebike_app.c: 899: break;
	jra	00108$
	C$ebike_app.c$901$4_0$489 ==.
;	ebike_app.c: 901: case ASSIST_PEDAL_LEVEL3:
00105$:
	C$ebike_app.c$903$4_0$489 ==.
;	ebike_app.c: 903: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[SPORT];
	ld	a, _configuration_variables+45
	ld	_configuration_variables+0, a
	C$ebike_app.c$906$4_0$489 ==.
;	ebike_app.c: 906: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[2];
	ld	a, _configuration_variables+50
	ld	_configuration_variables+18, a
	C$ebike_app.c$909$4_0$489 ==.
;	ebike_app.c: 909: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[3];
	ld	a, _configuration_variables+57
	ld	_configuration_variables+53, a
	C$ebike_app.c$910$4_0$489 ==.
;	ebike_app.c: 910: break;
	jra	00108$
	C$ebike_app.c$912$4_0$489 ==.
;	ebike_app.c: 912: case ASSIST_PEDAL_LEVEL4:
00106$:
	C$ebike_app.c$914$4_0$489 ==.
;	ebike_app.c: 914: configuration_variables.ui8_assist_level_factor_x10 = configuration_variables.ui8_assist_level_power[TURBO];
	ld	a, _configuration_variables+46
	ld	_configuration_variables+0, a
	C$ebike_app.c$917$4_0$489 ==.
;	ebike_app.c: 917: configuration_variables.ui8_startup_motor_power_boost_assist_level = configuration_variables.ui8_startup_motor_power_boost[3];
	ld	a, _configuration_variables+51
	ld	_configuration_variables+18, a
	C$ebike_app.c$920$4_0$489 ==.
;	ebike_app.c: 920: configuration_variables.ui8_walk_assist_pwm_duty_cycle = configuration_variables.ui8_walk_assist_pwm_duty_cycle_level[4];
	ld	a, _configuration_variables+58
	ld	_configuration_variables+53, a
	C$ebike_app.c$926$3_0$488 ==.
;	ebike_app.c: 926: }
00108$:
	C$ebike_app.c$932$3_0$488 ==.
;	ebike_app.c: 932: if(ui8_assist_level == ASSIST_PEDAL_LEVEL0)
	ld	a, _ui8_assist_level+0
	C$ebike_app.c$950$3_0$488 ==.
;	ebike_app.c: 950: if(ui8_assist_level == ASSIST_PEDAL_LEVEL1)
	ld	a, _ui8_assist_level+0
	cp	a, #0x40
	jreq	00260$
	jp	00130$
00260$:
	C$ebike_app.c$953$4_0$491 ==.
;	ebike_app.c: 953: if(ui8_rx_buffer[1] & 0x01)
	ld	a, _ui8_rx_buffer+1
	srl	a
	jrnc	00127$
	C$ebike_app.c$956$5_0$492 ==.
;	ebike_app.c: 956: if(!ui8_lights_flag)
	tnz	_ui8_lights_flag+0
	jreq	00262$
	jp	00131$
00262$:
	C$ebike_app.c$959$6_0$493 ==.
;	ebike_app.c: 959: if(!ui8_mode_flag)
	tnz	_ui8_mode_flag+0
	jrne	00113$
	C$ebike_app.c$962$7_0$494 ==.
;	ebike_app.c: 962: ui8_mode_flag = 1;
	mov	_ui8_mode_flag+0, #0x01
	C$ebike_app.c$964$7_0$494 ==.
;	ebike_app.c: 964: if(configuration_variables.ui8_offroad_mode == 1)
	ld	a, _configuration_variables+9
	dec	a
	jrne	00110$
	C$ebike_app.c$966$7_0$494 ==.
;	ebike_app.c: 966: configuration_variables.ui8_function_code = STREET_ENABLED_ON_OEM;
	mov	_configuration_variables+36, #0x02
	jra	00111$
00110$:
	C$ebike_app.c$969$7_0$494 ==.
;	ebike_app.c: 969: configuration_variables.ui8_function_code = OFFROAD_ENABLED_ON_OEM;
	mov	_configuration_variables+36, #0x03
00111$:
	C$ebike_app.c$972$7_0$494 ==.
;	ebike_app.c: 972: ui8_lights_counter = 0;
	clr	_ui8_lights_counter+0
00113$:
	C$ebike_app.c$976$6_0$493 ==.
;	ebike_app.c: 976: if(ui8_lights_counter >= DELAY_LIGHTS_ON)
	ld	a, _ui8_lights_counter+0
	cp	a, #0x32
	jrc	00131$
	C$ebike_app.c$984$7_0$495 ==.
;	ebike_app.c: 984: ui8_mode_flag = 0;
	clr	_ui8_mode_flag+0
	jra	00131$
00127$:
	C$ebike_app.c$991$5_0$496 ==.
;	ebike_app.c: 991: if(!ui8_lights_flag)
	tnz	_ui8_lights_flag+0
	jrne	00124$
	C$ebike_app.c$994$6_0$497 ==.
;	ebike_app.c: 994: if(ui8_mode_flag)
	tnz	_ui8_mode_flag+0
	jreq	00131$
	C$ebike_app.c$997$7_0$498 ==.
;	ebike_app.c: 997: ui8_mode_flag = 0;
	clr	_ui8_mode_flag+0
	C$ebike_app.c$999$7_0$498 ==.
;	ebike_app.c: 999: if(configuration_variables.ui8_offroad_mode == 1)
	ld	a, _configuration_variables+9
	dec	a
	jrne	00119$
	C$ebike_app.c$1002$8_0$499 ==.
;	ebike_app.c: 1002: configuration_variables.ui8_offroad_mode = 0;
	mov	_configuration_variables+9, #0x00
	C$ebike_app.c$1005$8_0$499 ==.
;	ebike_app.c: 1005: configuration_variables.ui8_function_code = STREET_FUNCTION_ENABLED;
	mov	_configuration_variables+36, #0x0d
	jra	00131$
00119$:
	C$ebike_app.c$1010$8_0$500 ==.
;	ebike_app.c: 1010: configuration_variables.ui8_offroad_mode = 1;
	mov	_configuration_variables+9, #0x01
	C$ebike_app.c$1013$8_0$500 ==.
;	ebike_app.c: 1013: configuration_variables.ui8_function_code = OFFROAD_FUNCTION_ENABLED;
	mov	_configuration_variables+36, #0x0c
	jra	00131$
00124$:
	C$ebike_app.c$1021$6_0$501 ==.
;	ebike_app.c: 1021: ui8_lights_flag = 0;
	clr	_ui8_lights_flag+0
	jra	00131$
00130$:
	C$ebike_app.c$1028$4_0$502 ==.
;	ebike_app.c: 1028: ui8_mode_flag = 0;
	clr	_ui8_mode_flag+0
00131$:
	C$ebike_app.c$1035$3_0$488 ==.
;	ebike_app.c: 1035: if(ui8_assist_level == ASSIST_PEDAL_LEVEL2)
	ld	a, _ui8_assist_level+0
	C$ebike_app.c$1053$3_0$488 ==.
;	ebike_app.c: 1053: if(ui8_assist_level == ASSIST_PEDAL_LEVEL3)
	ld	a, _ui8_assist_level+0
	C$ebike_app.c$1070$3_0$488 ==.
;	ebike_app.c: 1070: if(ui8_assist_level == ASSIST_PEDAL_LEVEL4)
	ld	a, _ui8_assist_level+0
	C$ebike_app.c$1144$3_0$488 ==.
;	ebike_app.c: 1144: ui8_walk_assist_current_per_cent = 0;
	clr	_ui8_walk_assist_current_per_cent+0
	C$ebike_app.c$1148$3_0$488 ==.
;	ebike_app.c: 1148: ebike_app_set_battery_max_current(configuration_variables.ui8_battery_max_current);
	ld	a, _configuration_variables+1
	push	a
	call	_ebike_app_set_battery_max_current
	pop	a
	C$ebike_app.c$1151$3_0$488 ==.
;	ebike_app.c: 1151: ui32_temp = ((uint32_t) configuration_variables.ui16_battery_low_voltage_cut_off_x10 << 8) / ((uint32_t) ADC8BITS_BATTERY_VOLTAGE_PER_ADC_STEP_INVERSE_X256);
	ldw	y, _configuration_variables+3
	clrw	x
	clr	a
	ld	xh, a
	push	#0x58
	push	#0x00
	push	#0x00
	push	#0x00
	ld	a, xh
	push	a
	pushw	y
	ld	a, xl
	push	a
	call	__divulong
	addw	sp, #8
	C$ebike_app.c$1152$1_0$484 ==.
;	ebike_app.c: 1152: ui32_temp /= 10;
	push	#0x0a
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	C$ebike_app.c$1153$3_0$488 ==.
;	ebike_app.c: 1153: motor_set_adc_battery_voltage_cut_off((uint8_t) ui32_temp);
	ld	a, xl
	push	a
	call	_motor_set_adc_battery_voltage_cut_off
	pop	a
	C$ebike_app.c$1164$3_1$506 ==.
;	ebike_app.c: 1164: ui16_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_0);
	push	#0x07
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	clrw	x
	ld	xl, a
	ldw	(0x01, sp), x
	C$ebike_app.c$1165$3_1$506 ==.
;	ebike_app.c: 1165: ui8_temp = FLASH_ReadByte(ADDR_WHEEL_PERIMETER_1);
	push	#0x08
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	C$ebike_app.c$1166$3_1$506 ==.
;	ebike_app.c: 1166: ui16_temp += (((uint16_t) ui8_temp << 8) & 0xFF00);
	ld	xh, a
	clr	a
	ld	xl, a
	addw	x, (0x01, sp)
	C$ebike_app.c$1167$3_1$506 ==.
;	ebike_app.c: 1167: configuration_variables.ui16_wheel_perimeter = ui16_temp;
	ldw	_configuration_variables+5, x
	C$ebike_app.c$1182$3_1$506 ==.
;	ebike_app.c: 1182: if(configuration_variables.ui8_offroad_mode)
	ld	a, _configuration_variables+9
	jreq	00133$
	C$ebike_app.c$1183$3_1$506 ==.
;	ebike_app.c: 1183: configuration_variables.ui8_wheel_max_speed = FLASH_ReadByte(ADDR_WHEEL_MAX_SPEED);
	push	#0x09
	push	#0x40
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	ld	_configuration_variables+12, a
00133$:
	C$ebike_app.c$1192$3_1$506 ==.
;	ebike_app.c: 1192: ui8_received_package_flag = 0;
	clr	_ui8_received_package_flag+0
00135$:
	C$ebike_app.c$1196$2_0$485 ==.
;	ebike_app.c: 1196: UART2->CR2 |= (1 << 5);
	bset	21061, #5
00140$:
	C$ebike_app.c$1199$1_0$484 ==.
;	ebike_app.c: 1199: }
	addw	sp, #2
	C$ebike_app.c$1199$1_0$484 ==.
	XFebike_app$uart_receive_package$0$0 ==.
	ret
	Febike_app$uart_send_package$0$0 ==.
	C$ebike_app.c$1204$1_0$508 ==.
;	ebike_app.c: 1204: static void uart_send_package(void)
;	-----------------------------------------
;	 function uart_send_package
;	-----------------------------------------
_uart_send_package:
	sub	sp, #2
	C$ebike_app.c$1212$1_0$508 ==.
;	ebike_app.c: 1212: ui8_tx_buffer[0] = TX_STX;
	mov	_ui8_tx_buffer+0, #0x43
	C$ebike_app.c$1215$1_0$508 ==.
;	ebike_app.c: 1215: configuration_variables.ui8_fault_code = NO_FAULT;
	mov	_configuration_variables+37, #0x00
	C$ebike_app.c$1218$1_0$508 ==.
;	ebike_app.c: 1218: configuration_variables.ui8_working_status &= 0xFE; // bit0 = 0 (battery normal)
	ld	a, _configuration_variables+35
	and	a, #0xfe
	ld	_configuration_variables+35, a
	C$ebike_app.c$1221$1_0$508 ==.
;	ebike_app.c: 1221: switch(ui8_battery_state_of_charge)
	ld	a, _ui8_battery_state_of_charge+0
	cp	a, #0x06
	jrule	00197$
	jp	00108$
00197$:
	clrw	x
	ld	xl, a
	sllw	x
	ldw	x, (#00198$, x)
	jp	(x)
00198$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	.dw	#00106$
	.dw	#00107$
	C$ebike_app.c$1223$2_0$509 ==.
;	ebike_app.c: 1223: case 0:
00101$:
	C$ebike_app.c$1224$2_0$509 ==.
;	ebike_app.c: 1224: configuration_variables.ui8_working_status |= 0x01; // bit0 = 1 (battery undervoltage)
	ld	a, _configuration_variables+35
	or	a, #0x01
	ld	_configuration_variables+35, a
	C$ebike_app.c$1225$2_0$509 ==.
;	ebike_app.c: 1225: ui8_tx_buffer[1] = 0x00;
	mov	_ui8_tx_buffer+1, #0x00
	C$ebike_app.c$1226$2_0$509 ==.
;	ebike_app.c: 1226: break;
	jp	00108$
	C$ebike_app.c$1228$2_0$509 ==.
;	ebike_app.c: 1228: case 1:
00102$:
	C$ebike_app.c$1229$2_0$509 ==.
;	ebike_app.c: 1229: ui8_tx_buffer[1] = 0x00; // Battery 0/4 (empty and blinking)
	mov	_ui8_tx_buffer+1, #0x00
	C$ebike_app.c$1230$2_0$509 ==.
;	ebike_app.c: 1230: break;
	jra	00108$
	C$ebike_app.c$1232$2_0$509 ==.
;	ebike_app.c: 1232: case 2:
00103$:
	C$ebike_app.c$1233$2_0$509 ==.
;	ebike_app.c: 1233: ui8_tx_buffer[1] = 0x02; // Battery 1/4
	mov	_ui8_tx_buffer+1, #0x02
	C$ebike_app.c$1234$2_0$509 ==.
;	ebike_app.c: 1234: break;
	jra	00108$
	C$ebike_app.c$1236$2_0$509 ==.
;	ebike_app.c: 1236: case 3:
00104$:
	C$ebike_app.c$1237$2_0$509 ==.
;	ebike_app.c: 1237: ui8_tx_buffer[1] = 0x06; // Battery 2/4
	mov	_ui8_tx_buffer+1, #0x06
	C$ebike_app.c$1238$2_0$509 ==.
;	ebike_app.c: 1238: break;
	jra	00108$
	C$ebike_app.c$1240$2_0$509 ==.
;	ebike_app.c: 1240: case 4:
00105$:
	C$ebike_app.c$1241$2_0$509 ==.
;	ebike_app.c: 1241: ui8_tx_buffer[1] = 0x09; // Battery 3/4
	mov	_ui8_tx_buffer+1, #0x09
	C$ebike_app.c$1242$2_0$509 ==.
;	ebike_app.c: 1242: break;
	jra	00108$
	C$ebike_app.c$1244$2_0$509 ==.
;	ebike_app.c: 1244: case 5:
00106$:
	C$ebike_app.c$1245$2_0$509 ==.
;	ebike_app.c: 1245: ui8_tx_buffer[1] = 0x0C; // Battery 4/4 (full)
	mov	_ui8_tx_buffer+1, #0x0c
	C$ebike_app.c$1246$2_0$509 ==.
;	ebike_app.c: 1246: break;
	jra	00108$
	C$ebike_app.c$1248$2_0$509 ==.
;	ebike_app.c: 1248: case 6:
00107$:
	C$ebike_app.c$1249$2_0$509 ==.
;	ebike_app.c: 1249: ui8_tx_buffer[1] = 0x0C; // Battery 4/4 (full)
	mov	_ui8_tx_buffer+1, #0x0c
	C$ebike_app.c$1250$2_0$509 ==.
;	ebike_app.c: 1250: configuration_variables.ui8_fault_code = OVERVOLTAGE; // Fault overvoltage
	mov	_configuration_variables+37, #0x08
	C$ebike_app.c$1252$1_0$508 ==.
;	ebike_app.c: 1252: }
00108$:
	C$ebike_app.c$1334$1_0$508 ==.
;	ebike_app.c: 1334: ui8_tx_buffer[3] = 0x46;
	mov	_ui8_tx_buffer+3, #0x46
	C$ebike_app.c$1335$1_0$508 ==.
;	ebike_app.c: 1335: ui8_tx_buffer[4] = 0x46;
	mov	_ui8_tx_buffer+4, #0x46
	C$ebike_app.c$1338$1_0$508 ==.
;	ebike_app.c: 1338: if(ui8_system_state & ERROR_MOTOR_BLOCKED)
	ld	a, _ui8_system_state+0
	srl	a
	jrnc	00121$
	C$ebike_app.c$1340$2_0$510 ==.
;	ebike_app.c: 1340: configuration_variables.ui8_fault_code = EBIKE_WHEEL_BLOCKED;
	mov	_configuration_variables+37, #0x04
	jra	00122$
00121$:
	C$ebike_app.c$1342$1_0$508 ==.
;	ebike_app.c: 1342: else if(ui8_overtemperature)
	tnz	_ui8_overtemperature+0
	jreq	00118$
	C$ebike_app.c$1344$2_0$511 ==.
;	ebike_app.c: 1344: if(ui8_overtemperature == 2)
	ld	a, _ui8_overtemperature+0
	cp	a, #0x02
	jrne	00115$
	C$ebike_app.c$1346$3_0$512 ==.
;	ebike_app.c: 1346: configuration_variables.ui8_fault_code = OVERTEMPERATURE;    
	mov	_configuration_variables+37, #0x06
	jra	00122$
00115$:
	C$ebike_app.c$1351$3_0$513 ==.
;	ebike_app.c: 1351: if(ui8_overtemperature_counter > 2)
	ld	a, _uart_send_package_ui8_overtemperature_counter_196608_513+0
	cp	a, #0x02
	jrule	00110$
	C$ebike_app.c$1353$4_0$514 ==.
;	ebike_app.c: 1353: configuration_variables.ui8_fault_code = OVERTEMPERATURE;
	mov	_configuration_variables+37, #0x06
	jra	00111$
00110$:
	C$ebike_app.c$1357$4_0$515 ==.
;	ebike_app.c: 1357: configuration_variables.ui8_fault_code = NO_FAULT;
	mov	_configuration_variables+37, #0x00
00111$:
	C$ebike_app.c$1360$3_0$513 ==.
;	ebike_app.c: 1360: if(++ui8_overtemperature_counter > 5) ui8_overtemperature_counter = 0;
	inc	_uart_send_package_ui8_overtemperature_counter_196608_513+0
	ld	a, _uart_send_package_ui8_overtemperature_counter_196608_513+0
	cp	a, #0x05
	jrule	00122$
	clr	_uart_send_package_ui8_overtemperature_counter_196608_513+0
	jra	00122$
00118$:
	C$ebike_app.c$1365$2_0$516 ==.
;	ebike_app.c: 1365: configuration_variables.ui8_fault_code = NO_FAULT;
	mov	_configuration_variables+37, #0x00
00122$:
	C$ebike_app.c$1369$1_0$508 ==.
;	ebike_app.c: 1369: if(configuration_variables.ui8_function_code != NO_FUNCTION)
	ld	a, _configuration_variables+36
	jreq	00127$
	C$ebike_app.c$1372$2_0$517 ==.
;	ebike_app.c: 1372: if(configuration_variables.ui8_function_code > FUNCTION_CODE_RANGE)
	ld	a, _configuration_variables+36
	cp	a, #0x09
	jrule	00124$
	C$ebike_app.c$1374$2_0$517 ==.
;	ebike_app.c: 1374: ui8_tx_buffer[5] = configuration_variables.ui8_fault_code;
	ld	a, _configuration_variables+37
	ld	_ui8_tx_buffer+5, a
	jra	00128$
00124$:
	C$ebike_app.c$1376$2_0$517 ==.
;	ebike_app.c: 1376: ui8_tx_buffer[5] = configuration_variables.ui8_function_code;
	ld	a, _configuration_variables+36
	ld	_ui8_tx_buffer+5, a
	jra	00128$
00127$:
	C$ebike_app.c$1381$2_0$518 ==.
;	ebike_app.c: 1381: ui8_tx_buffer[5] = configuration_variables.ui8_fault_code;
	ld	a, _configuration_variables+37
	ld	_ui8_tx_buffer+5, a
00128$:
	C$ebike_app.c$1385$1_0$508 ==.
;	ebike_app.c: 1385: if(ui16_oem_wheel_speed == 0)
	ldw	x, _ui16_oem_wheel_speed+0
	jrne	00130$
	C$ebike_app.c$1387$2_0$519 ==.
;	ebike_app.c: 1387: ui8_tx_buffer[6] = 0x07;
	mov	_ui8_tx_buffer+6, #0x07
	C$ebike_app.c$1388$2_0$519 ==.
;	ebike_app.c: 1388: ui8_tx_buffer[7] = 0x07;
	mov	_ui8_tx_buffer+7, #0x07
	C$ebike_app.c$1392$2_0$519 ==.
;	ebike_app.c: 1392: configuration_variables.ui8_working_status &= 0x7F;
	ld	a, _configuration_variables+35
	and	a, #0x7f
	ld	_configuration_variables+35, a
	jra	00131$
00130$:
	C$ebike_app.c$1397$2_0$520 ==.
;	ebike_app.c: 1397: ui8_tx_buffer[6] = (uint8_t) (ui16_oem_wheel_speed & 0xFF);
	ld	a, _ui16_oem_wheel_speed+1
	ld	_ui8_tx_buffer+6, a
	C$ebike_app.c$1398$2_0$520 ==.
;	ebike_app.c: 1398: ui8_tx_buffer[7] = (uint8_t) (ui16_oem_wheel_speed >> 8);
	ld	a, _ui16_oem_wheel_speed+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	_ui8_tx_buffer+7, a
	C$ebike_app.c$1402$2_0$520 ==.
;	ebike_app.c: 1402: configuration_variables.ui8_working_status |= 0x80;
	ld	a, _configuration_variables+35
	or	a, #0x80
	ld	_configuration_variables+35, a
00131$:
	C$ebike_app.c$1411$1_0$508 ==.
;	ebike_app.c: 1411: if(configuration_variables.ui8_working_status & 0xC0)
	ld	a, _configuration_variables+35
	bcp	a, #0xc0
	jreq	00133$
	C$ebike_app.c$1414$2_0$521 ==.
;	ebike_app.c: 1414: configuration_variables.ui8_working_status |= 0x04;
	ld	a, _configuration_variables+35
	or	a, #0x04
	ld	_configuration_variables+35, a
	jra	00134$
00133$:
	C$ebike_app.c$1419$2_0$522 ==.
;	ebike_app.c: 1419: configuration_variables.ui8_working_status &= 0xFB;
	ld	a, _configuration_variables+35
	and	a, #0xfb
	ld	_configuration_variables+35, a
00134$:
	C$ebike_app.c$1424$1_0$508 ==.
;	ebike_app.c: 1424: ui8_tx_buffer[2] = (configuration_variables.ui8_working_status & 0x1F);
	ld	a, _configuration_variables+35
	and	a, #0x1f
	ld	_ui8_tx_buffer+2, a
	C$ebike_app.c$1427$1_0$508 ==.
;	ebike_app.c: 1427: configuration_variables.ui8_working_status &= 0x3B;	
	ld	a, _configuration_variables+35
	and	a, #0x3b
	ld	_configuration_variables+35, a
	C$ebike_app.c$1430$1_0$508 ==.
;	ebike_app.c: 1430: ui8_tx_check_code = 0x00;
	clr	a
	ld	yl, a
	C$ebike_app.c$1431$2_0$508 ==.
;	ebike_app.c: 1431: for(ui8_i = 0; ui8_i < TX_CHECK_CODE; ui8_i++)
	clr	a
00137$:
	C$ebike_app.c$1433$3_0$524 ==.
;	ebike_app.c: 1433: ui8_tx_check_code += ui8_tx_buffer[ui8_i];
	clrw	x
	ld	xl, a
	addw	x, #(_ui8_tx_buffer + 0)
	push	a
	ld	a, (x)
	ld	(0x03, sp), a
	pop	a
	addw	y, (1, sp)
	C$ebike_app.c$1431$2_0$523 ==.
;	ebike_app.c: 1431: for(ui8_i = 0; ui8_i < TX_CHECK_CODE; ui8_i++)
	inc	a
	cp	a, #0x08
	jrc	00137$
	C$ebike_app.c$1435$1_0$508 ==.
;	ebike_app.c: 1435: ui8_tx_buffer[TX_CHECK_CODE] = ui8_tx_check_code;
	ldw	x, #(_ui8_tx_buffer + 8)
	ld	a, yl
	ld	(x), a
	C$ebike_app.c$1438$2_0$508 ==.
;	ebike_app.c: 1438: for(ui8_i = 0; ui8_i < UART_TX_BUFFER_LEN; ui8_i++)
	clr	(0x02, sp)
00139$:
	C$ebike_app.c$1440$3_0$526 ==.
;	ebike_app.c: 1440: putchar(ui8_tx_buffer[ui8_i]);
	clrw	x
	ld	a, (0x02, sp)
	ld	xl, a
	addw	x, #(_ui8_tx_buffer + 0)
	ld	a, (x)
	clrw	x
	ld	xl, a
	pushw	x
	call	_putchar
	addw	sp, #2
	C$ebike_app.c$1438$2_0$525 ==.
;	ebike_app.c: 1438: for(ui8_i = 0; ui8_i < UART_TX_BUFFER_LEN; ui8_i++)
	inc	(0x02, sp)
	ld	a, (0x02, sp)
	cp	a, #0x09
	jrc	00139$
	C$ebike_app.c$1443$2_0$508 ==.
;	ebike_app.c: 1443: }
	addw	sp, #2
	C$ebike_app.c$1443$2_0$508 ==.
	XFebike_app$uart_send_package$0$0 ==.
	ret
	Febike_app$ebike_app_set_target_adc_battery_max_current$0$0 ==.
	C$ebike_app.c$1448$2_0$528 ==.
;	ebike_app.c: 1448: static void ebike_app_set_target_adc_battery_max_current(uint8_t ui8_value) // each 1 unit = 0.625 amps
;	-----------------------------------------
;	 function ebike_app_set_target_adc_battery_max_current
;	-----------------------------------------
_ebike_app_set_target_adc_battery_max_current:
	C$ebike_app.c$1451$1_0$528 ==.
;	ebike_app.c: 1451: if(ui8_value > ui8_adc_battery_current_max) ui8_value = ui8_adc_battery_current_max;
	ld	a, (0x03, sp)
	cp	a, _ui8_adc_battery_current_max+0
	jrule	00102$
	ld	a, _ui8_adc_battery_current_max+0
	ld	(0x03, sp), a
00102$:
	C$ebike_app.c$1453$1_0$528 ==.
;	ebike_app.c: 1453: ui8_adc_target_battery_max_current = ui8_adc_battery_current_offset + ui8_value;
	ld	a, _ui8_adc_battery_current_offset+0
	add	a, (0x03, sp)
	ld	_ui8_adc_target_battery_max_current+0, a
	C$ebike_app.c$1454$1_0$528 ==.
;	ebike_app.c: 1454: }
	C$ebike_app.c$1454$1_0$528 ==.
	XFebike_app$ebike_app_set_target_adc_battery_max_current$0$0 ==.
	ret
	Febike_app$ebike_app_set_target_adc_motor_max_current$0$0 ==.
	C$ebike_app.c$1459$1_0$530 ==.
;	ebike_app.c: 1459: static void ebike_app_set_target_adc_motor_max_current(uint8_t ui8_value) // each 1 unit = 0.625 amps
;	-----------------------------------------
;	 function ebike_app_set_target_adc_motor_max_current
;	-----------------------------------------
_ebike_app_set_target_adc_motor_max_current:
	C$ebike_app.c$1462$1_0$530 ==.
;	ebike_app.c: 1462: if(ui8_value > ui8_adc_motor_current_max) ui8_value = ui8_adc_motor_current_max;
	ld	a, (0x03, sp)
	cp	a, _ui8_adc_motor_current_max+0
	jrule	00102$
	ld	a, _ui8_adc_motor_current_max+0
	ld	(0x03, sp), a
00102$:
	C$ebike_app.c$1464$1_0$530 ==.
;	ebike_app.c: 1464: ui8_adc_target_motor_max_current = ui8_value;
	ld	a, (0x03, sp)
	ld	_ui8_adc_target_motor_max_current+0, a
	C$ebike_app.c$1465$1_0$530 ==.
;	ebike_app.c: 1465: }
	C$ebike_app.c$1465$1_0$530 ==.
	XFebike_app$ebike_app_set_target_adc_motor_max_current$0$0 ==.
	ret
	Febike_app$ebike_app_set_battery_max_current$0$0 ==.
	C$ebike_app.c$1470$1_0$532 ==.
;	ebike_app.c: 1470: static void ebike_app_set_battery_max_current(uint8_t ui8_value) // in amps
;	-----------------------------------------
;	 function ebike_app_set_battery_max_current
;	-----------------------------------------
_ebike_app_set_battery_max_current:
	C$ebike_app.c$1473$1_0$532 ==.
;	ebike_app.c: 1473: ui8_adc_battery_current_max = ((((uint16_t) ui8_value) << 8) / 160);
	ld	a, (0x03, sp)
	ld	xh, a
	clr	a
	ld	xl, a
	ldw	y, #0x00a0
	divw	x, y
	ld	a, xl
	ld	_ui8_adc_battery_current_max+0, a
	C$ebike_app.c$1475$1_0$532 ==.
;	ebike_app.c: 1475: if(ui8_adc_battery_current_max > ADC_BATTERY_CURRENT_MAX)
	ld	a, _ui8_adc_battery_current_max+0
	cp	a, #0x1c
	jrule	00103$
	C$ebike_app.c$1476$1_0$532 ==.
;	ebike_app.c: 1476: ui8_adc_battery_current_max = ADC_BATTERY_CURRENT_MAX;
	mov	_ui8_adc_battery_current_max+0, #0x1c
00103$:
	C$ebike_app.c$1477$1_0$532 ==.
;	ebike_app.c: 1477: }
	C$ebike_app.c$1477$1_0$532 ==.
	XFebike_app$ebike_app_set_battery_max_current$0$0 ==.
	ret
	Febike_app$ebike_app_set_motor_max_current$0$0 ==.
	C$ebike_app.c$1482$1_0$534 ==.
;	ebike_app.c: 1482: static void ebike_app_set_motor_max_current(uint8_t ui8_value) // in amps
;	-----------------------------------------
;	 function ebike_app_set_motor_max_current
;	-----------------------------------------
_ebike_app_set_motor_max_current:
	C$ebike_app.c$1485$1_0$534 ==.
;	ebike_app.c: 1485: ui8_adc_motor_current_max = ((((uint16_t) ui8_value) << 8) / 160);
	ld	a, (0x03, sp)
	ld	xh, a
	clr	a
	ld	xl, a
	ldw	y, #0x00a0
	divw	x, y
	ld	a, xl
	ld	_ui8_adc_motor_current_max+0, a
	C$ebike_app.c$1487$1_0$534 ==.
;	ebike_app.c: 1487: if(ui8_adc_motor_current_max > ADC_MOTOR_PHASE_CURRENT_MAX)
	ld	a, _ui8_adc_motor_current_max+0
	cp	a, #0x30
	jrule	00103$
	C$ebike_app.c$1488$1_0$534 ==.
;	ebike_app.c: 1488: ui8_adc_motor_current_max = ADC_MOTOR_PHASE_CURRENT_MAX;
	mov	_ui8_adc_motor_current_max+0, #0x30
00103$:
	C$ebike_app.c$1489$1_0$534 ==.
;	ebike_app.c: 1489: }
	C$ebike_app.c$1489$1_0$534 ==.
	XFebike_app$ebike_app_set_motor_max_current$0$0 ==.
	ret
	Febike_app$ebike_app_set_torque_assist_ratio$0$0 ==.
	C$ebike_app.c$1491$1_0$536 ==.
;	ebike_app.c: 1491: static void ebike_app_set_torque_assist_ratio(void)
;	-----------------------------------------
;	 function ebike_app_set_torque_assist_ratio
;	-----------------------------------------
_ebike_app_set_torque_assist_ratio:
	sub	sp, #2
	C$ebike_app.c$1495$1_0$536 ==.
;	ebike_app.c: 1495: f_torque_assist_ratio = (90.0 * 10.0) / (30.0 / 0.625) / 10.0 * (255.0 / (float)(ui8_adc_torque_sensor_max_value - ui8_adc_torque_sensor_min_value));
	clrw	x
	ld	a, _ui8_adc_torque_sensor_max_value+0
	ld	xl, a
	ld	a, _ui8_adc_torque_sensor_min_value+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	subw	x, (0x01, sp)
	pushw	x
	call	___sint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x7f
	push	#0x43
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0xf0
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	ldw	_f_torque_assist_ratio+2, x
	ldw	_f_torque_assist_ratio+0, y
	C$ebike_app.c$1499$1_0$536 ==.
;	ebike_app.c: 1499: }
	addw	sp, #2
	C$ebike_app.c$1499$1_0$536 ==.
	XFebike_app$ebike_app_set_torque_assist_ratio$0$0 ==.
	ret
	Febike_app$calc_pedal_force_and_torque$0$0 ==.
	C$ebike_app.c$1504$1_0$538 ==.
;	ebike_app.c: 1504: static void calc_pedal_force_and_torque(void)
;	-----------------------------------------
;	 function calc_pedal_force_and_torque
;	-----------------------------------------
_calc_pedal_force_and_torque:
	C$ebike_app.c$1509$1_0$538 ==.
;	ebike_app.c: 1509: ui16_pedal_torque_x100 = (uint16_t) ui8_torque_sensor * (uint16_t) ADC_STEP_PEDAL_TORQUE_X100;
	clrw	x
	ld	a, _ui8_torque_sensor+0
	ld	xl, a
	pushw	x
	push	#0x37
	push	#0x00
	call	__mulint
	addw	sp, #4
	C$ebike_app.c$1510$1_0$538 ==.
;	ebike_app.c: 1510: ui16_pedal_torque_x10 = ui16_pedal_torque_x100 / 10;
	ldw	y, #0x000a
	divw	x, y
	ldw	_ui16_pedal_torque_x10+0, x
	C$ebike_app.c$1569$1_0$538 ==.
;	ebike_app.c: 1569: }
	C$ebike_app.c$1569$1_0$538 ==.
	XFebike_app$calc_pedal_force_and_torque$0$0 ==.
	ret
	Febike_app$calc_wheel_speed$0$0 ==.
	C$ebike_app.c$1574$1_0$540 ==.
;	ebike_app.c: 1574: static void calc_wheel_speed(void)
;	-----------------------------------------
;	 function calc_wheel_speed
;	-----------------------------------------
_calc_wheel_speed:
	sub	sp, #4
	C$ebike_app.c$1577$1_0$540 ==.
;	ebike_app.c: 1577: if(ui16_wheel_speed_sensor_pwm_cycles_ticks < WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS)
	ldw	x, _ui16_wheel_speed_sensor_pwm_cycles_ticks+0
	cpw	x, #0xfffe
	jrc	00123$
	jp	00107$
00123$:
	C$ebike_app.c$1597$1_0$540 ==.
;	ebike_app.c: 1597: f_wheel_speed_x10 = ((float) PWM_CYCLES_SECOND) / ((float) ui16_wheel_speed_sensor_pwm_cycles_ticks); // rps
	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+1
	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	push	#0x00
	push	#0x24
	push	#0x74
	push	#0x46
	call	___fsdiv
	addw	sp, #8
	ldw	_f_wheel_speed_x10+2, x
	ldw	_f_wheel_speed_x10+0, y
	C$ebike_app.c$1598$2_0$541 ==.
;	ebike_app.c: 1598: f_wheel_speed_x10 *= configuration_variables.ui16_wheel_perimeter; // millimeters per second
	ldw	x, _configuration_variables+5
	pushw	x
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	push	_f_wheel_speed_x10+3
	push	_f_wheel_speed_x10+2
	push	_f_wheel_speed_x10+1
	push	_f_wheel_speed_x10+0
	call	___fsmul
	addw	sp, #8
	ldw	_f_wheel_speed_x10+2, x
	ldw	_f_wheel_speed_x10+0, y
	C$ebike_app.c$1599$1_0$540 ==.
;	ebike_app.c: 1599: f_wheel_speed_x10 *= 0.036; // ((3600 / (1000 * 1000)) * 10) kms per hour * 10
	push	_f_wheel_speed_x10+3
	push	_f_wheel_speed_x10+2
	push	_f_wheel_speed_x10+1
	push	_f_wheel_speed_x10+0
	push	#0xbc
	push	#0x74
	push	#0x13
	push	#0x3d
	call	___fsmul
	addw	sp, #8
	ldw	_f_wheel_speed_x10+2, x
	ldw	_f_wheel_speed_x10+0, y
	C$ebike_app.c$1600$1_0$540 ==.
;	ebike_app.c: 1600: ui16_wheel_speed_x10 = (uint16_t) f_wheel_speed_x10;
	push	_f_wheel_speed_x10+3
	push	_f_wheel_speed_x10+2
	push	_f_wheel_speed_x10+1
	push	_f_wheel_speed_x10+0
	call	___fs2uint
	addw	sp, #4
	ldw	_ui16_wheel_speed_x10+0, x
	C$ebike_app.c$1603$2_0$541 ==.
;	ebike_app.c: 1603: if(ui8_display_ready_flag)
	tnz	_ui8_display_ready_flag+0
	jreq	00104$
	C$ebike_app.c$1605$1_0$540 ==.
;	ebike_app.c: 1605: f_oem_wheel_speed = (((float) ui16_wheel_speed_sensor_pwm_cycles_ticks) * 10.0) / ((float) configuration_variables.ui16_oem_wheel_speed_factor);
	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+1
	push	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x20
	push	#0x41
	call	___fsmul
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
	ldw	x, _configuration_variables+41
	pushw	x
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	ldw	_f_oem_wheel_speed+2, x
	ldw	_f_oem_wheel_speed+0, y
	C$ebike_app.c$1606$1_0$540 ==.
;	ebike_app.c: 1606: ui16_oem_wheel_speed = (uint16_t) f_oem_wheel_speed;
	push	_f_oem_wheel_speed+3
	push	_f_oem_wheel_speed+2
	push	_f_oem_wheel_speed+1
	push	_f_oem_wheel_speed+0
	call	___fs2uint
	addw	sp, #4
	ldw	_ui16_oem_wheel_speed+0, x
	jra	00109$
00104$:
	C$ebike_app.c$1612$3_0$543 ==.
;	ebike_app.c: 1612: ui16_oem_wheel_speed = 0;
	clrw	x
	ldw	_ui16_oem_wheel_speed+0, x
	C$ebike_app.c$1615$3_0$543 ==.
;	ebike_app.c: 1615: if(ui8_startup_counter++ >= 40)
	ld	a, _ui8_startup_counter+0
	ld	xl, a
	inc	a
	ld	_ui8_startup_counter+0, a
	ld	a, xl
	cp	a, #0x28
	jrc	00109$
	C$ebike_app.c$1617$4_0$544 ==.
;	ebike_app.c: 1617: ui8_display_ready_flag = 1;
	mov	_ui8_display_ready_flag+0, #0x01
	jra	00109$
00107$:
	C$ebike_app.c$1623$2_0$545 ==.
;	ebike_app.c: 1623: ui16_wheel_speed_x10 = 0;
	clrw	x
	ldw	_ui16_wheel_speed_x10+0, x
	C$ebike_app.c$1624$2_0$545 ==.
;	ebike_app.c: 1624: ui16_oem_wheel_speed = 0;
	clrw	x
	ldw	_ui16_oem_wheel_speed+0, x
00109$:
	C$ebike_app.c$1626$1_0$540 ==.
;	ebike_app.c: 1626: }
	addw	sp, #4
	C$ebike_app.c$1626$1_0$540 ==.
	XFebike_app$calc_wheel_speed$0$0 ==.
	ret
	Febike_app$calc_motor_temperature$0$0 ==.
	C$ebike_app.c$1631$1_0$547 ==.
;	ebike_app.c: 1631: static void calc_motor_temperature(void)
;	-----------------------------------------
;	 function calc_motor_temperature
;	-----------------------------------------
_calc_motor_temperature:
	C$ebike_app.c$1636$1_0$547 ==.
;	ebike_app.c: 1636: ui16_adc_motor_temperatured_accumulated -= ui16_adc_motor_temperatured_accumulated >> READ_MOTOR_TEMPERATURE_FILTER_COEFFICIENT;
	ldw	x, _ui16_adc_motor_temperatured_accumulated+0
	ld	a, #0x10
	div	x, a
	negw	x
	addw	x, _ui16_adc_motor_temperatured_accumulated+0
	ldw	_ui16_adc_motor_temperatured_accumulated+0, x
	C$ebike_app.c$1637$1_0$547 ==.
;	ebike_app.c: 1637: ui16_adc_motor_temperatured_accumulated += ui16_adc_read_throttle_10b();
	call	_ui16_adc_read_throttle_10b
	addw	x, _ui16_adc_motor_temperatured_accumulated+0
	ldw	_ui16_adc_motor_temperatured_accumulated+0, x
	C$ebike_app.c$1638$1_0$547 ==.
;	ebike_app.c: 1638: ui16_adc_motor_temperatured_filtered_10b = ui16_adc_motor_temperatured_accumulated >> READ_MOTOR_TEMPERATURE_FILTER_COEFFICIENT;
	ldw	x, _ui16_adc_motor_temperatured_accumulated+0
	ld	a, #0x10
	div	x, a
	C$ebike_app.c$1640$1_0$547 ==.
;	ebike_app.c: 1640: configuration_variables.ui16_motor_temperature_x2 = (uint16_t) ((float) ui16_adc_motor_temperatured_filtered_10b / 1.024);
	pushw	x
	call	___uint2fs
	addw	sp, #2
	push	#0x6f
	push	#0x12
	push	#0x83
	push	#0x3f
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uint
	addw	sp, #4
	ldw	_configuration_variables+27, x
	C$ebike_app.c$1641$1_0$547 ==.
;	ebike_app.c: 1641: configuration_variables.ui8_motor_temperature = (uint8_t) (configuration_variables.ui16_motor_temperature_x2 >> 1);
	ldw	x, _configuration_variables+27
	srlw	x
	ld	a, xl
	ld	_configuration_variables+29, a
	C$ebike_app.c$1642$1_0$547 ==.
;	ebike_app.c: 1642: }
	C$ebike_app.c$1642$1_0$547 ==.
	XFebike_app$calc_motor_temperature$0$0 ==.
	ret
	Febike_app$calc_filtered_battery_voltage$0$0 ==.
	C$ebike_app.c$1647$1_0$549 ==.
;	ebike_app.c: 1647: static uint16_t calc_filtered_battery_voltage(void)
;	-----------------------------------------
;	 function calc_filtered_battery_voltage
;	-----------------------------------------
_calc_filtered_battery_voltage:
	C$ebike_app.c$1649$1_0$549 ==.
;	ebike_app.c: 1649: uint16_t ui16_batt_voltage_filtered = (uint16_t) motor_get_adc_battery_voltage_filtered_10b() * ADC10BITS_BATTERY_VOLTAGE_PER_ADC_STEP_X512;
	call	_motor_get_adc_battery_voltage_filtered_10b
	pushw	x
	push	#0x2c
	push	#0x00
	call	__mulint
	addw	sp, #4
	ld	a, xh
	C$ebike_app.c$1650$1_0$549 ==.
;	ebike_app.c: 1650: return (ui16_batt_voltage_filtered >> 9);
	clrw	x
	ld	xl, a
	srlw	x
	C$ebike_app.c$1651$1_0$549 ==.
;	ebike_app.c: 1651: }
	C$ebike_app.c$1651$1_0$549 ==.
	XFebike_app$calc_filtered_battery_voltage$0$0 ==.
	ret
	Febike_app$apply_street_mode$0$0 ==.
	C$ebike_app.c$1656$1_0$551 ==.
;	ebike_app.c: 1656: static void apply_street_mode(uint16_t ui16_battery_voltage, uint8_t *ui8_max_speed, uint8_t *ui8_target_current)
;	-----------------------------------------
;	 function apply_street_mode
;	-----------------------------------------
_apply_street_mode:
	sub	sp, #8
	C$ebike_app.c$1658$1_0$551 ==.
;	ebike_app.c: 1658: if(!configuration_variables.ui8_offroad_mode)
	ld	a, _configuration_variables+9
	jrne	00106$
	C$ebike_app.c$1661$2_0$552 ==.
;	ebike_app.c: 1661: *ui8_max_speed = configuration_variables.ui8_street_speed_limit;
	ldw	x, (0x0d, sp)
	ld	a, _configuration_variables+32
	ld	(x), a
	C$ebike_app.c$1663$2_0$552 ==.
;	ebike_app.c: 1663: if((configuration_variables.ui8_street_power_limit_enabled)&&(configuration_variables.ui8_street_power_limit_div25 > 0))
	ld	a, _configuration_variables+33
	jreq	00106$
	ld	a, _configuration_variables+34
	jreq	00106$
	C$ebike_app.c$1665$3_0$553 ==.
;	ebike_app.c: 1665: uint8_t ui8_street_mode_max_current = (uint8_t) (((((uint32_t) configuration_variables.ui8_street_power_limit_div25) * 160) / ((uint32_t) ui16_battery_voltage)) >> 2);
	ld	a, _configuration_variables+34
	clrw	x
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0xa0
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	x, (0x0b, sp)
	ldw	(0x07, sp), x
	clr	(0x06, sp)
	clr	(0x05, sp)
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	srlw	x
	srlw	x
	exgw	x, y
	C$ebike_app.c$1666$3_0$553 ==.
;	ebike_app.c: 1666: *ui8_target_current = ui8_min(ui8_street_mode_max_current, *ui8_target_current);
	ldw	x, (0x0f, sp)
	ld	a, (x)
	pushw	x
	push	a
	ld	a, yl
	push	a
	call	_ui8_min
	addw	sp, #2
	popw	x
	ld	(x), a
00106$:
	C$ebike_app.c$1669$1_0$551 ==.
;	ebike_app.c: 1669: }
	addw	sp, #8
	C$ebike_app.c$1669$1_0$551 ==.
	XFebike_app$apply_street_mode$0$0 ==.
	ret
	Febike_app$apply_speed_limit$0$0 ==.
	C$ebike_app.c$1674$1_0$555 ==.
;	ebike_app.c: 1674: static void apply_speed_limit(uint16_t ui16_speed_x10, uint8_t ui8_max_speed, uint8_t *ui8_target_current)
;	-----------------------------------------
;	 function apply_speed_limit
;	-----------------------------------------
_apply_speed_limit:
	sub	sp, #16
	C$ebike_app.c$1676$1_0$555 ==.
;	ebike_app.c: 1676: *ui8_target_current = (uint8_t) (map((uint32_t) ui16_speed_x10,
	ldw	y, (0x16, sp)
	C$ebike_app.c$1679$1_0$555 ==.
;	ebike_app.c: 1679: (uint32_t) *ui8_target_current,
	ld	a, (y)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	clr	(0x02, sp)
	clr	(0x01, sp)
	C$ebike_app.c$1678$1_0$555 ==.
;	ebike_app.c: 1678: (uint32_t) ((ui8_max_speed * 10) + 20),
	clrw	x
	ld	a, (0x15, sp)
	ld	xl, a
	pushw	x
	sllw	x
	sllw	x
	addw	x, (1, sp)
	sllw	x
	addw	sp, #2
	ldw	(0x0f, sp), x
	addw	x, #0x0014
	ldw	(0x07, sp), x
	ld	a, (0x07, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x06, sp), a
	ld	(0x05, sp), a
	C$ebike_app.c$1677$1_0$555 ==.
;	ebike_app.c: 1677: (uint32_t) ((ui8_max_speed * 10) - 20),
	ldw	x, (0x0f, sp)
	subw	x, #0x0014
	ldw	(0x0b, sp), x
	ld	a, (0x0b, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0a, sp), a
	ld	(0x09, sp), a
	C$ebike_app.c$1676$1_0$555 ==.
;	ebike_app.c: 1676: *ui8_target_current = (uint8_t) (map((uint32_t) ui16_speed_x10,
	ldw	x, (0x13, sp)
	ldw	(0x0f, sp), x
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	pushw	y
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	call	_map
	addw	sp, #20
	ldw	(0x11, sp), x
	ldw	(0x0f, sp), y
	popw	y
	ld	a, (0x10, sp)
	ld	(y), a
	C$ebike_app.c$1681$1_0$555 ==.
;	ebike_app.c: 1681: }
	addw	sp, #16
	C$ebike_app.c$1681$1_0$555 ==.
	XFebike_app$apply_speed_limit$0$0 ==.
	ret
	Febike_app$apply_walk_assist$0$0 ==.
	C$ebike_app.c$1711$1_0$557 ==.
;	ebike_app.c: 1711: static void apply_walk_assist(uint8_t ui8_walk_assist_value, uint8_t *ui8_target_current)
;	-----------------------------------------
;	 function apply_walk_assist
;	-----------------------------------------
_apply_walk_assist:
	sub	sp, #4
	C$ebike_app.c$1714$1_0$557 ==.
;	ebike_app.c: 1714: if(ui8_walk_assist_value)
	tnz	(0x07, sp)
	jreq	00103$
	C$ebike_app.c$1716$2_0$558 ==.
;	ebike_app.c: 1716: uint8_t ui8_temp = (uint8_t) (map((uint32_t) ui8_walk_assist_value,
	clrw	x
	ld	a, _ui8_adc_motor_current_max+0
	ld	xl, a
	clrw	y
	ld	a, (0x07, sp)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	clr	(0x02, sp)
	clr	(0x01, sp)
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	push	#0xff
	clrw	x
	pushw	x
	push	#0x00
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	call	_map
	addw	sp, #20
	ld	a, xl
	C$ebike_app.c$1723$2_0$558 ==.
;	ebike_app.c: 1723: *ui8_target_current = ui8_temp;
	ldw	x, (0x08, sp)
	ld	(x), a
00103$:
	C$ebike_app.c$1725$1_0$557 ==.
;	ebike_app.c: 1725: }
	addw	sp, #4
	C$ebike_app.c$1725$1_0$557 ==.
	XFebike_app$apply_walk_assist$0$0 ==.
	ret
	Febike_app$apply_temperature_limiting$0$0 ==.
	C$ebike_app.c$1730$1_0$560 ==.
;	ebike_app.c: 1730: static void apply_temperature_limiting(uint8_t *ui8_target_current)
;	-----------------------------------------
;	 function apply_temperature_limiting
;	-----------------------------------------
_apply_temperature_limiting:
	sub	sp, #16
	C$ebike_app.c$1733$1_0$560 ==.
;	ebike_app.c: 1733: if(configuration_variables.ui8_motor_temperature_min_value_to_limit >= configuration_variables.ui8_motor_temperature_max_value_to_limit)
	ld	a, _configuration_variables+24
	ld	(0x10, sp), a
	ld	a, _configuration_variables+25
	cp	a, (0x10, sp)
	jrugt	00102$
	C$ebike_app.c$1735$2_0$561 ==.
;	ebike_app.c: 1735: *ui8_target_current = 0;
	ldw	x, (0x13, sp)
	clr	(x)
	C$ebike_app.c$1736$2_0$561 ==.
;	ebike_app.c: 1736: configuration_variables.ui8_temperature_current_limiting_value = 0;
	mov	_configuration_variables+26, #0x00
	jp	00104$
00102$:
	C$ebike_app.c$1741$2_0$562 ==.
;	ebike_app.c: 1741: *ui8_target_current = 
	ldw	y, (0x13, sp)
	C$ebike_app.c$1745$2_0$562 ==.
;	ebike_app.c: 1745: (uint32_t) *ui8_target_current,
	ld	a, (y)
	ld	(0x04, sp), a
	clr	(0x03, sp)
	clr	(0x02, sp)
	clr	(0x01, sp)
	C$ebike_app.c$1744$2_0$562 ==.
;	ebike_app.c: 1744: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_max_value_to_limit) << 1),
	ld	a, _configuration_variables+25
	clrw	x
	ld	xl, a
	sllw	x
	ldw	(0x07, sp), x
	clr	(0x06, sp)
	clr	(0x05, sp)
	C$ebike_app.c$1743$2_0$562 ==.
;	ebike_app.c: 1743: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_min_value_to_limit) << 1),
	ld	a, _configuration_variables+24
	clrw	x
	ld	xl, a
	sllw	x
	ldw	(0x0b, sp), x
	clr	(0x0a, sp)
	clr	(0x09, sp)
	C$ebike_app.c$1742$2_0$562 ==.
;	ebike_app.c: 1742: (uint8_t) (map((uint32_t) configuration_variables.ui16_motor_temperature_x2,
	ldw	x, _configuration_variables+27
	ldw	(0x0f, sp), x
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	pushw	y
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	call	_map
	addw	sp, #20
	ldw	(0x11, sp), x
	ldw	(0x0f, sp), y
	popw	y
	ld	a, (0x10, sp)
	ld	(y), a
	C$ebike_app.c$1749$2_0$562 ==.
;	ebike_app.c: 1749: configuration_variables.ui8_temperature_current_limiting_value = 
	C$ebike_app.c$1752$2_0$562 ==.
;	ebike_app.c: 1752: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_max_value_to_limit) << 1),
	ld	a, _configuration_variables+25
	clrw	x
	ld	xl, a
	sllw	x
	ldw	(0x07, sp), x
	clrw	y
	C$ebike_app.c$1751$2_0$562 ==.
;	ebike_app.c: 1751: (uint32_t) (((uint16_t) configuration_variables.ui8_motor_temperature_min_value_to_limit) << 1),
	ld	a, _configuration_variables+24
	clrw	x
	ld	xl, a
	sllw	x
	ldw	(0x0b, sp), x
	clr	(0x0a, sp)
	clr	(0x09, sp)
	C$ebike_app.c$1750$2_0$562 ==.
;	ebike_app.c: 1750: (uint8_t) (map((uint32_t) configuration_variables.ui16_motor_temperature_x2,
	ldw	x, _configuration_variables+27
	ldw	(0x0f, sp), x
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	push	#0xff
	clrw	x
	pushw	x
	push	#0x00
	ldw	x, (0x0f, sp)
	pushw	x
	pushw	y
	ldw	x, (0x17, sp)
	pushw	x
	ldw	x, (0x17, sp)
	pushw	x
	ldw	x, (0x1f, sp)
	pushw	x
	ldw	x, (0x1f, sp)
	pushw	x
	call	_map
	addw	sp, #20
	ld	a, xl
	ld	_configuration_variables+26, a
00104$:
	C$ebike_app.c$1756$1_0$560 ==.
;	ebike_app.c: 1756: }
	addw	sp, #16
	C$ebike_app.c$1756$1_0$560 ==.
	XFebike_app$apply_temperature_limiting$0$0 ==.
	ret
	Febike_app$boost_run_statemachine$0$0 ==.
	C$ebike_app.c$1761$1_0$564 ==.
;	ebike_app.c: 1761: static void boost_run_statemachine (void)
;	-----------------------------------------
;	 function boost_run_statemachine
;	-----------------------------------------
_boost_run_statemachine:
	sub	sp, #2
	C$ebike_app.c$1763$1_0$564 ==.
;	ebike_app.c: 1763: if(configuration_variables.ui8_startup_motor_power_boost_time > 0)
	ld	a, _configuration_variables+21
	ld	(0x02, sp), a
	jrne	00215$
	jp	00137$
00215$:
	C$ebike_app.c$1765$2_0$565 ==.
;	ebike_app.c: 1765: switch(ui8_startup_boost_state_machine)
	ld	a, _ui8_startup_boost_state_machine+0
	cp	a, #0x00
	jreq	00101$
	cp	a, #0x02
	jreq	00105$
	cp	a, #0x04
	jrne	00223$
	jp	00114$
00223$:
	cp	a, #0x05
	jrne	00226$
	jp	00122$
00226$:
	jp	00137$
	C$ebike_app.c$1768$3_0$566 ==.
;	ebike_app.c: 1768: case BOOST_STATE_BOOST_DISABLED:
00101$:
	C$ebike_app.c$1769$3_0$566 ==.
;	ebike_app.c: 1769: if((ui8_torque_sensor > TORQUE_SENSOR_THRESHOLD_HI)&&(!ui8_brake_is_set))
	ld	a, _ui8_torque_sensor+0
	cp	a, #0x0c
	jrugt	00228$
	jp	00137$
00228$:
	tnz	_ui8_brake_is_set+0
	jreq	00229$
	jp	00137$
00229$:
	C$ebike_app.c$1771$4_0$567 ==.
;	ebike_app.c: 1771: ui8_startup_boost_enable = 1;
	mov	_ui8_startup_boost_enable+0, #0x01
	C$ebike_app.c$1772$4_0$567 ==.
;	ebike_app.c: 1772: ui8_startup_boost_timer = configuration_variables.ui8_startup_motor_power_boost_time;
	ld	a, _configuration_variables+21
	ld	_ui8_startup_boost_timer+0, a
	C$ebike_app.c$1773$4_0$567 ==.
;	ebike_app.c: 1773: ui8_startup_boost_state_machine = BOOST_STATE_BOOST;
	mov	_ui8_startup_boost_state_machine+0, #0x02
	C$ebike_app.c$1775$3_0$566 ==.
;	ebike_app.c: 1775: break;
	jp	00137$
	C$ebike_app.c$1777$3_0$566 ==.
;	ebike_app.c: 1777: case BOOST_STATE_BOOST:
00105$:
	C$ebike_app.c$1779$3_0$566 ==.
;	ebike_app.c: 1779: if(ui8_brake_is_set)
	tnz	_ui8_brake_is_set+0
	jreq	00107$
	C$ebike_app.c$1781$4_0$568 ==.
;	ebike_app.c: 1781: ui8_startup_boost_enable = 0;
	clr	_ui8_startup_boost_enable+0
	C$ebike_app.c$1782$4_0$568 ==.
;	ebike_app.c: 1782: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
	clr	_ui8_startup_boost_state_machine+0
00107$:
	C$ebike_app.c$1786$3_0$566 ==.
;	ebike_app.c: 1786: if(ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)
	ld	a, _ui8_torque_sensor+0
	cp	a, #0x0c
	jrnc	00109$
	C$ebike_app.c$1788$4_0$569 ==.
;	ebike_app.c: 1788: ui8_startup_boost_enable = 0;
	clr	_ui8_startup_boost_enable+0
	C$ebike_app.c$1789$4_0$569 ==.
;	ebike_app.c: 1789: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_WAIT_TO_RESTART;
	mov	_ui8_startup_boost_state_machine+0, #0x05
00109$:
	C$ebike_app.c$1793$3_0$566 ==.
;	ebike_app.c: 1793: if(ui8_startup_boost_timer > 0){ui8_startup_boost_timer--;}
	tnz	_ui8_startup_boost_timer+0
	jreq	00111$
	dec	_ui8_startup_boost_timer+0
00111$:
	C$ebike_app.c$1796$3_0$566 ==.
;	ebike_app.c: 1796: if(ui8_startup_boost_timer == 0)
	tnz	_ui8_startup_boost_timer+0
	jreq	00233$
	jp	00137$
00233$:
	C$ebike_app.c$1798$4_0$571 ==.
;	ebike_app.c: 1798: ui8_startup_boost_state_machine = BOOST_STATE_FADE;
	mov	_ui8_startup_boost_state_machine+0, #0x04
	C$ebike_app.c$1799$4_0$571 ==.
;	ebike_app.c: 1799: ui8_startup_boost_enable = 0;
	clr	_ui8_startup_boost_enable+0
	C$ebike_app.c$1802$4_0$571 ==.
;	ebike_app.c: 1802: ui8_startup_boost_fade_steps = configuration_variables.ui8_startup_motor_power_boost_fade_time;
	ld	a, _configuration_variables+22
	ld	_ui8_startup_boost_fade_steps+0, a
	C$ebike_app.c$1803$4_0$571 ==.
;	ebike_app.c: 1803: ui16_startup_boost_fade_variable_x256 = ((uint16_t) ui8_adc_motor_target_current << 8);
	ld	a, _ui8_adc_motor_target_current+0
	ld	xl, a
	clr	a
	rlwa	x
	ldw	_ui16_startup_boost_fade_variable_x256+0, x
	C$ebike_app.c$1804$4_0$571 ==.
;	ebike_app.c: 1804: ui16_startup_boost_fade_variable_step_amount_x256 = (ui16_startup_boost_fade_variable_x256 / ((uint16_t) ui8_startup_boost_fade_steps));
	clrw	x
	ld	a, _ui8_startup_boost_fade_steps+0
	ld	xl, a
	exgw	x, y
	ldw	x, _ui16_startup_boost_fade_variable_x256+0
	divw	x, y
	ldw	_ui16_startup_boost_fade_variable_step_amount_x256+0, x
	C$ebike_app.c$1805$4_0$571 ==.
;	ebike_app.c: 1805: ui8_startup_boost_fade_enable = 1;
	mov	_ui8_startup_boost_fade_enable+0, #0x01
	C$ebike_app.c$1807$3_0$566 ==.
;	ebike_app.c: 1807: break;
	jp	00137$
	C$ebike_app.c$1809$3_0$566 ==.
;	ebike_app.c: 1809: case BOOST_STATE_FADE:
00114$:
	C$ebike_app.c$1811$3_0$566 ==.
;	ebike_app.c: 1811: if(ui8_brake_is_set)
	tnz	_ui8_brake_is_set+0
	jreq	00116$
	C$ebike_app.c$1813$4_0$572 ==.
;	ebike_app.c: 1813: ui8_startup_boost_fade_enable = 0;
	clr	_ui8_startup_boost_fade_enable+0
	C$ebike_app.c$1814$4_0$572 ==.
;	ebike_app.c: 1814: ui8_startup_boost_fade_steps = 0;
	clr	_ui8_startup_boost_fade_steps+0
	C$ebike_app.c$1815$4_0$572 ==.
;	ebike_app.c: 1815: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
	clr	_ui8_startup_boost_state_machine+0
00116$:
	C$ebike_app.c$1818$3_0$566 ==.
;	ebike_app.c: 1818: if(ui8_startup_boost_fade_steps > 0){ui8_startup_boost_fade_steps--;}
	tnz	_ui8_startup_boost_fade_steps+0
	jreq	00118$
	dec	_ui8_startup_boost_fade_steps+0
00118$:
	C$ebike_app.c$1821$3_0$566 ==.
;	ebike_app.c: 1821: if((ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)||(ui8_startup_boost_fade_steps == 0))
	ld	a, _ui8_torque_sensor+0
	cp	a, #0x0c
	jrc	00119$
	tnz	_ui8_startup_boost_fade_steps+0
	jreq	00237$
	jp	00137$
00237$:
00119$:
	C$ebike_app.c$1823$4_0$574 ==.
;	ebike_app.c: 1823: ui8_startup_boost_fade_enable = 0;
	clr	_ui8_startup_boost_fade_enable+0
	C$ebike_app.c$1824$4_0$574 ==.
;	ebike_app.c: 1824: ui8_startup_boost_fade_steps = 0;
	clr	_ui8_startup_boost_fade_steps+0
	C$ebike_app.c$1825$4_0$574 ==.
;	ebike_app.c: 1825: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_WAIT_TO_RESTART;
	mov	_ui8_startup_boost_state_machine+0, #0x05
	C$ebike_app.c$1827$3_0$566 ==.
;	ebike_app.c: 1827: break;
	jra	00137$
	C$ebike_app.c$1830$3_0$566 ==.
;	ebike_app.c: 1830: case BOOST_STATE_BOOST_WAIT_TO_RESTART:
00122$:
	C$ebike_app.c$1832$3_0$566 ==.
;	ebike_app.c: 1832: if((configuration_variables.ui8_startup_motor_power_boost_state & 0x01) == 0)
	ld	a, _configuration_variables+19
	srl	a
	jrc	00127$
	C$ebike_app.c$1834$4_0$575 ==.
;	ebike_app.c: 1834: if((ui16_wheel_speed_x10 == 0)&&(ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW))
	ldw	x, _ui16_wheel_speed_x10+0
	jrne	00127$
	ld	a, _ui8_torque_sensor+0
	cp	a, #0x0c
	jrnc	00127$
	C$ebike_app.c$1836$5_0$576 ==.
;	ebike_app.c: 1836: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
	clr	_ui8_startup_boost_state_machine+0
00127$:
	C$ebike_app.c$1840$3_0$566 ==.
;	ebike_app.c: 1840: if((configuration_variables.ui8_startup_motor_power_boost_state & 0x01) > 0)
	ld	a, _configuration_variables+19
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	and	a, #0x01
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0000
	jrsle	00137$
	C$ebike_app.c$1842$4_0$577 ==.
;	ebike_app.c: 1842: if((ui8_torque_sensor < TORQUE_SENSOR_THRESHOLD_LOW)||(ui8_pas_cadence_rpm == 0))
	ld	a, _ui8_torque_sensor+0
	cp	a, #0x0c
	jrc	00128$
	tnz	_ui8_pas_cadence_rpm+0
	jrne	00137$
00128$:
	C$ebike_app.c$1844$5_0$578 ==.
;	ebike_app.c: 1844: ui8_startup_boost_state_machine = BOOST_STATE_BOOST_DISABLED;
	clr	_ui8_startup_boost_state_machine+0
	C$ebike_app.c$1851$1_0$564 ==.
;	ebike_app.c: 1851: }
00137$:
	C$ebike_app.c$1853$1_0$564 ==.
;	ebike_app.c: 1853: }
	addw	sp, #2
	C$ebike_app.c$1853$1_0$564 ==.
	XFebike_app$boost_run_statemachine$0$0 ==.
	ret
	Febike_app$apply_boost$0$0 ==.
	C$ebike_app.c$1858$1_0$580 ==.
;	ebike_app.c: 1858: static uint8_t apply_boost(uint8_t ui8_pas_cadence, uint8_t ui8_max_current_boost_state, uint8_t *ui8_target_current)
;	-----------------------------------------
;	 function apply_boost
;	-----------------------------------------
_apply_boost:
	C$ebike_app.c$1860$1_0$580 ==.
;	ebike_app.c: 1860: uint8_t ui8_boost_enable = (ui8_startup_boost_enable && configuration_variables.ui8_assist_level_factor_x10 && ui8_pas_cadence > 0) ? 1 : 0;
	tnz	_ui8_startup_boost_enable+0
	jreq	00105$
	ld	a, _configuration_variables+0
	jreq	00105$
	tnz	(0x03, sp)
	jreq	00105$
	clrw	x
	incw	x
	.byte 0x21
00105$:
	clrw	x
00106$:
	ld	a, xl
	C$ebike_app.c$1862$1_0$580 ==.
;	ebike_app.c: 1862: if(ui8_boost_enable)
	tnz	a
	jreq	00102$
	C$ebike_app.c$1864$2_0$581 ==.
;	ebike_app.c: 1864: *ui8_target_current = ui8_max_current_boost_state;
	ldw	y, (0x05, sp)
	ld	a, (0x04, sp)
	ld	(y), a
00102$:
	C$ebike_app.c$1867$1_0$580 ==.
;	ebike_app.c: 1867: return ui8_boost_enable;
	ld	a, xl
	C$ebike_app.c$1868$1_0$580 ==.
;	ebike_app.c: 1868: }
	C$ebike_app.c$1868$1_0$580 ==.
	XFebike_app$apply_boost$0$0 ==.
	ret
	Febike_app$apply_boost_fade_out$0$0 ==.
	C$ebike_app.c$1873$1_0$583 ==.
;	ebike_app.c: 1873: static void apply_boost_fade_out(uint8_t *ui8_target_current)
;	-----------------------------------------
;	 function apply_boost_fade_out
;	-----------------------------------------
_apply_boost_fade_out:
	sub	sp, #2
	C$ebike_app.c$1875$1_0$583 ==.
;	ebike_app.c: 1875: if(ui8_startup_boost_fade_enable)
	tnz	_ui8_startup_boost_fade_enable+0
	jreq	00108$
	C$ebike_app.c$1878$2_0$584 ==.
;	ebike_app.c: 1878: uint16_t ui16_adc_motor_target_current_x256 = ((uint16_t) ui8_adc_motor_target_current) << 8;
	ld	a, _ui8_adc_motor_target_current+0
	ld	xl, a
	clr	a
	rlwa	x
	ldw	(0x01, sp), x
	C$ebike_app.c$1879$2_0$584 ==.
;	ebike_app.c: 1879: if(ui16_startup_boost_fade_variable_x256 > ui16_adc_motor_target_current_x256)
	ldw	x, (0x01, sp)
	cpw	x, _ui16_startup_boost_fade_variable_x256+0
	jrnc	00104$
	C$ebike_app.c$1881$3_0$585 ==.
;	ebike_app.c: 1881: ui16_startup_boost_fade_variable_x256 -= ui16_startup_boost_fade_variable_step_amount_x256;
	ldw	x, _ui16_startup_boost_fade_variable_x256+0
	subw	x, _ui16_startup_boost_fade_variable_step_amount_x256+0
	ldw	_ui16_startup_boost_fade_variable_x256+0, x
	jra	00105$
00104$:
	C$ebike_app.c$1883$2_0$584 ==.
;	ebike_app.c: 1883: else if(ui16_startup_boost_fade_variable_x256 < ui16_adc_motor_target_current_x256)
	ldw	x, (0x01, sp)
	cpw	x, _ui16_startup_boost_fade_variable_x256+0
	jrule	00105$
	C$ebike_app.c$1885$3_0$586 ==.
;	ebike_app.c: 1885: ui16_startup_boost_fade_variable_x256 += ui16_startup_boost_fade_variable_step_amount_x256;
	ldw	x, _ui16_startup_boost_fade_variable_x256+0
	addw	x, _ui16_startup_boost_fade_variable_step_amount_x256+0
	ldw	_ui16_startup_boost_fade_variable_x256+0, x
00105$:
	C$ebike_app.c$1888$2_0$584 ==.
;	ebike_app.c: 1888: *ui8_target_current = (uint8_t) (ui16_startup_boost_fade_variable_x256 >> 8);
	ldw	x, (0x05, sp)
	ld	a, _ui16_startup_boost_fade_variable_x256+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	(x), a
00108$:
	C$ebike_app.c$1890$1_0$583 ==.
;	ebike_app.c: 1890: }
	addw	sp, #2
	C$ebike_app.c$1890$1_0$583 ==.
	XFebike_app$apply_boost_fade_out$0$0 ==.
	ret
	Febike_app$read_pas_cadence$0$0 ==.
	C$ebike_app.c$1895$1_0$588 ==.
;	ebike_app.c: 1895: static void read_pas_cadence(void)
;	-----------------------------------------
;	 function read_pas_cadence
;	-----------------------------------------
_read_pas_cadence:
	C$ebike_app.c$1898$1_0$588 ==.
;	ebike_app.c: 1898: if(ui16_pas_pwm_cycles_ticks >= ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS)||(ui8_pedaling_direction == 0))
	ldw	x, _ui16_pas_pwm_cycles_ticks+0
	cpw	x, #0x249f
	jrnc	00104$
	tnz	_ui8_pedaling_direction+0
	jrne	00105$
00104$:
	C$ebike_app.c$1900$2_0$589 ==.
;	ebike_app.c: 1900: ui8_pas_cadence_rpm = 0;
	clr	_ui8_pas_cadence_rpm+0
	C$ebike_app.c$1901$2_0$589 ==.
;	ebike_app.c: 1901: ui8_pas_backwards_cadence_rpm = 0;
	clr	_ui8_pas_backwards_cadence_rpm+0
	jp	00108$
00105$:
	C$ebike_app.c$1903$1_0$588 ==.
;	ebike_app.c: 1903: else if(ui8_pedaling_direction == 2)
	ld	a, _ui8_pedaling_direction+0
	cp	a, #0x02
	jrne	00102$
	C$ebike_app.c$1905$2_0$590 ==.
;	ebike_app.c: 1905: ui8_pas_cadence_rpm = 0;
	clr	_ui8_pas_cadence_rpm+0
	C$ebike_app.c$1906$1_0$588 ==.
;	ebike_app.c: 1906: ui8_pas_backwards_cadence_rpm = (uint8_t) (60 / (((float) ui16_pas_pwm_cycles_ticks) * ((float) PAS_NUMBER_MAGNETS) * 0.000064));
	push	_ui16_pas_pwm_cycles_ticks+1
	push	_ui16_pas_pwm_cycles_ticks+0
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	push	#0xac
	push	#0xc5
	push	#0xa7
	push	#0x3a
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x70
	push	#0x42
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uchar
	addw	sp, #4
	ld	_ui8_pas_backwards_cadence_rpm+0, a
	jra	00108$
00102$:
	C$ebike_app.c$1910$1_0$588 ==.
;	ebike_app.c: 1910: ui8_pas_cadence_rpm = (uint8_t) (60 / (((float) ui16_pas_pwm_cycles_ticks) * ((float) PAS_NUMBER_MAGNETS) * 0.000064));
	push	_ui16_pas_pwm_cycles_ticks+1
	push	_ui16_pas_pwm_cycles_ticks+0
	call	___uint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	push	#0xac
	push	#0xc5
	push	#0xa7
	push	#0x3a
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x70
	push	#0x42
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uchar
	addw	sp, #4
	ld	_ui8_pas_cadence_rpm+0, a
	C$ebike_app.c$1911$2_0$591 ==.
;	ebike_app.c: 1911: ui8_pas_backwards_cadence_rpm = 0;
	clr	_ui8_pas_backwards_cadence_rpm+0
00108$:
	C$ebike_app.c$1913$1_0$588 ==.
;	ebike_app.c: 1913: }
	C$ebike_app.c$1913$1_0$588 ==.
	XFebike_app$read_pas_cadence$0$0 ==.
	ret
	Febike_app$torque_sensor_read$0$0 ==.
	C$ebike_app.c$1918$1_0$593 ==.
;	ebike_app.c: 1918: static void torque_sensor_read(void)
;	-----------------------------------------
;	 function torque_sensor_read
;	-----------------------------------------
_torque_sensor_read:
	sub	sp, #12
	C$ebike_app.c$1920$1_0$593 ==.
;	ebike_app.c: 1920: uint8_t ui8_adc_torque_sensor = UI8_ADC_TORQUE_SENSOR;
	ld	a, 0x53e8
	ld	xl, a
	C$ebike_app.c$1954$1_0$593 ==.
;	ebike_app.c: 1954: (uint8_t) ui8_adc_torque_sensor_max_value,
	ld	a, _ui8_adc_torque_sensor_max_value+0
	ld	(0x04, sp), a
	clr	(0x03, sp)
	clrw	y
	C$ebike_app.c$1953$1_0$593 ==.
;	ebike_app.c: 1953: (uint8_t) ui8_adc_torque_sensor_min_value,
	ld	a, _ui8_adc_torque_sensor_min_value+0
	ld	(0x08, sp), a
	clr	(0x07, sp)
	clr	(0x06, sp)
	clr	(0x05, sp)
	C$ebike_app.c$1952$1_0$593 ==.
;	ebike_app.c: 1952: ui8_adc_torque_sensor,
	exg	a, xl
	ld	(0x0c, sp), a
	exg	a, xl
	clr	(0x0b, sp)
	clr	(0x0a, sp)
	clr	(0x09, sp)
	push	#0xff
	clrw	x
	pushw	x
	push	#0x00
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	pushw	y
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x1b, sp)
	pushw	x
	ldw	x, (0x1b, sp)
	pushw	x
	call	_map
	addw	sp, #20
	ld	a, xl
	ld	_ui8_torque_sensor_raw+0, a
	C$ebike_app.c$1961$1_0$593 ==.
;	ebike_app.c: 1961: switch(ui8_tstr_state_machine)
	ld	a, _ui8_tstr_state_machine+0
	cp	a, #0x00
	jreq	00101$
	cp	a, #0x02
	jreq	00105$
	jra	00110$
	C$ebike_app.c$1964$2_0$594 ==.
;	ebike_app.c: 1964: case STATE_NO_PEDALLING:
00101$:
	C$ebike_app.c$1965$2_0$594 ==.
;	ebike_app.c: 1965: if((ui8_torque_sensor_raw > 0)&&
	tnz	_ui8_torque_sensor_raw+0
	jreq	00110$
	C$ebike_app.c$1966$2_0$594 ==.
;	ebike_app.c: 1966: (ui16_wheel_speed_x10))
	ldw	x, _ui16_wheel_speed_x10+0
	jreq	00110$
	C$ebike_app.c$1968$3_0$595 ==.
;	ebike_app.c: 1968: ui8_tstr_state_machine = STATE_PEDALLING;
	mov	_ui8_tstr_state_machine+0, #0x02
	C$ebike_app.c$1970$2_0$594 ==.
;	ebike_app.c: 1970: break;
	jra	00110$
	C$ebike_app.c$1973$2_0$594 ==.
;	ebike_app.c: 1973: case STATE_PEDALLING:
00105$:
	C$ebike_app.c$1974$2_0$594 ==.
;	ebike_app.c: 1974: if((ui16_wheel_speed_x10 == 0)&&
	ldw	x, _ui16_wheel_speed_x10+0
	jrne	00110$
	C$ebike_app.c$1975$2_0$594 ==.
;	ebike_app.c: 1975: (ui8_torque_sensor_raw == 0))
	tnz	_ui8_torque_sensor_raw+0
	jrne	00110$
	C$ebike_app.c$1977$3_0$596 ==.
;	ebike_app.c: 1977: ui8_tstr_state_machine = STATE_NO_PEDALLING;
	clr	_ui8_tstr_state_machine+0
	C$ebike_app.c$1983$1_0$593 ==.
;	ebike_app.c: 1983: }			
00110$:
	C$ebike_app.c$1986$1_0$593 ==.
;	ebike_app.c: 1986: if((ui8_tstr_state_machine == STATE_PEDALLING)&&(ui8_pas_cadence_rpm == 0))
	ld	a, _ui8_tstr_state_machine+0
	cp	a, #0x02
	jrne	00112$
	tnz	_ui8_pas_cadence_rpm+0
	jrne	00112$
	C$ebike_app.c$1988$2_0$597 ==.
;	ebike_app.c: 1988: ui8_torque_sensor = 0;
	clr	_ui8_torque_sensor+0
	jra	00115$
00112$:
	C$ebike_app.c$1992$2_0$598 ==.
;	ebike_app.c: 1992: ui8_torque_sensor = ui8_torque_sensor_raw;
	mov	_ui8_torque_sensor+0, _ui8_torque_sensor_raw+0
00115$:
	C$ebike_app.c$1994$1_0$593 ==.
;	ebike_app.c: 1994: }
	addw	sp, #12
	C$ebike_app.c$1994$1_0$593 ==.
	XFebike_app$torque_sensor_read$0$0 ==.
	ret
	Febike_app$throttle_read$0$0 ==.
	C$ebike_app.c$1999$1_0$600 ==.
;	ebike_app.c: 1999: static void throttle_read(void)
;	-----------------------------------------
;	 function throttle_read
;	-----------------------------------------
_throttle_read:
	C$ebike_app.c$2010$1_0$600 ==.
;	ebike_app.c: 2010: ui8_throttle = 0;
	clr	_ui8_throttle+0
	C$ebike_app.c$2012$1_0$600 ==.
;	ebike_app.c: 2012: }
	C$ebike_app.c$2012$1_0$600 ==.
	XFebike_app$throttle_read$0$0 ==.
	ret
	Febike_app$walk_assist_read$0$0 ==.
	C$ebike_app.c$2017$1_0$602 ==.
;	ebike_app.c: 2017: static void walk_assist_read(void)
;	-----------------------------------------
;	 function walk_assist_read
;	-----------------------------------------
_walk_assist_read:
	sub	sp, #4
	C$ebike_app.c$2021$1_0$602 ==.
;	ebike_app.c: 2021: ui8_walk_assist_current_per_cent,
	ld	a, _ui8_walk_assist_current_per_cent+0
	ld	(0x04, sp), a
	clr	(0x03, sp)
	clr	(0x02, sp)
	clr	(0x01, sp)
	push	#0xff
	clrw	x
	pushw	x
	push	#0x00
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	call	_map
	addw	sp, #20
	ld	a, xl
	ld	_ui8_walk_assist+0, a
	C$ebike_app.c$2026$1_0$602 ==.
;	ebike_app.c: 2026: }
	addw	sp, #4
	C$ebike_app.c$2026$1_0$602 ==.
	XFebike_app$walk_assist_read$0$0 ==.
	ret
	G$UART2_IRQHandler$0$0 ==.
	C$ebike_app.c$2034$1_0$604 ==.
;	ebike_app.c: 2034: void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER)
;	-----------------------------------------
;	 function UART2_IRQHandler
;	-----------------------------------------
_UART2_IRQHandler:
	clr	a
	div	x, a
	C$ebike_app.c$2036$1_0$604 ==.
;	ebike_app.c: 2036: if(UART2_GetFlagStatus(UART2_FLAG_RXNE) == SET)
	push	#0x20
	push	#0x00
	call	_UART2_GetFlagStatus
	addw	sp, #2
	dec	a
	jreq	00136$
	jp	00112$
00136$:
	C$ebike_app.c$2038$2_0$605 ==.
;	ebike_app.c: 2038: UART2->SR &= (uint8_t)~(UART2_FLAG_RXNE); // this may be redundant
	ld	a, 0x5240
	and	a, #0xdf
	ld	0x5240, a
	C$ebike_app.c$2040$2_0$605 ==.
;	ebike_app.c: 2040: ui8_byte_received = UART2_ReceiveData8();
	call	_UART2_ReceiveData8
	ld	_ui8_byte_received+0, a
	C$ebike_app.c$2042$2_0$605 ==.
;	ebike_app.c: 2042: switch(ui8_state_machine)
	ld	a, _ui8_state_machine+0
	cp	a, #0x00
	jreq	00101$
	dec	a
	jreq	00105$
	jp	00112$
	C$ebike_app.c$2044$3_0$606 ==.
;	ebike_app.c: 2044: case 0:
00101$:
	C$ebike_app.c$2045$3_0$606 ==.
;	ebike_app.c: 2045: if(ui8_byte_received == RX_STX) // see if we get start package byte
	ld	a, _ui8_byte_received+0
	cp	a, #0x59
	jrne	00103$
	C$ebike_app.c$2047$4_0$607 ==.
;	ebike_app.c: 2047: ui8_rx_buffer[ui8_rx_counter] = ui8_byte_received;
	clrw	x
	ld	a, _ui8_rx_counter+0
	ld	xl, a
	ld	a, _ui8_byte_received+0
	ld	((_ui8_rx_buffer + 0), x), a
	C$ebike_app.c$2048$4_0$607 ==.
;	ebike_app.c: 2048: ui8_rx_counter++;
	inc	_ui8_rx_counter+0
	C$ebike_app.c$2049$4_0$607 ==.
;	ebike_app.c: 2049: ui8_state_machine = 1;
	mov	_ui8_state_machine+0, #0x01
	jra	00112$
00103$:
	C$ebike_app.c$2053$4_0$608 ==.
;	ebike_app.c: 2053: ui8_rx_counter = 0;
	clr	_ui8_rx_counter+0
	C$ebike_app.c$2054$4_0$608 ==.
;	ebike_app.c: 2054: ui8_state_machine = 0;
	clr	_ui8_state_machine+0
	C$ebike_app.c$2056$3_0$606 ==.
;	ebike_app.c: 2056: break;
	jra	00112$
	C$ebike_app.c$2058$3_0$606 ==.
;	ebike_app.c: 2058: case 1:
00105$:
	C$ebike_app.c$2059$3_0$606 ==.
;	ebike_app.c: 2059: ui8_rx_buffer[ui8_rx_counter] = ui8_byte_received;
	clrw	x
	ld	a, _ui8_rx_counter+0
	ld	xl, a
	addw	x, #(_ui8_rx_buffer + 0)
	ld	a, _ui8_byte_received+0
	ld	(x), a
	C$ebike_app.c$2060$3_0$606 ==.
;	ebike_app.c: 2060: ui8_rx_counter++;
	inc	_ui8_rx_counter+0
	C$ebike_app.c$2063$3_0$606 ==.
;	ebike_app.c: 2063: if(ui8_rx_counter > UART_RX_BUFFER_LEN)
	ld	a, _ui8_rx_counter+0
	cp	a, #0x07
	jrule	00112$
	C$ebike_app.c$2065$4_0$609 ==.
;	ebike_app.c: 2065: ui8_rx_counter = 0;
	clr	_ui8_rx_counter+0
	C$ebike_app.c$2066$4_0$609 ==.
;	ebike_app.c: 2066: ui8_state_machine = 0;
	clr	_ui8_state_machine+0
	C$ebike_app.c$2067$4_0$609 ==.
;	ebike_app.c: 2067: ui8_received_package_flag = 1; // signal that we have a full package to be processed
	mov	_ui8_received_package_flag+0, #0x01
	C$ebike_app.c$2068$4_0$609 ==.
;	ebike_app.c: 2068: UART2->CR2 &= ~(1 << 5); // disable UART2 receive interrupt
	bres	21061, #5
	C$ebike_app.c$2074$1_0$604 ==.
;	ebike_app.c: 2074: }
00112$:
	C$ebike_app.c$2076$1_0$604 ==.
;	ebike_app.c: 2076: }
	C$ebike_app.c$2076$1_0$604 ==.
	XG$UART2_IRQHandler$0$0 ==.
	iret
	G$get_configuration_variables$0$0 ==.
	C$ebike_app.c$2081$1_0$611 ==.
;	ebike_app.c: 2081: struct_configuration_variables* get_configuration_variables(void)
;	-----------------------------------------
;	 function get_configuration_variables
;	-----------------------------------------
_get_configuration_variables:
	C$ebike_app.c$2083$1_0$611 ==.
;	ebike_app.c: 2083: return &configuration_variables;
	ldw	x, #(_configuration_variables + 0)
	C$ebike_app.c$2084$1_0$611 ==.
;	ebike_app.c: 2084: }
	C$ebike_app.c$2084$1_0$611 ==.
	XG$get_configuration_variables$0$0 ==.
	ret
	Febike_app$check_system$0$0 ==.
	C$ebike_app.c$2089$1_0$612 ==.
;	ebike_app.c: 2089: void check_system()
;	-----------------------------------------
;	 function check_system
;	-----------------------------------------
_check_system:
	C$ebike_app.c$2095$1_0$612 ==.
;	ebike_app.c: 2095: if(ui8_system_state == ERROR_MOTOR_BLOCKED)
	ld	a, _ui8_system_state+0
	dec	a
	jrne	00110$
	C$ebike_app.c$2098$2_0$613 ==.
;	ebike_app.c: 2098: ui8_motor_blocked_reset_counter++;
	inc	_check_system_ui8_motor_blocked_reset_counter_65536_612+0
	C$ebike_app.c$2101$2_0$613 ==.
;	ebike_app.c: 2101: if(ui8_motor_blocked_reset_counter > MOTOR_BLOCKED_RESET_COUNTER_THRESHOLD)
	ld	a, _check_system_ui8_motor_blocked_reset_counter_65536_612+0
	cp	a, #0x64
	jrule	00112$
	C$ebike_app.c$2104$3_0$614 ==.
;	ebike_app.c: 2104: ui8_system_state = NO_ERROR;
	clr	_ui8_system_state+0
	C$ebike_app.c$2107$3_0$614 ==.
;	ebike_app.c: 2107: ui8_motor_blocked_reset_counter = 0;
	clr	_check_system_ui8_motor_blocked_reset_counter_65536_612+0
	jra	00112$
00110$:
	C$ebike_app.c$2113$2_0$615 ==.
;	ebike_app.c: 2113: if((motor_get_adc_battery_current_filtered_10b() > MOTOR_BLOCKED_BATTERY_CURRENT_THRESHOLD_X5)&&
	call	_motor_get_adc_battery_current_filtered_10b
	cp	a, #0x08
	jrule	00106$
	C$ebike_app.c$2114$2_0$615 ==.
;	ebike_app.c: 2114: (ui16_motor_get_motor_speed_erps() < MOTOR_BLOCKED_ERPS_THRESHOLD))
	call	_ui16_motor_get_motor_speed_erps
	cpw	x, #0x000a
	jrnc	00106$
	C$ebike_app.c$2117$3_0$616 ==.
;	ebike_app.c: 2117: ui8_motor_blocked_counter++;
	inc	_check_system_ui8_motor_blocked_counter_65536_612+0
	C$ebike_app.c$2120$3_0$616 ==.
;	ebike_app.c: 2120: if(ui8_motor_blocked_counter > MOTOR_BLOCKED_COUNTER_THRESHOLD)
	ld	a, _check_system_ui8_motor_blocked_counter_65536_612+0
	cp	a, #0x1e
	jrule	00112$
	C$ebike_app.c$2123$4_0$617 ==.
;	ebike_app.c: 2123: ui8_system_state = ERROR_MOTOR_BLOCKED;
	mov	_ui8_system_state+0, #0x01
	C$ebike_app.c$2126$4_0$617 ==.
;	ebike_app.c: 2126: ui8_motor_blocked_counter = 0;
	clr	_check_system_ui8_motor_blocked_counter_65536_612+0
	jra	00112$
00106$:
	C$ebike_app.c$2132$3_0$618 ==.
;	ebike_app.c: 2132: ui8_motor_blocked_counter = 0;
	clr	_check_system_ui8_motor_blocked_counter_65536_612+0
00112$:
	C$ebike_app.c$2135$1_0$612 ==.
;	ebike_app.c: 2135: }
	C$ebike_app.c$2135$1_0$612 ==.
	XFebike_app$check_system$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
Febike_app$__xinit_ui8_throttle$0_0$0 == .
__xinit__ui8_throttle:
	.db #0x00	; 0
Febike_app$__xinit_ui8_torque_sensor$0_0$0 == .
__xinit__ui8_torque_sensor:
	.db #0x00	; 0
Febike_app$__xinit_ui8_torque_sensor_raw$0_0$0 == .
__xinit__ui8_torque_sensor_raw:
	.db #0x00	; 0
Febike_app$__xinit_f_pedal_torque_sensor_unit$0_0$0 == .
__xinit__f_pedal_torque_sensor_unit:
	.byte #0x3f, #0x0c, #0xcc, #0xcd	;  5.500000e-001
Febike_app$__xinit_ui8_adc_torque_sensor_min_value$0_0$0 == .
__xinit__ui8_adc_torque_sensor_min_value:
	.db #0x00	; 0
Febike_app$__xinit_ui8_adc_torque_sensor_max_value$0_0$0 == .
__xinit__ui8_adc_torque_sensor_max_value:
	.db #0x00	; 0
Febike_app$__xinit_ui8_adc_battery_current_offset$0_0$0 == .
__xinit__ui8_adc_battery_current_offset:
	.db #0x00	; 0
Febike_app$__xinit_ui8_ebike_app_state$0_0$0 == .
__xinit__ui8_ebike_app_state:
	.db #0x01	; 1
Febike_app$__xinit_ui8_adc_target_battery_max_current$0_0$0 == .
__xinit__ui8_adc_target_battery_max_current:
	.db #0x00	; 0
Febike_app$__xinit_ui8_adc_target_motor_max_current$0_0$0 == .
__xinit__ui8_adc_target_motor_max_current:
	.db #0x00	; 0
Febike_app$__xinit_ui8_adc_battery_current_max$0_0$0 == .
__xinit__ui8_adc_battery_current_max:
	.db #0x00	; 0
Febike_app$__xinit_ui8_adc_motor_current_max$0_0$0 == .
__xinit__ui8_adc_motor_current_max:
	.db #0x00	; 0
Febike_app$__xinit_f_torque_assist_ratio$0_0$0 == .
__xinit__f_torque_assist_ratio:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
Febike_app$__xinit_ui8_system_state$0_0$0 == .
__xinit__ui8_system_state:
	.db #0x00	; 0
Febike_app$__xinit_ui16_pas_pwm_cycles_ticks$0_0$0 == .
__xinit__ui16_pas_pwm_cycles_ticks:
	.dw #0x249f
Febike_app$__xinit_ui8_motor_enabled$0_0$0 == .
__xinit__ui8_motor_enabled:
	.db #0x01	; 1
Febike_app$__xinit_ui8_pedaling_direction$0_0$0 == .
__xinit__ui8_pedaling_direction:
	.db #0x00	; 0
Febike_app$__xinit_ui8_pas_direction$0_0$0 == .
__xinit__ui8_pas_direction:
	.db #0x00	; 0
Febike_app$__xinit_ui8_assist_level$0_0$0 == .
__xinit__ui8_assist_level:
	.db #0x00	; 0
Febike_app$__xinit_ui8_pas_cadence_rpm$0_0$0 == .
__xinit__ui8_pas_cadence_rpm:
	.db #0x00	; 0
Febike_app$__xinit_ui8_pas_backwards_cadence_rpm$0_0$0 == .
__xinit__ui8_pas_backwards_cadence_rpm:
	.db #0x00	; 0
Febike_app$__xinit_ui16_pedal_torque_x10$0_0$0 == .
__xinit__ui16_pedal_torque_x10:
	.dw #0x0000
Febike_app$__xinit_ui16_pedal_torque_x_cadence$0_0$0 == .
__xinit__ui16_pedal_torque_x_cadence:
	.dw #0x0000
Febike_app$__xinit_ui16_max_pedal_power_x_emtb_motor_pull_factor$0_0$0 == .
__xinit__ui16_max_pedal_power_x_emtb_motor_pull_factor:
	.dw #0x0000
Febike_app$__xinit_ui8_startup_boost_enable$0_0$0 == .
__xinit__ui8_startup_boost_enable:
	.db #0x00	; 0
Febike_app$__xinit_ui8_startup_boost_fade_enable$0_0$0 == .
__xinit__ui8_startup_boost_fade_enable:
	.db #0x00	; 0
Febike_app$__xinit_ui8_startup_boost_state_machine$0_0$0 == .
__xinit__ui8_startup_boost_state_machine:
	.db #0x00	; 0
Febike_app$__xinit_ui8_startup_boost_timer$0_0$0 == .
__xinit__ui8_startup_boost_timer:
	.db #0x00	; 0
Febike_app$__xinit_ui8_startup_boost_fade_steps$0_0$0 == .
__xinit__ui8_startup_boost_fade_steps:
	.db #0x00	; 0
Febike_app$__xinit_ui16_startup_boost_fade_variable_x256$0_0$0 == .
__xinit__ui16_startup_boost_fade_variable_x256:
	.dw #0x0000
Febike_app$__xinit_ui16_startup_boost_fade_variable_step_amount_x256$0_0$0 == .
__xinit__ui16_startup_boost_fade_variable_step_amount_x256:
	.dw #0x0000
Febike_app$__xinit_ui16_wheel_speed_sensor_pwm_cycles_ticks$0_0$0 == .
__xinit__ui16_wheel_speed_sensor_pwm_cycles_ticks:
	.dw #0x048e
Febike_app$__xinit_f_wheel_speed_x10$0_0$0 == .
__xinit__f_wheel_speed_x10:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
Febike_app$__xinit_ui16_wheel_speed_x10$0_0$0 == .
__xinit__ui16_wheel_speed_x10:
	.dw #0x0000
Febike_app$__xinit_ui32_wheel_speed_sensor_tick_counter$0_0$0 == .
__xinit__ui32_wheel_speed_sensor_tick_counter:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Febike_app$__xinit_f_oem_wheel_speed$0_0$0 == .
__xinit__f_oem_wheel_speed:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
Febike_app$__xinit_ui16_oem_wheel_speed$0_0$0 == .
__xinit__ui16_oem_wheel_speed:
	.dw #0x0000
Febike_app$__xinit_ui8_received_package_flag$0_0$0 == .
__xinit__ui8_received_package_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_rx_counter$0_0$0 == .
__xinit__ui8_rx_counter:
	.db #0x00	; 0
Febike_app$__xinit_ui8_tx_counter$0_0$0 == .
__xinit__ui8_tx_counter:
	.db #0x00	; 0
Febike_app$__xinit_ui8_byte_received$0_0$0 == .
__xinit__ui8_byte_received:
	.db #0x00	; 0
Febike_app$__xinit_ui8_state_machine$0_0$0 == .
__xinit__ui8_state_machine:
	.db #0x00	; 0
Febike_app$__xinit_ui8_tstr_state_machine$0_0$0 == .
__xinit__ui8_tstr_state_machine:
	.db #0x00	; 0
Febike_app$__xinit_ui8_rtst_counter$0_0$0 == .
__xinit__ui8_rtst_counter:
	.db #0x00	; 0
Febike_app$__xinit_ui16_adc_motor_temperatured_accumulated$0_0$0 == .
__xinit__ui16_adc_motor_temperatured_accumulated:
	.dw #0x0000
Febike_app$__xinit_ui8_overtemperature$0_0$0 == .
__xinit__ui8_overtemperature:
	.db #0x00	; 0
Febike_app$__xinit_ui8_adc_battery_target_current$0_0$0 == .
__xinit__ui8_adc_battery_target_current:
	.db #0x00	; 0
Febike_app$__xinit_ui8_adc_motor_target_current$0_0$0 == .
__xinit__ui8_adc_motor_target_current:
	.db #0x00	; 0
Febike_app$__xinit_ui8_brake_is_set$0_0$0 == .
__xinit__ui8_brake_is_set:
	.db #0x00	; 0
Febike_app$__xinit_ui32_battery_voltage_accumulated_x10000$0_0$0 == .
__xinit__ui32_battery_voltage_accumulated_x10000:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Febike_app$__xinit_ui16_battery_current_accumulated_x5$0_0$0 == .
__xinit__ui16_battery_current_accumulated_x5:
	.dw #0x0000
Febike_app$__xinit_ui8_battery_state_of_charge$0_0$0 == .
__xinit__ui8_battery_state_of_charge:
	.db #0x00	; 0
Febike_app$__xinit_f_soft_start_factor$0_0$0 == .
__xinit__f_soft_start_factor:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
Febike_app$__xinit_f_soft_start_factor_old$0_0$0 == .
__xinit__f_soft_start_factor_old:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+000
Febike_app$__xinit_ui16_soft_start_time$0_0$0 == .
__xinit__ui16_soft_start_time:
	.dw #0x0000
Febike_app$__xinit_ui8_timer_counter$0_0$0 == .
__xinit__ui8_timer_counter:
	.db #0x00	; 0
Febike_app$__xinit_ui8_startup_counter$0_0$0 == .
__xinit__ui8_startup_counter:
	.db #0x00	; 0
Febike_app$__xinit_ui8_lights_counter$0_0$0 == .
__xinit__ui8_lights_counter:
	.db #0x00	; 0
Febike_app$__xinit_ui16_walk_assist_delay_off$0_0$0 == .
__xinit__ui16_walk_assist_delay_off:
	.dw #0x0000
Febike_app$__xinit_ui8_walk_assist_delay_off_flag$0_0$0 == .
__xinit__ui8_walk_assist_delay_off_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_display_ready_flag$0_0$0 == .
__xinit__ui8_display_ready_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_enable_walk_assist$0_0$0 == .
__xinit__ui8_enable_walk_assist:
	.db #0x00	; 0
Febike_app$__xinit_ui8_walk_assist_flag$0_0$0 == .
__xinit__ui8_walk_assist_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_walk_assist$0_0$0 == .
__xinit__ui8_walk_assist:
	.db #0x00	; 0
Febike_app$__xinit_ui8_walk_assist_current_per_cent$0_0$0 == .
__xinit__ui8_walk_assist_current_per_cent:
	.db #0x00	; 0
Febike_app$__xinit_ui8_walk_assist_start$0_0$0 == .
__xinit__ui8_walk_assist_start:
	.db #0x00	; 0
Febike_app$__xinit_ui8_walk_assist_pwm$0_0$0 == .
__xinit__ui8_walk_assist_pwm:
	.db #0x00	; 0
Febike_app$__xinit_ui8_walk_assist_pwm_step$0_0$0 == .
__xinit__ui8_walk_assist_pwm_step:
	.db #0x00	; 0
Febike_app$__xinit_ui8_default_flag$0_0$0 == .
__xinit__ui8_default_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_lights_flag$0_0$0 == .
__xinit__ui8_lights_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_mode_flag$0_0$0 == .
__xinit__ui8_mode_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_boost_flag$0_0$0 == .
__xinit__ui8_boost_flag:
	.db #0x00	; 0
Febike_app$__xinit_ui8_emtb_flag$0_0$0 == .
__xinit__ui8_emtb_flag:
	.db #0x00	; 0
	.area CABS (ABS)
