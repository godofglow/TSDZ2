;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.4 #11422 (MINGW64)
;--------------------------------------------------------
	.module motor
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_CAP_COM_IRQHandler
	.globl _ui16_adc_read_battery_voltage_10b
	.globl _ui16_adc_read_battery_current_10b
	.globl _get_configuration_variables
	.globl _GPIO_Init
	.globl _TIM1_CtrlPWMOutputs
	.globl _ui8_wheel_speed_sensor_change_counter
	.globl _ui16_wheel_speed_sensor_counter
	.globl _ui8_wheel_speed_sensor_state_old
	.globl _ui8_wheel_speed_sensor_state
	.globl _ui16_torque_sensor_throttle_value
	.globl _ui16_torque_sensor_throttle_max_value
	.globl _ui8_torque_sensor_pas_signal_change_counter
	.globl _ui16_torque_sensor_throttle_processed_value
	.globl _ui16_pas_counter
	.globl _ui8_pas_after_first_pulse
	.globl _ui8_pas_state_old
	.globl _ui8_pas_state
	.globl _ui8_adc_motor_phase_current_offset
	.globl _ui8_adc_target_motor_phase_max_current
	.globl _ui8_current_controller_flag
	.globl _ui8_current_controller_counter
	.globl _ui8_adc_battery_current
	.globl _ui16_adc_battery_current_10b
	.globl _ui8_adc_battery_current_filtered_10b
	.globl _ui16_adc_battery_current_accumulated
	.globl _ui16_adc_battery_voltage_filtered_10b
	.globl _ui16_adc_battery_voltage_accumulated
	.globl _ui8_adc_battery_voltage_cut_off
	.globl _ui8_first_time_run_flag
	.globl _ui8_controller_adc_motor_max_current
	.globl _ui16_counter_adc_motor_current_ramp_up
	.globl _ui8_controller_adc_battery_max_current
	.globl _ui16_counter_adc_battery_current_ramp_up
	.globl _ui8_phase_c_voltage
	.globl _ui8_phase_b_voltage
	.globl _ui8_phase_a_voltage
	.globl _ui16_counter_duty_cycle_ramp_down
	.globl _ui16_counter_duty_cycle_ramp_up
	.globl _ui16_duty_cycle_ramp_down_inverse_step
	.globl _ui16_duty_cycle_ramp_up_inverse_step
	.globl _ui8_duty_cycle
	.globl _ui8_half_erps_flag
	.globl _ui8_hall_sensors_state_last
	.globl _ui8_hall_sensors_state
	.globl _ui8_motor_controller_state
	.globl _ui8_motor_commutation_type
	.globl _ui16_foc_angle_accumulated
	.globl _ui8_interpolation_angle
	.globl _ui8_foc_angle
	.globl _ui8_motor_rotor_angle
	.globl _ui8_motor_rotor_absolute_angle
	.globl _ui8_svm_table_index
	.globl _ui16_max_motor_speed_erps
	.globl _ui16_PWM_cycles_counter_total
	.globl _ui16_PWM_cycles_counter_6
	.globl _ui16_PWM_cycles_counter
	.globl _ui8_sin_table
	.globl _ui8_svm_table
	.globl _ui16_value
	.globl _motor_controller
	.globl _motor_disable_PWM
	.globl _motor_enable_PWM
	.globl _motor_controller_set_state
	.globl _motor_controller_reset_state
	.globl _motor_controller_state_is_set
	.globl _hall_sensor_init
	.globl _motor_init
	.globl _motor_set_pwm_duty_cycle_target
	.globl _motor_set_pwm_duty_cycle_ramp_up_inverse_step
	.globl _motor_set_pwm_duty_cycle_ramp_down_inverse_step
	.globl _motor_set_phase_current_max
	.globl _ui16_motor_get_motor_speed_erps
	.globl _read_battery_voltage
	.globl _read_battery_current
	.globl _calc_foc_angle
	.globl _asin_table
	.globl _motor_get_adc_battery_current_filtered_10b
	.globl _motor_get_adc_battery_voltage_filtered_10b
	.globl _motor_set_adc_battery_voltage_cut_off
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
G$ui16_value$0_0$0==.
_ui16_value::
	.ds 2
Lmotor.TIM1_CAP_COM_IRQHandler$ui8_temp$1_0$427==.
_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427:
	.ds 1
Lmotor.TIM1_CAP_COM_IRQHandler$valuesAreTooHigh$1_0$427==.
_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$ui8_svm_table$0_0$0==.
_ui8_svm_table::
	.ds 256
G$ui8_sin_table$0_0$0==.
_ui8_sin_table::
	.ds 60
G$ui16_PWM_cycles_counter$0_0$0==.
_ui16_PWM_cycles_counter::
	.ds 2
G$ui16_PWM_cycles_counter_6$0_0$0==.
_ui16_PWM_cycles_counter_6::
	.ds 2
G$ui16_PWM_cycles_counter_total$0_0$0==.
_ui16_PWM_cycles_counter_total::
	.ds 2
G$ui16_max_motor_speed_erps$0_0$0==.
_ui16_max_motor_speed_erps::
	.ds 2
Fmotor$ui16_motor_speed_erps$0_0$0==.
_ui16_motor_speed_erps:
	.ds 2
G$ui8_svm_table_index$0_0$0==.
_ui8_svm_table_index::
	.ds 1
G$ui8_motor_rotor_absolute_angle$0_0$0==.
_ui8_motor_rotor_absolute_angle::
	.ds 1
G$ui8_motor_rotor_angle$0_0$0==.
_ui8_motor_rotor_angle::
	.ds 1
G$ui8_foc_angle$0_0$0==.
_ui8_foc_angle::
	.ds 1
G$ui8_interpolation_angle$0_0$0==.
_ui8_interpolation_angle::
	.ds 1
G$ui16_foc_angle_accumulated$0_0$0==.
_ui16_foc_angle_accumulated::
	.ds 2
G$ui8_motor_commutation_type$0_0$0==.
_ui8_motor_commutation_type::
	.ds 1
G$ui8_motor_controller_state$0_0$0==.
_ui8_motor_controller_state::
	.ds 1
G$ui8_hall_sensors_state$0_0$0==.
_ui8_hall_sensors_state::
	.ds 1
G$ui8_hall_sensors_state_last$0_0$0==.
_ui8_hall_sensors_state_last::
	.ds 1
G$ui8_half_erps_flag$0_0$0==.
_ui8_half_erps_flag::
	.ds 1
G$ui8_duty_cycle$0_0$0==.
_ui8_duty_cycle::
	.ds 1
Fmotor$ui8_duty_cycle_target$0_0$0==.
_ui8_duty_cycle_target:
	.ds 1
G$ui16_duty_cycle_ramp_up_inverse_step$0_0$0==.
_ui16_duty_cycle_ramp_up_inverse_step::
	.ds 2
G$ui16_duty_cycle_ramp_down_inverse_step$0_0$0==.
_ui16_duty_cycle_ramp_down_inverse_step::
	.ds 2
G$ui16_counter_duty_cycle_ramp_up$0_0$0==.
_ui16_counter_duty_cycle_ramp_up::
	.ds 2
G$ui16_counter_duty_cycle_ramp_down$0_0$0==.
_ui16_counter_duty_cycle_ramp_down::
	.ds 2
G$ui8_phase_a_voltage$0_0$0==.
_ui8_phase_a_voltage::
	.ds 1
G$ui8_phase_b_voltage$0_0$0==.
_ui8_phase_b_voltage::
	.ds 1
G$ui8_phase_c_voltage$0_0$0==.
_ui8_phase_c_voltage::
	.ds 1
G$ui16_counter_adc_battery_current_ramp_up$0_0$0==.
_ui16_counter_adc_battery_current_ramp_up::
	.ds 2
G$ui8_controller_adc_battery_max_current$0_0$0==.
_ui8_controller_adc_battery_max_current::
	.ds 1
G$ui16_counter_adc_motor_current_ramp_up$0_0$0==.
_ui16_counter_adc_motor_current_ramp_up::
	.ds 2
G$ui8_controller_adc_motor_max_current$0_0$0==.
_ui8_controller_adc_motor_max_current::
	.ds 1
G$ui8_first_time_run_flag$0_0$0==.
_ui8_first_time_run_flag::
	.ds 1
G$ui8_adc_battery_voltage_cut_off$0_0$0==.
_ui8_adc_battery_voltage_cut_off::
	.ds 1
G$ui16_adc_battery_voltage_accumulated$0_0$0==.
_ui16_adc_battery_voltage_accumulated::
	.ds 2
G$ui16_adc_battery_voltage_filtered_10b$0_0$0==.
_ui16_adc_battery_voltage_filtered_10b::
	.ds 2
G$ui16_adc_battery_current_accumulated$0_0$0==.
_ui16_adc_battery_current_accumulated::
	.ds 2
G$ui8_adc_battery_current_filtered_10b$0_0$0==.
_ui8_adc_battery_current_filtered_10b::
	.ds 1
G$ui16_adc_battery_current_10b$0_0$0==.
_ui16_adc_battery_current_10b::
	.ds 2
G$ui8_adc_battery_current$0_0$0==.
_ui8_adc_battery_current::
	.ds 1
Fmotor$ui8_adc_motor_phase_current$0_0$0==.
_ui8_adc_motor_phase_current:
	.ds 1
G$ui8_current_controller_counter$0_0$0==.
_ui8_current_controller_counter::
	.ds 1
G$ui8_current_controller_flag$0_0$0==.
_ui8_current_controller_flag::
	.ds 1
G$ui8_adc_target_motor_phase_max_current$0_0$0==.
_ui8_adc_target_motor_phase_max_current::
	.ds 1
G$ui8_adc_motor_phase_current_offset$0_0$0==.
_ui8_adc_motor_phase_current_offset::
	.ds 1
G$ui8_pas_state$0_0$0==.
_ui8_pas_state::
	.ds 1
G$ui8_pas_state_old$0_0$0==.
_ui8_pas_state_old::
	.ds 1
G$ui8_pas_after_first_pulse$0_0$0==.
_ui8_pas_after_first_pulse::
	.ds 1
G$ui16_pas_counter$0_0$0==.
_ui16_pas_counter::
	.ds 2
G$ui16_torque_sensor_throttle_processed_value$0_0$0==.
_ui16_torque_sensor_throttle_processed_value::
	.ds 2
G$ui8_torque_sensor_pas_signal_change_counter$0_0$0==.
_ui8_torque_sensor_pas_signal_change_counter::
	.ds 1
G$ui16_torque_sensor_throttle_max_value$0_0$0==.
_ui16_torque_sensor_throttle_max_value::
	.ds 2
G$ui16_torque_sensor_throttle_value$0_0$0==.
_ui16_torque_sensor_throttle_value::
	.ds 2
G$ui8_wheel_speed_sensor_state$0_0$0==.
_ui8_wheel_speed_sensor_state::
	.ds 1
G$ui8_wheel_speed_sensor_state_old$0_0$0==.
_ui8_wheel_speed_sensor_state_old::
	.ds 1
G$ui16_wheel_speed_sensor_counter$0_0$0==.
_ui16_wheel_speed_sensor_counter::
	.ds 2
G$ui8_wheel_speed_sensor_change_counter$0_0$0==.
_ui8_wheel_speed_sensor_change_counter::
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$motor_controller$0$0 ==.
	C$motor.c$496$0_0$425 ==.
;	motor.c: 496: void motor_controller(void)
;	-----------------------------------------
;	 function motor_controller
;	-----------------------------------------
_motor_controller:
	C$motor.c$499$1_0$425 ==.
;	motor.c: 499: read_battery_voltage();
	call	_read_battery_voltage
	C$motor.c$500$1_0$425 ==.
;	motor.c: 500: read_battery_current();
	call	_read_battery_current
	C$motor.c$503$1_0$425 ==.
;	motor.c: 503: calc_foc_angle();
	call	_calc_foc_angle
	C$motor.c$504$1_0$425 ==.
;	motor.c: 504: }
	C$motor.c$504$1_0$425 ==.
	XG$motor_controller$0$0 ==.
	ret
	G$TIM1_CAP_COM_IRQHandler$0$0 ==.
	C$motor.c$513$1_0$427 ==.
;	motor.c: 513: void TIM1_CAP_COM_IRQHandler(void) __interrupt(TIM1_CAP_COM_IRQHANDLER) // runs every 64us (PWM frequency)
;	-----------------------------------------
;	 function TIM1_CAP_COM_IRQHandler
;	-----------------------------------------
_TIM1_CAP_COM_IRQHandler:
	clr	a
	div	x, a
	sub	sp, #2
	C$motor.c$518$1_0$427 ==.
;	motor.c: 518: p_configuration_variables = get_configuration_variables();
	call	_get_configuration_variables
	C$motor.c$524$1_0$427 ==.
;	motor.c: 524: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
	bres	21506, #1
	C$motor.c$526$1_0$427 ==.
;	motor.c: 526: ADC1->CSR = 0x05;
	mov	0x5400+0, #0x05
	C$motor.c$528$1_0$427 ==.
;	motor.c: 528: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	21505, #0
	C$motor.c$529$1_0$427 ==.
;	motor.c: 529: while(!(ADC1->CSR & ADC1_FLAG_EOC)) ;
00101$:
	ld	a, 0x5400
	jrpl	00101$
	C$motor.c$530$1_0$427 ==.
;	motor.c: 530: ui16_adc_battery_current_10b = ui16_adc_read_battery_current_10b();
	call	_ui16_adc_read_battery_current_10b
	ldw	_ui16_adc_battery_current_10b+0, x
	C$motor.c$531$1_0$427 ==.
;	motor.c: 531: ui8_adc_battery_current = ui16_adc_battery_current_10b >> 2;
	ldw	x, _ui16_adc_battery_current_10b+0
	srlw	x
	srlw	x
	ld	a, xl
	ld	_ui8_adc_battery_current+0, a
	C$motor.c$534$1_0$427 ==.
;	motor.c: 534: if(ui8_duty_cycle > 0)
	tnz	_ui8_duty_cycle+0
	jreq	00105$
	C$motor.c$536$2_0$428 ==.
;	motor.c: 536: ui8_adc_motor_phase_current = ((ui16_adc_battery_current_10b << 6) / ((uint16_t) ui8_duty_cycle));
	ldw	x, _ui16_adc_battery_current_10b+0
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	clrw	y
	ld	a, _ui8_duty_cycle+0
	ld	yl, a
	divw	x, y
	ld	a, xl
	ld	_ui8_adc_motor_phase_current+0, a
	jra	00106$
00105$:
	C$motor.c$540$2_0$429 ==.
;	motor.c: 540: ui8_adc_motor_phase_current = 0;
	clr	_ui8_adc_motor_phase_current+0
00106$:
	C$motor.c$545$1_0$427 ==.
;	motor.c: 545: ADC1->CR2 |= ADC1_CR2_SCAN; // enable scan mode
	bset	21506, #1
	C$motor.c$546$1_0$427 ==.
;	motor.c: 546: ADC1->CSR = 0x07; // clear EOC flag first (selected also channel 7)
	mov	0x5400+0, #0x07
	C$motor.c$547$1_0$427 ==.
;	motor.c: 547: ADC1->CR1 |= ADC1_CR1_ADON; // start ADC1 conversion
	bset	21505, #0
	C$motor.c$556$1_0$427 ==.
;	motor.c: 556: ui8_hall_sensors_state = ((HALL_SENSOR_A__PORT->IDR & HALL_SENSOR_A__PIN) >> 5)|
	ld	a, 0x5015
	and	a, #0x20
	swap	a
	and	a, #0x0f
	srl	a
	ld	(0x02, sp), a
	C$motor.c$557$1_0$427 ==.
;	motor.c: 557: ((HALL_SENSOR_B__PORT->IDR & HALL_SENSOR_B__PIN) >> 1)|
	ld	a, 0x5010
	and	a, #0x04
	srl	a
	or	a, (0x02, sp)
	ld	(0x02, sp), a
	C$motor.c$558$1_0$427 ==.
;	motor.c: 558: ((HALL_SENSOR_C__PORT->IDR & HALL_SENSOR_C__PIN) >> 3);
	ld	a, 0x500b
	and	a, #0x20
	srl	a
	srl	a
	srl	a
	or	a, (0x02, sp)
	ld	_ui8_hall_sensors_state+0, a
	C$motor.c$560$1_0$427 ==.
;	motor.c: 560: if(ui8_hall_sensors_state != ui8_hall_sensors_state_last)
	ld	a, _ui8_hall_sensors_state_last+0
	cp	a, _ui8_hall_sensors_state+0
	jrne	00427$
	jp	00128$
00427$:
	C$motor.c$562$2_0$430 ==.
;	motor.c: 562: ui8_hall_sensors_state_last = ui8_hall_sensors_state;
	mov	_ui8_hall_sensors_state_last+0, _ui8_hall_sensors_state+0
	C$motor.c$564$2_0$430 ==.
;	motor.c: 564: switch(ui8_hall_sensors_state)
	ld	a, _ui8_hall_sensors_state+0
	cp	a, #0x06
	jrule	00429$
	jp	00125$
00429$:
	clrw	x
	ld	xl, a
	sllw	x
	ldw	x, (#00430$, x)
	jp	(x)
00430$:
	.dw	#00125$
	.dw	#00108$
	.dw	#00124$
	.dw	#00107$
	.dw	#00122$
	.dw	#00121$
	.dw	#00123$
	C$motor.c$566$3_0$431 ==.
;	motor.c: 566: case 3:
00107$:
	C$motor.c$567$3_0$431 ==.
;	motor.c: 567: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_150;
	mov	_ui8_motor_rotor_absolute_angle+0, #0x74
	C$motor.c$568$3_0$431 ==.
;	motor.c: 568: break;
	jp	00126$
	C$motor.c$570$3_0$431 ==.
;	motor.c: 570: case 1:
00108$:
	C$motor.c$571$3_0$431 ==.
;	motor.c: 571: if(ui8_half_erps_flag == 1)
	ld	a, _ui8_half_erps_flag+0
	dec	a
	jreq	00433$
	jp	00120$
00433$:
	C$motor.c$573$4_0$432 ==.
;	motor.c: 573: ui8_half_erps_flag = 0;
	clr	_ui8_half_erps_flag+0
	C$motor.c$574$4_0$432 ==.
;	motor.c: 574: ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
	ldw	x, _ui16_PWM_cycles_counter+0
	ldw	_ui16_PWM_cycles_counter_total+0, x
	C$motor.c$575$4_0$432 ==.
;	motor.c: 575: ui16_PWM_cycles_counter = 1;
	ldw	x, #0x0001
	ldw	_ui16_PWM_cycles_counter+0, x
	C$motor.c$579$4_0$432 ==.
;	motor.c: 579: if(ui16_PWM_cycles_counter_total > 0)
	ldw	x, _ui16_PWM_cycles_counter_total+0
	jreq	00110$
	C$motor.c$581$5_0$433 ==.
;	motor.c: 581: ui16_motor_speed_erps = ((uint16_t) PWM_CYCLES_SECOND) / ui16_PWM_cycles_counter_total;
	ldw	x, #0x3d09
	ldw	y, _ui16_PWM_cycles_counter_total+0
	divw	x, y
	ldw	_ui16_motor_speed_erps+0, x
	jra	00111$
00110$:
	C$motor.c$585$5_0$434 ==.
;	motor.c: 585: ui16_motor_speed_erps = ((uint16_t) PWM_CYCLES_SECOND);
	ldw	x, #0x3d09
	ldw	_ui16_motor_speed_erps+0, x
00111$:
	C$motor.c$589$4_0$432 ==.
;	motor.c: 589: if(ui16_motor_speed_erps > MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES)
	ldw	x, _ui16_motor_speed_erps+0
	cpw	x, #0x000a
	jrule	00117$
	C$motor.c$591$5_0$435 ==.
;	motor.c: 591: if(ui8_motor_commutation_type == BLOCK_COMMUTATION)
	ld	a, _ui8_motor_commutation_type+0
	dec	a
	jrne	00120$
	C$motor.c$593$6_0$436 ==.
;	motor.c: 593: ui8_motor_commutation_type = SINEWAVE_INTERPOLATION_60_DEGREES;
	mov	_ui8_motor_commutation_type+0, #0x02
	C$motor.c$594$6_0$436 ==.
;	motor.c: 594: ui8_ebike_app_state = EBIKE_APP_STATE_MOTOR_RUNNING;
	mov	_ui8_ebike_app_state+0, #0x04
	jra	00120$
00117$:
	C$motor.c$599$5_0$437 ==.
;	motor.c: 599: if(ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
	ld	a, _ui8_motor_commutation_type+0
	cp	a, #0x02
	jrne	00120$
	C$motor.c$601$6_0$438 ==.
;	motor.c: 601: ui8_motor_commutation_type = BLOCK_COMMUTATION;
	mov	_ui8_motor_commutation_type+0, #0x01
	C$motor.c$602$6_0$438 ==.
;	motor.c: 602: ui8_foc_angle = 0;
	clr	_ui8_foc_angle+0
00120$:
	C$motor.c$607$3_0$431 ==.
;	motor.c: 607: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_210;
	mov	_ui8_motor_rotor_absolute_angle+0, #0x9e
	C$motor.c$608$3_0$431 ==.
;	motor.c: 608: break;
	jra	00126$
	C$motor.c$610$3_0$431 ==.
;	motor.c: 610: case 5:
00121$:
	C$motor.c$611$3_0$431 ==.
;	motor.c: 611: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_270;
	mov	_ui8_motor_rotor_absolute_angle+0, #0xc9
	C$motor.c$612$3_0$431 ==.
;	motor.c: 612: break;
	jra	00126$
	C$motor.c$614$3_0$431 ==.
;	motor.c: 614: case 4:
00122$:
	C$motor.c$615$3_0$431 ==.
;	motor.c: 615: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_330;
	mov	_ui8_motor_rotor_absolute_angle+0, #0xf3
	C$motor.c$616$3_0$431 ==.
;	motor.c: 616: break;
	jra	00126$
	C$motor.c$618$3_0$431 ==.
;	motor.c: 618: case 6:
00123$:
	C$motor.c$619$3_0$431 ==.
;	motor.c: 619: ui8_half_erps_flag = 1;
	mov	_ui8_half_erps_flag+0, #0x01
	C$motor.c$620$3_0$431 ==.
;	motor.c: 620: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_30;
	mov	_ui8_motor_rotor_absolute_angle+0, #0x1e
	C$motor.c$621$3_0$431 ==.
;	motor.c: 621: break;
	jra	00126$
	C$motor.c$626$3_0$431 ==.
;	motor.c: 626: case 2:
00124$:
	C$motor.c$627$3_0$431 ==.
;	motor.c: 627: ui8_motor_rotor_absolute_angle = (uint8_t) MOTOR_ROTOR_ANGLE_90;
	mov	_ui8_motor_rotor_absolute_angle+0, #0x49
	C$motor.c$628$3_0$431 ==.
;	motor.c: 628: break;
	jra	00126$
	C$motor.c$630$3_0$431 ==.
;	motor.c: 630: default:
00125$:
	C$motor.c$631$3_0$431 ==.
;	motor.c: 631: return;
	jp	00226$
	C$motor.c$633$2_0$430 ==.
;	motor.c: 633: }
00126$:
	C$motor.c$635$2_0$430 ==.
;	motor.c: 635: ui16_PWM_cycles_counter_6 = 1;
	ldw	x, #0x0001
	ldw	_ui16_PWM_cycles_counter_6+0, x
00128$:
	C$motor.c$640$1_0$427 ==.
;	motor.c: 640: if(ui16_PWM_cycles_counter < ((uint16_t) PWM_CYCLES_COUNTER_MAX))
	ldw	x, _ui16_PWM_cycles_counter+0
	cpw	x, #0x0c35
	jrnc	00130$
	C$motor.c$642$2_0$439 ==.
;	motor.c: 642: ui16_PWM_cycles_counter++;
	ldw	x, _ui16_PWM_cycles_counter+0
	incw	x
	ldw	_ui16_PWM_cycles_counter+0, x
	C$motor.c$643$2_0$439 ==.
;	motor.c: 643: ui16_PWM_cycles_counter_6++;
	ldw	x, _ui16_PWM_cycles_counter_6+0
	incw	x
	ldw	_ui16_PWM_cycles_counter_6+0, x
	jra	00131$
00130$:
	C$motor.c$647$2_0$440 ==.
;	motor.c: 647: ui16_PWM_cycles_counter = 1; // don't put to 0 to avoid 0 divisions
	ldw	x, #0x0001
	ldw	_ui16_PWM_cycles_counter+0, x
	C$motor.c$648$2_0$440 ==.
;	motor.c: 648: ui16_PWM_cycles_counter_6 = 1;
	ldw	x, #0x0001
	ldw	_ui16_PWM_cycles_counter_6+0, x
	C$motor.c$649$2_0$440 ==.
;	motor.c: 649: ui8_half_erps_flag = 0;
	clr	_ui8_half_erps_flag+0
	C$motor.c$650$2_0$440 ==.
;	motor.c: 650: ui16_motor_speed_erps = 0;
	clrw	x
	ldw	_ui16_motor_speed_erps+0, x
	C$motor.c$651$2_0$440 ==.
;	motor.c: 651: ui16_PWM_cycles_counter_total = 0xFFFF;
	ldw	x, #0xffff
	ldw	_ui16_PWM_cycles_counter_total+0, x
	C$motor.c$652$2_0$440 ==.
;	motor.c: 652: ui8_foc_angle = 0;
	clr	_ui8_foc_angle+0
	C$motor.c$653$2_0$440 ==.
;	motor.c: 653: ui8_motor_commutation_type = BLOCK_COMMUTATION;
	mov	_ui8_motor_commutation_type+0, #0x01
	C$motor.c$654$2_0$440 ==.
;	motor.c: 654: ui8_hall_sensors_state_last = 0; // this way we force execution of hall sensors code next time
	clr	_ui8_hall_sensors_state_last+0
00131$:
	C$motor.c$663$1_0$427 ==.
;	motor.c: 663: if(ui8_motor_commutation_type == SINEWAVE_INTERPOLATION_60_DEGREES)
	ld	a, _ui8_motor_commutation_type+0
	cp	a, #0x02
	jrne	00133$
	C$motor.c$667$2_0$441 ==.
;	motor.c: 667: ui8_interpolation_angle = (ui16_PWM_cycles_counter_6 << 8) / ui16_PWM_cycles_counter_total; // this operations take 4.4us
	ld	a, _ui16_PWM_cycles_counter_6+1
	ld	xh, a
	clr	a
	ld	xl, a
	ldw	y, _ui16_PWM_cycles_counter_total+0
	divw	x, y
	ld	a, xl
	ld	_ui8_interpolation_angle+0, a
	C$motor.c$668$2_0$441 ==.
;	motor.c: 668: ui8_motor_rotor_angle = ui8_motor_rotor_absolute_angle + ui8_interpolation_angle;
	ld	a, _ui8_motor_rotor_absolute_angle+0
	add	a, _ui8_interpolation_angle+0
	ld	_ui8_motor_rotor_angle+0, a
	C$motor.c$669$2_0$441 ==.
;	motor.c: 669: ui8_svm_table_index = ui8_motor_rotor_angle + ui8_foc_angle;
	ld	a, _ui8_motor_rotor_angle+0
	add	a, _ui8_foc_angle+0
	ld	_ui8_svm_table_index+0, a
	jra	00134$
00133$:
	C$motor.c$674$2_0$442 ==.
;	motor.c: 674: ui8_svm_table_index = ui8_motor_rotor_absolute_angle + ui8_foc_angle;
	ld	a, _ui8_motor_rotor_absolute_angle+0
	add	a, _ui8_foc_angle+0
	ld	_ui8_svm_table_index+0, a
00134$:
	C$motor.c$678$1_0$427 ==.
;	motor.c: 678: ui8_svm_table_index -= 63;
	ld	a, _ui8_svm_table_index+0
	sub	a, #0x3f
	ld	_ui8_svm_table_index+0, a
	C$motor.c$688$1_0$427 ==.
;	motor.c: 688: if(ui8_adc_battery_current > ui8_controller_adc_battery_max_current ||
	ld	a, _ui8_controller_adc_battery_max_current+0
	cp	a, _ui8_adc_battery_current+0
	jrc	00135$
	C$motor.c$689$1_0$427 ==.
;	motor.c: 689: ui8_adc_motor_phase_current > ui8_adc_target_motor_phase_max_current ||
	ld	a, _ui8_adc_target_motor_phase_max_current+0
	cp	a, _ui8_adc_motor_phase_current+0
	jrc	00135$
	C$motor.c$690$1_0$427 ==.
;	motor.c: 690: ui8_adc_motor_phase_current > ui8_controller_adc_motor_max_current)
	ld	a, _ui8_controller_adc_motor_max_current+0
	cp	a, _ui8_adc_motor_phase_current+0
	jrnc	00136$
00135$:
	C$motor.c$692$2_0$443 ==.
;	motor.c: 692: valuesAreTooHigh = 1;
	mov	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0, #0x01
	jra	00137$
00136$:
	C$motor.c$694$2_0$444 ==.
;	motor.c: 694: valuesAreTooHigh = 0;
	clr	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0
00137$:
	C$motor.c$699$1_0$427 ==.
;	motor.c: 699: if(++ui8_current_controller_counter > 12)
	ld	a, _ui8_current_controller_counter+0
	inc	a
	ld	_ui8_current_controller_counter+0, a
	cp	a, #0x0c
	jrule	00165$
	C$motor.c$702$2_0$445 ==.
;	motor.c: 702: ui8_current_controller_counter = 0;
	clr	_ui8_current_controller_counter+0
	C$motor.c$705$2_0$445 ==.
;	motor.c: 705: if(valuesAreTooHigh)
	tnz	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0
	jrne	00450$
	jp	00166$
00450$:
	C$motor.c$707$3_0$446 ==.
;	motor.c: 707: if(ui8_duty_cycle > 0)
	tnz	_ui8_duty_cycle+0
	jrne	00451$
	jp	00166$
00451$:
	C$motor.c$710$4_0$447 ==.
;	motor.c: 710: ui8_duty_cycle--;
	dec	_ui8_duty_cycle+0
	jp	00166$
00165$:
	C$motor.c$714$1_0$427 ==.
;	motor.c: 714: else if(UI8_ADC_BATTERY_VOLTAGE < ui8_adc_battery_voltage_cut_off) // battery voltage under min voltage, reduce duty_cycle
	ld	a, 0x53ec
	cp	a, _ui8_adc_battery_voltage_cut_off+0
	jrnc	00162$
	C$motor.c$716$2_0$448 ==.
;	motor.c: 716: if (ui8_duty_cycle > 0)
	tnz	_ui8_duty_cycle+0
	jrne	00453$
	jp	00166$
00453$:
	C$motor.c$719$3_0$449 ==.
;	motor.c: 719: ui8_duty_cycle--;
	dec	_ui8_duty_cycle+0
	jp	00166$
00162$:
	C$motor.c$722$1_0$427 ==.
;	motor.c: 722: else if((ui16_motor_speed_erps > ui16_max_motor_speed_erps)) // if motor speed over max motor ERPS, reduce duty_cycle
	ldw	x, _ui16_max_motor_speed_erps+0
	cpw	x, _ui16_motor_speed_erps+0
	jrnc	00159$
	C$motor.c$724$2_0$450 ==.
;	motor.c: 724: if (ui8_duty_cycle > 0)
	tnz	_ui8_duty_cycle+0
	jrne	00455$
	jp	00166$
00455$:
	C$motor.c$727$3_0$451 ==.
;	motor.c: 727: ui8_duty_cycle--;
	dec	_ui8_duty_cycle+0
	jra	00166$
00159$:
	C$motor.c$732$2_0$452 ==.
;	motor.c: 732: if(ui8_duty_cycle_target > ui8_duty_cycle &&
	ld	a, _ui8_duty_cycle+0
	cp	a, _ui8_duty_cycle_target+0
	jrnc	00155$
	C$motor.c$733$2_0$452 ==.
;	motor.c: 733: !valuesAreTooHigh)
	tnz	_TIM1_CAP_COM_IRQHandler_valuesAreTooHigh_65536_427+0
	jrne	00155$
	C$motor.c$735$3_0$453 ==.
;	motor.c: 735: if(ui16_counter_duty_cycle_ramp_up++ >= ui16_duty_cycle_ramp_up_inverse_step)
	ldw	y, _ui16_counter_duty_cycle_ramp_up+0
	ldw	x, y
	incw	x
	ldw	_ui16_counter_duty_cycle_ramp_up+0, x
	cpw	y, _ui16_duty_cycle_ramp_up_inverse_step+0
	jrc	00166$
	C$motor.c$737$4_0$454 ==.
;	motor.c: 737: ui16_counter_duty_cycle_ramp_up = 0;
	clrw	x
	ldw	_ui16_counter_duty_cycle_ramp_up+0, x
	C$motor.c$740$4_0$454 ==.
;	motor.c: 740: ui8_duty_cycle++;
	inc	_ui8_duty_cycle+0
	jra	00166$
00155$:
	C$motor.c$743$2_0$452 ==.
;	motor.c: 743: else if(ui8_duty_cycle_target < ui8_duty_cycle)
	ld	a, _ui8_duty_cycle+0
	cp	a, _ui8_duty_cycle_target+0
	jrule	00166$
	C$motor.c$745$3_0$455 ==.
;	motor.c: 745: if(ui16_counter_duty_cycle_ramp_down++ >= ui16_duty_cycle_ramp_down_inverse_step)
	ldw	y, _ui16_counter_duty_cycle_ramp_down+0
	ldw	x, y
	incw	x
	ldw	_ui16_counter_duty_cycle_ramp_down+0, x
	cpw	y, _ui16_duty_cycle_ramp_down_inverse_step+0
	jrc	00166$
	C$motor.c$747$4_0$456 ==.
;	motor.c: 747: ui16_counter_duty_cycle_ramp_down = 0;
	clrw	x
	ldw	_ui16_counter_duty_cycle_ramp_down+0, x
	C$motor.c$750$4_0$456 ==.
;	motor.c: 750: ui8_duty_cycle--;
	dec	_ui8_duty_cycle+0
00166$:
	C$motor.c$760$1_0$427 ==.
;	motor.c: 760: ui8_temp = ui8_svm_table[(uint8_t) (ui8_svm_table_index + 171 /* 240° */)];
	ld	a, _ui8_svm_table_index+0
	add	a, #0xab
	clrw	x
	ld	xl, a
	addw	x, #(_ui8_svm_table + 0)
	ld	a, (x)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$761$1_0$427 ==.
;	motor.c: 761: if(ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	cp	a, #0x7f
	jrule	00168$
	C$motor.c$763$2_0$457 ==.
;	motor.c: 763: ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
	clrw	x
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	xl, a
	subw	x, #0x007f
	exgw	x, y
	clrw	x
	ld	a, _ui8_duty_cycle+0
	ld	xl, a
	pushw	x
	pushw	y
	call	__mulint
	addw	sp, #4
	ldw	_ui16_value+0, x
	C$motor.c$764$2_0$457 ==.
;	motor.c: 764: ui8_temp = (uint8_t) (ui16_value >> 8);
	ld	a, _ui16_value+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$765$2_0$457 ==.
;	motor.c: 765: ui8_phase_a_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	add	a, #0x7f
	ld	_ui8_phase_a_voltage+0, a
	jra	00169$
00168$:
	C$motor.c$769$2_0$458 ==.
;	motor.c: 769: ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ldw	y, #0x007f
	subw	y, (0x01, sp)
	clrw	x
	ld	a, _ui8_duty_cycle+0
	ld	xl, a
	pushw	x
	pushw	y
	call	__mulint
	addw	sp, #4
	ldw	_ui16_value+0, x
	C$motor.c$770$2_0$458 ==.
;	motor.c: 770: ui8_temp = (uint8_t) (ui16_value >> 8);
	ld	a, _ui16_value+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$771$2_0$458 ==.
;	motor.c: 771: ui8_phase_a_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
	ld	a, #0x7f
	sub	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	_ui8_phase_a_voltage+0, a
00169$:
	C$motor.c$775$1_0$427 ==.
;	motor.c: 775: ui8_temp = ui8_svm_table[ui8_svm_table_index];
	clrw	x
	ld	a, _ui8_svm_table_index+0
	ld	xl, a
	addw	x, #(_ui8_svm_table + 0)
	ld	a, (x)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$776$1_0$427 ==.
;	motor.c: 776: if(ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	cp	a, #0x7f
	jrule	00171$
	C$motor.c$778$2_0$459 ==.
;	motor.c: 778: ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
	clrw	x
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	xl, a
	subw	x, #0x007f
	exgw	x, y
	clrw	x
	ld	a, _ui8_duty_cycle+0
	ld	xl, a
	pushw	x
	pushw	y
	call	__mulint
	addw	sp, #4
	ldw	_ui16_value+0, x
	C$motor.c$779$2_0$459 ==.
;	motor.c: 779: ui8_temp = (uint8_t) (ui16_value >> 8);
	ld	a, _ui16_value+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$780$2_0$459 ==.
;	motor.c: 780: ui8_phase_b_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	add	a, #0x7f
	ld	_ui8_phase_b_voltage+0, a
	jra	00172$
00171$:
	C$motor.c$784$2_0$460 ==.
;	motor.c: 784: ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ldw	y, #0x007f
	subw	y, (0x01, sp)
	clrw	x
	ld	a, _ui8_duty_cycle+0
	ld	xl, a
	pushw	x
	pushw	y
	call	__mulint
	addw	sp, #4
	ldw	_ui16_value+0, x
	C$motor.c$785$2_0$460 ==.
;	motor.c: 785: ui8_temp = (uint8_t) (ui16_value >> 8);
	ld	a, _ui16_value+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$786$2_0$460 ==.
;	motor.c: 786: ui8_phase_b_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
	ld	a, #0x7f
	sub	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	_ui8_phase_b_voltage+0, a
00172$:
	C$motor.c$790$1_0$427 ==.
;	motor.c: 790: ui8_temp = ui8_svm_table[(uint8_t) (ui8_svm_table_index + 85 /* 120° */)];
	ld	a, _ui8_svm_table_index+0
	add	a, #0x55
	clrw	x
	ld	xl, a
	addw	x, #(_ui8_svm_table + 0)
	ld	a, (x)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$791$1_0$427 ==.
;	motor.c: 791: if(ui8_temp > MIDDLE_PWM_DUTY_CYCLE_MAX)
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	cp	a, #0x7f
	jrule	00174$
	C$motor.c$793$2_0$461 ==.
;	motor.c: 793: ui16_value = ((uint16_t) (ui8_temp - MIDDLE_PWM_DUTY_CYCLE_MAX)) * ui8_duty_cycle;
	clrw	x
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	xl, a
	subw	x, #0x007f
	exgw	x, y
	clrw	x
	ld	a, _ui8_duty_cycle+0
	ld	xl, a
	pushw	x
	pushw	y
	call	__mulint
	addw	sp, #4
	ldw	_ui16_value+0, x
	C$motor.c$794$2_0$461 ==.
;	motor.c: 794: ui8_temp = (uint8_t) (ui16_value >> 8);
	ld	a, _ui16_value+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$795$2_0$461 ==.
;	motor.c: 795: ui8_phase_c_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX + ui8_temp;
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	add	a, #0x7f
	ld	_ui8_phase_c_voltage+0, a
	jra	00175$
00174$:
	C$motor.c$799$2_0$462 ==.
;	motor.c: 799: ui16_value = ((uint16_t) (MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp)) * ui8_duty_cycle;
	ld	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ldw	y, #0x007f
	subw	y, (0x01, sp)
	clrw	x
	ld	a, _ui8_duty_cycle+0
	ld	xl, a
	pushw	x
	pushw	y
	call	__mulint
	addw	sp, #4
	ldw	_ui16_value+0, x
	C$motor.c$800$2_0$462 ==.
;	motor.c: 800: ui8_temp = (uint8_t) (ui16_value >> 8);
	ld	a, _ui16_value+0
	ld	(0x02, sp), a
	clr	(0x01, sp)
	ld	a, (0x02, sp)
	ld	_TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0, a
	C$motor.c$801$2_0$462 ==.
;	motor.c: 801: ui8_phase_c_voltage = MIDDLE_PWM_DUTY_CYCLE_MAX - ui8_temp;
	ld	a, #0x7f
	sub	a, _TIM1_CAP_COM_IRQHandler_ui8_temp_65536_427+0
	ld	_ui8_phase_c_voltage+0, a
00175$:
	C$motor.c$806$1_0$427 ==.
;	motor.c: 806: TIM1->CCR3H = (uint8_t) (ui8_phase_b_voltage >> 7);
	ld	a, _ui8_phase_b_voltage+0
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	srl	a
	ld	0x5269, a
	C$motor.c$807$1_0$427 ==.
;	motor.c: 807: TIM1->CCR3L = (uint8_t) (ui8_phase_b_voltage << 1);
	ld	a, _ui8_phase_b_voltage+0
	sll	a
	ld	0x526a, a
	C$motor.c$809$1_0$427 ==.
;	motor.c: 809: TIM1->CCR2H = (uint8_t) (ui8_phase_c_voltage >> 7);
	ld	a, _ui8_phase_c_voltage+0
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	srl	a
	ld	0x5267, a
	C$motor.c$810$1_0$427 ==.
;	motor.c: 810: TIM1->CCR2L = (uint8_t) (ui8_phase_c_voltage << 1);
	ld	a, _ui8_phase_c_voltage+0
	sll	a
	ld	0x5268, a
	C$motor.c$812$1_0$427 ==.
;	motor.c: 812: TIM1->CCR1H = (uint8_t) (ui8_phase_a_voltage >> 7);
	ld	a, _ui8_phase_a_voltage+0
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	srl	a
	ld	0x5265, a
	C$motor.c$813$1_0$427 ==.
;	motor.c: 813: TIM1->CCR1L = (uint8_t) (ui8_phase_a_voltage << 1);
	ld	a, _ui8_phase_a_voltage+0
	sll	a
	ld	0x5266, a
	C$motor.c$817$1_0$427 ==.
;	motor.c: 817: if(ui8_adc_target_battery_max_current > ui8_controller_adc_battery_max_current)
	ld	a, _ui8_controller_adc_battery_max_current+0
	cp	a, _ui8_adc_target_battery_max_current+0
	jrnc	00181$
	C$motor.c$819$2_0$463 ==.
;	motor.c: 819: if(ui16_counter_adc_battery_current_ramp_up++ >= ADC_BATTERY_CURRENT_RAMP_UP_INVERSE_STEP)
	ldw	y, _ui16_counter_adc_battery_current_ramp_up+0
	ldw	x, y
	incw	x
	ldw	_ui16_counter_adc_battery_current_ramp_up+0, x
	cpw	y, #0x07a1
	jrc	00182$
	C$motor.c$822$3_0$464 ==.
;	motor.c: 822: ui16_counter_adc_battery_current_ramp_up = 0;
	clrw	x
	ldw	_ui16_counter_adc_battery_current_ramp_up+0, x
	C$motor.c$824$3_0$464 ==.
;	motor.c: 824: ui8_controller_adc_battery_max_current++;
	inc	_ui8_controller_adc_battery_max_current+0
	jra	00182$
00181$:
	C$motor.c$827$1_0$427 ==.
;	motor.c: 827: else if(ui8_adc_target_battery_max_current < ui8_controller_adc_battery_max_current)
	ld	a, _ui8_controller_adc_battery_max_current+0
	cp	a, _ui8_adc_target_battery_max_current+0
	jrule	00182$
	C$motor.c$830$2_0$465 ==.
;	motor.c: 830: ui8_controller_adc_battery_max_current = ui8_adc_target_battery_max_current;
	mov	_ui8_controller_adc_battery_max_current+0, _ui8_adc_target_battery_max_current+0
00182$:
	C$motor.c$834$1_0$427 ==.
;	motor.c: 834: if(ui8_adc_target_motor_max_current > ui8_controller_adc_motor_max_current)
	ld	a, _ui8_controller_adc_motor_max_current+0
	cp	a, _ui8_adc_target_motor_max_current+0
	jrnc	00188$
	C$motor.c$836$2_0$466 ==.
;	motor.c: 836: if(ui16_counter_adc_motor_current_ramp_up++ >= ADC_BATTERY_CURRENT_RAMP_UP_INVERSE_STEP)
	ldw	y, _ui16_counter_adc_motor_current_ramp_up+0
	ldw	x, y
	incw	x
	ldw	_ui16_counter_adc_motor_current_ramp_up+0, x
	cpw	y, #0x07a1
	jrc	00189$
	C$motor.c$839$3_0$467 ==.
;	motor.c: 839: ui16_counter_adc_motor_current_ramp_up = 0;
	clrw	x
	ldw	_ui16_counter_adc_motor_current_ramp_up+0, x
	C$motor.c$841$3_0$467 ==.
;	motor.c: 841: ui8_controller_adc_motor_max_current++;
	inc	_ui8_controller_adc_motor_max_current+0
	jra	00189$
00188$:
	C$motor.c$844$1_0$427 ==.
;	motor.c: 844: else if(ui8_adc_target_motor_max_current < ui8_controller_adc_motor_max_current)
	ld	a, _ui8_controller_adc_motor_max_current+0
	cp	a, _ui8_adc_target_motor_max_current+0
	jrule	00189$
	C$motor.c$847$2_0$468 ==.
;	motor.c: 847: ui8_controller_adc_motor_max_current = ui8_adc_target_motor_max_current;
	mov	_ui8_controller_adc_motor_max_current+0, _ui8_adc_target_motor_max_current+0
00189$:
	C$motor.c$854$1_0$427 ==.
;	motor.c: 854: ui16_pas_counter++;
	ldw	x, _ui16_pas_counter+0
	incw	x
	ldw	_ui16_pas_counter+0, x
	C$motor.c$857$1_0$427 ==.
;	motor.c: 857: if((PAS1__PORT->IDR & PAS1__PIN) == 0)
	ld	a, 0x5015
	srl	a
	jrc	00191$
	C$motor.c$859$2_0$469 ==.
;	motor.c: 859: ui8_pas_state = 0;
	clr	_ui8_pas_state+0
	jra	00192$
00191$:
	C$motor.c$863$2_0$470 ==.
;	motor.c: 863: ui8_pas_state = 1;
	mov	_ui8_pas_state+0, #0x01
00192$:
	C$motor.c$867$1_0$427 ==.
;	motor.c: 867: if(ui8_pas_state != ui8_pas_state_old)
	ld	a, _ui8_pas_state_old+0
	cp	a, _ui8_pas_state+0
	jrne	00472$
	jp	00211$
00472$:
	C$motor.c$869$2_0$471 ==.
;	motor.c: 869: ui8_pas_state_old = ui8_pas_state;
	mov	_ui8_pas_state_old+0, _ui8_pas_state+0
	C$motor.c$872$2_0$471 ==.
;	motor.c: 872: if(ui8_pas_state == 1)
	ld	a, _ui8_pas_state+0
	dec	a
	jrne	00208$
	C$motor.c$875$3_0$472 ==.
;	motor.c: 875: if(!ui8_pas_after_first_pulse)
	tnz	_ui8_pas_after_first_pulse+0
	jrne	00200$
	C$motor.c$877$4_0$473 ==.
;	motor.c: 877: ui8_pas_after_first_pulse = 1;
	mov	_ui8_pas_after_first_pulse+0, #0x01
	C$motor.c$878$4_0$473 ==.
;	motor.c: 878: ui16_pas_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
	ldw	x, #0x249f
	ldw	_ui16_pas_pwm_cycles_ticks+0, x
	jra	00211$
00200$:
	C$motor.c$884$4_0$474 ==.
;	motor.c: 884: if(ui16_pas_counter < ((uint16_t) PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS))
	ldw	x, _ui16_pas_counter+0
	cpw	x, #0x0138
	jrnc	00194$
	C$motor.c$886$5_0$475 ==.
;	motor.c: 886: ui16_pas_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MAX_CADENCE_PWM_CYCLE_TICKS;
	ldw	x, #0x0138
	ldw	_ui16_pas_pwm_cycles_ticks+0, x
	jra	00195$
00194$:
	C$motor.c$890$5_0$476 ==.
;	motor.c: 890: ui16_pas_pwm_cycles_ticks = ui16_pas_counter;
	ldw	x, _ui16_pas_counter+0
	ldw	_ui16_pas_pwm_cycles_ticks+0, x
	C$motor.c$891$5_0$476 ==.
;	motor.c: 891: ui16_pas_counter = 0;
	clrw	x
	ldw	_ui16_pas_counter+0, x
00195$:
	C$motor.c$895$4_0$474 ==.
;	motor.c: 895: if((PAS2__PORT->IDR & PAS2__PIN) == 0)
	ld	a, 0x5010
	jrmi	00197$
	C$motor.c$897$5_0$477 ==.
;	motor.c: 897: ui8_pedaling_direction = 2;
	mov	_ui8_pedaling_direction+0, #0x02
	jra	00211$
00197$:
	C$motor.c$901$5_0$478 ==.
;	motor.c: 901: ui8_pedaling_direction = 1;
	mov	_ui8_pedaling_direction+0, #0x01
	jra	00211$
00208$:
	C$motor.c$908$3_0$479 ==.
;	motor.c: 908: if(ui8_pas_after_first_pulse)
	tnz	_ui8_pas_after_first_pulse+0
	jreq	00211$
	C$motor.c$911$4_0$480 ==.
;	motor.c: 911: if((PAS2__PORT->IDR & PAS2__PIN) != 0)
	ld	a, 0x5010
	jrpl	00203$
	C$motor.c$913$5_0$481 ==.
;	motor.c: 913: ui8_pedaling_direction = 2;
	mov	_ui8_pedaling_direction+0, #0x02
	jra	00211$
00203$:
	C$motor.c$917$5_0$482 ==.
;	motor.c: 917: ui8_pedaling_direction = 1;
	mov	_ui8_pedaling_direction+0, #0x01
00211$:
	C$motor.c$948$1_0$427 ==.
;	motor.c: 948: if (ui16_pas_counter > ((uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS))
	ldw	x, _ui16_pas_counter+0
	cpw	x, #0x249f
	jrule	00213$
	C$motor.c$950$2_0$483 ==.
;	motor.c: 950: ui16_pas_pwm_cycles_ticks = (uint16_t) PAS_ABSOLUTE_MIN_CADENCE_PWM_CYCLE_TICKS;
	ldw	x, #0x249f
	ldw	_ui16_pas_pwm_cycles_ticks+0, x
	C$motor.c$951$2_0$483 ==.
;	motor.c: 951: ui16_pas_counter = 0;
	clrw	x
	ldw	_ui16_pas_counter+0, x
	C$motor.c$952$2_0$483 ==.
;	motor.c: 952: ui8_pas_after_first_pulse = 0;
	clr	_ui8_pas_after_first_pulse+0
	C$motor.c$953$2_0$483 ==.
;	motor.c: 953: ui8_pedaling_direction = 0;
	clr	_ui8_pedaling_direction+0
	C$motor.c$955$2_0$483 ==.
;	motor.c: 955: ui16_torque_sensor_throttle_processed_value = 0;
	clrw	x
	ldw	_ui16_torque_sensor_throttle_processed_value+0, x
00213$:
	C$motor.c$961$1_0$427 ==.
;	motor.c: 961: ui16_wheel_speed_sensor_counter++;
	ldw	x, _ui16_wheel_speed_sensor_counter+0
	incw	x
	ldw	_ui16_wheel_speed_sensor_counter+0, x
	C$motor.c$964$1_0$427 ==.
;	motor.c: 964: if(ui16_wheel_speed_sensor_counter > ((uint16_t) WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS))
	ldw	x, _ui16_wheel_speed_sensor_counter+0
	cpw	x, #0xfffe
	jrule	00224$
	C$motor.c$966$2_0$484 ==.
;	motor.c: 966: ui16_wheel_speed_sensor_pwm_cycles_ticks = (uint16_t) WHEEL_SPEED_SENSOR_MIN_PWM_CYCLE_TICKS;
	ldw	x, #0xfffe
	ldw	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0, x
	C$motor.c$967$2_0$484 ==.
;	motor.c: 967: ui16_wheel_speed_sensor_counter = 0;
	clrw	x
	ldw	_ui16_wheel_speed_sensor_counter+0, x
	C$motor.c$968$2_0$484 ==.
;	motor.c: 968: ui8_wheel_speed_sensor_change_counter = 0;
	clr	_ui8_wheel_speed_sensor_change_counter+0
	jp	00225$
00224$:
	C$motor.c$974$2_0$485 ==.
;	motor.c: 974: if(WHEEL_SPEED_SENSOR__PORT->IDR & WHEEL_SPEED_SENSOR__PIN)
	ld	a, 0x5001
	bcp	a, #0x02
	jreq	00215$
	C$motor.c$976$3_0$486 ==.
;	motor.c: 976: ui8_wheel_speed_sensor_state = 1;
	mov	_ui8_wheel_speed_sensor_state+0, #0x01
	jra	00216$
00215$:
	C$motor.c$980$3_0$487 ==.
;	motor.c: 980: ui8_wheel_speed_sensor_state = 0;
	clr	_ui8_wheel_speed_sensor_state+0
00216$:
	C$motor.c$983$2_0$485 ==.
;	motor.c: 983: if(ui8_wheel_speed_sensor_state != ui8_wheel_speed_sensor_state_old) // wheel speed sensor signal did change
	ld	a, _ui8_wheel_speed_sensor_state_old+0
	cp	a, _ui8_wheel_speed_sensor_state+0
	jreq	00225$
	C$motor.c$985$3_0$488 ==.
;	motor.c: 985: ui8_wheel_speed_sensor_state_old = ui8_wheel_speed_sensor_state;
	mov	_ui8_wheel_speed_sensor_state_old+0, _ui8_wheel_speed_sensor_state+0
	C$motor.c$987$3_0$488 ==.
;	motor.c: 987: if(ui8_wheel_speed_sensor_state == 1) // consider only when wheel speed sensor signal transition from 0 to 1
	ld	a, _ui8_wheel_speed_sensor_state+0
	dec	a
	jrne	00225$
	C$motor.c$991$4_0$489 ==.
;	motor.c: 991: ui8_wheel_speed_sensor_change_counter++;
	inc	_ui8_wheel_speed_sensor_change_counter+0
	C$motor.c$993$4_0$489 ==.
;	motor.c: 993: if(ui8_wheel_speed_sensor_change_counter >= 2)
	ld	a, _ui8_wheel_speed_sensor_change_counter+0
	cp	a, #0x02
	jrc	00225$
	C$motor.c$995$5_0$490 ==.
;	motor.c: 995: ui16_wheel_speed_sensor_pwm_cycles_ticks = ui16_wheel_speed_sensor_counter;
	ldw	x, _ui16_wheel_speed_sensor_counter+0
	ldw	_ui16_wheel_speed_sensor_pwm_cycles_ticks+0, x
	C$motor.c$996$5_0$490 ==.
;	motor.c: 996: ui16_wheel_speed_sensor_counter = 0;
	clrw	x
	ldw	_ui16_wheel_speed_sensor_counter+0, x
	C$motor.c$997$5_0$490 ==.
;	motor.c: 997: ui32_wheel_speed_sensor_tick_counter++;
	ldw	x, _ui32_wheel_speed_sensor_tick_counter+2
	ldw	y, _ui32_wheel_speed_sensor_tick_counter+0
	incw	x
	jrne	00492$
	incw	y
00492$:
	ldw	_ui32_wheel_speed_sensor_tick_counter+2, x
	ldw	_ui32_wheel_speed_sensor_tick_counter+0, y
	C$motor.c$998$5_0$490 ==.
;	motor.c: 998: ui8_wheel_speed_sensor_change_counter = 1; // keep this counter as 1, meaning we just counted one previous change
	mov	_ui8_wheel_speed_sensor_change_counter+0, #0x01
00225$:
	C$motor.c$1019$1_0$427 ==.
;	motor.c: 1019: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT_CC4);
	mov	0x5255+0, #0xef
00226$:
	C$motor.c$1021$1_0$427 ==.
;	motor.c: 1021: }
	addw	sp, #2
	C$motor.c$1021$1_0$427 ==.
	XG$TIM1_CAP_COM_IRQHandler$0$0 ==.
	iret
	G$motor_disable_PWM$0$0 ==.
	C$motor.c$1026$1_0$492 ==.
;	motor.c: 1026: void motor_disable_PWM(void)
;	-----------------------------------------
;	 function motor_disable_PWM
;	-----------------------------------------
_motor_disable_PWM:
	C$motor.c$1028$1_0$492 ==.
;	motor.c: 1028: TIM1_CtrlPWMOutputs(DISABLE);
	push	#0x00
	call	_TIM1_CtrlPWMOutputs
	pop	a
	C$motor.c$1029$1_0$492 ==.
;	motor.c: 1029: }
	C$motor.c$1029$1_0$492 ==.
	XG$motor_disable_PWM$0$0 ==.
	ret
	G$motor_enable_PWM$0$0 ==.
	C$motor.c$1034$1_0$494 ==.
;	motor.c: 1034: void motor_enable_PWM(void)
;	-----------------------------------------
;	 function motor_enable_PWM
;	-----------------------------------------
_motor_enable_PWM:
	C$motor.c$1036$1_0$494 ==.
;	motor.c: 1036: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
	C$motor.c$1037$1_0$494 ==.
;	motor.c: 1037: }
	C$motor.c$1037$1_0$494 ==.
	XG$motor_enable_PWM$0$0 ==.
	ret
	G$motor_controller_set_state$0$0 ==.
	C$motor.c$1042$1_0$496 ==.
;	motor.c: 1042: void motor_controller_set_state(uint8_t ui8_state)
;	-----------------------------------------
;	 function motor_controller_set_state
;	-----------------------------------------
_motor_controller_set_state:
	C$motor.c$1044$1_0$496 ==.
;	motor.c: 1044: ui8_motor_controller_state |= ui8_state;
	ld	a, (0x03, sp)
	or	a, _ui8_motor_controller_state+0
	ld	_ui8_motor_controller_state+0, a
	C$motor.c$1045$1_0$496 ==.
;	motor.c: 1045: }
	C$motor.c$1045$1_0$496 ==.
	XG$motor_controller_set_state$0$0 ==.
	ret
	G$motor_controller_reset_state$0$0 ==.
	C$motor.c$1050$1_0$498 ==.
;	motor.c: 1050: void motor_controller_reset_state(uint8_t ui8_state)
;	-----------------------------------------
;	 function motor_controller_reset_state
;	-----------------------------------------
_motor_controller_reset_state:
	C$motor.c$1052$1_0$498 ==.
;	motor.c: 1052: ui8_motor_controller_state &= ~ui8_state;
	ld	a, (0x03, sp)
	cpl	a
	and	a, _ui8_motor_controller_state+0
	ld	_ui8_motor_controller_state+0, a
	C$motor.c$1053$1_0$498 ==.
;	motor.c: 1053: }
	C$motor.c$1053$1_0$498 ==.
	XG$motor_controller_reset_state$0$0 ==.
	ret
	G$motor_controller_state_is_set$0$0 ==.
	C$motor.c$1058$1_0$500 ==.
;	motor.c: 1058: uint8_t motor_controller_state_is_set(uint8_t ui8_state)
;	-----------------------------------------
;	 function motor_controller_state_is_set
;	-----------------------------------------
_motor_controller_state_is_set:
	C$motor.c$1060$1_0$500 ==.
;	motor.c: 1060: return ui8_motor_controller_state & ui8_state;
	ld	a, (0x03, sp)
	and	a, _ui8_motor_controller_state+0
	C$motor.c$1061$1_0$500 ==.
;	motor.c: 1061: }
	C$motor.c$1061$1_0$500 ==.
	XG$motor_controller_state_is_set$0$0 ==.
	ret
	G$hall_sensor_init$0$0 ==.
	C$motor.c$1066$1_0$502 ==.
;	motor.c: 1066: void hall_sensor_init(void)
;	-----------------------------------------
;	 function hall_sensor_init
;	-----------------------------------------
_hall_sensor_init:
	C$motor.c$1068$1_0$502 ==.
;	motor.c: 1068: GPIO_Init (HALL_SENSOR_A__PORT, (GPIO_Pin_TypeDef) HALL_SENSOR_A__PIN, GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x20
	push	#0x14
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$motor.c$1069$1_0$502 ==.
;	motor.c: 1069: GPIO_Init (HALL_SENSOR_B__PORT, (GPIO_Pin_TypeDef) HALL_SENSOR_B__PIN, GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$motor.c$1070$1_0$502 ==.
;	motor.c: 1070: GPIO_Init (HALL_SENSOR_C__PORT, (GPIO_Pin_TypeDef) HALL_SENSOR_C__PIN, GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x20
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	C$motor.c$1071$1_0$502 ==.
;	motor.c: 1071: }
	C$motor.c$1071$1_0$502 ==.
	XG$hall_sensor_init$0$0 ==.
	ret
	G$motor_init$0$0 ==.
	C$motor.c$1076$1_0$504 ==.
;	motor.c: 1076: void motor_init(void)
;	-----------------------------------------
;	 function motor_init
;	-----------------------------------------
_motor_init:
	C$motor.c$1078$1_0$504 ==.
;	motor.c: 1078: motor_set_pwm_duty_cycle_ramp_up_inverse_step(PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP); // each step = 64us
	push	#0x0f
	push	#0x00
	call	_motor_set_pwm_duty_cycle_ramp_up_inverse_step
	addw	sp, #2
	C$motor.c$1079$1_0$504 ==.
;	motor.c: 1079: motor_set_pwm_duty_cycle_ramp_down_inverse_step(PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP); // each step = 64us
	push	#0x0f
	push	#0x00
	call	_motor_set_pwm_duty_cycle_ramp_down_inverse_step
	addw	sp, #2
	C$motor.c$1080$1_0$504 ==.
;	motor.c: 1080: motor_set_phase_current_max(ADC_MOTOR_PHASE_CURRENT_MAX);
	push	#0x30
	call	_motor_set_phase_current_max
	pop	a
	C$motor.c$1081$1_0$504 ==.
;	motor.c: 1081: }
	C$motor.c$1081$1_0$504 ==.
	XG$motor_init$0$0 ==.
	ret
	G$motor_set_pwm_duty_cycle_target$0$0 ==.
	C$motor.c$1086$1_0$506 ==.
;	motor.c: 1086: void motor_set_pwm_duty_cycle_target(uint8_t ui8_value)
;	-----------------------------------------
;	 function motor_set_pwm_duty_cycle_target
;	-----------------------------------------
_motor_set_pwm_duty_cycle_target:
	C$motor.c$1088$1_0$506 ==.
;	motor.c: 1088: if(ui8_value > PWM_DUTY_CYCLE_MAX) { ui8_value = PWM_DUTY_CYCLE_MAX; }
	ld	a, (0x03, sp)
	cp	a, #0xfe
	jrule	00102$
	ld	a, #0xfe
	ld	(0x03, sp), a
00102$:
	C$motor.c$1091$1_0$506 ==.
;	motor.c: 1091: if(ui8_motor_controller_state & MOTOR_CONTROLLER_STATE_BRAKE) { ui8_value = 0; }
	ld	a, _ui8_motor_controller_state+0
	bcp	a, #0x02
	jreq	00104$
	clr	(0x03, sp)
00104$:
	C$motor.c$1093$1_0$506 ==.
;	motor.c: 1093: ui8_duty_cycle_target = ui8_value;
	ld	a, (0x03, sp)
	ld	_ui8_duty_cycle_target+0, a
	C$motor.c$1094$1_0$506 ==.
;	motor.c: 1094: }
	C$motor.c$1094$1_0$506 ==.
	XG$motor_set_pwm_duty_cycle_target$0$0 ==.
	ret
	G$motor_set_pwm_duty_cycle_ramp_up_inverse_step$0$0 ==.
	C$motor.c$1099$1_0$510 ==.
;	motor.c: 1099: void motor_set_pwm_duty_cycle_ramp_up_inverse_step(uint16_t ui16_value)
;	-----------------------------------------
;	 function motor_set_pwm_duty_cycle_ramp_up_inverse_step
;	-----------------------------------------
_motor_set_pwm_duty_cycle_ramp_up_inverse_step:
	C$motor.c$1101$1_0$510 ==.
;	motor.c: 1101: ui16_duty_cycle_ramp_up_inverse_step = ui16_value;
	ldw	x, (0x03, sp)
	ldw	_ui16_duty_cycle_ramp_up_inverse_step+0, x
	C$motor.c$1102$1_0$510 ==.
;	motor.c: 1102: }
	C$motor.c$1102$1_0$510 ==.
	XG$motor_set_pwm_duty_cycle_ramp_up_inverse_step$0$0 ==.
	ret
	G$motor_set_pwm_duty_cycle_ramp_down_inverse_step$0$0 ==.
	C$motor.c$1107$1_0$512 ==.
;	motor.c: 1107: void motor_set_pwm_duty_cycle_ramp_down_inverse_step(uint16_t ui16_value)
;	-----------------------------------------
;	 function motor_set_pwm_duty_cycle_ramp_down_inverse_step
;	-----------------------------------------
_motor_set_pwm_duty_cycle_ramp_down_inverse_step:
	C$motor.c$1109$1_0$512 ==.
;	motor.c: 1109: ui16_duty_cycle_ramp_down_inverse_step = ui16_value;
	ldw	x, (0x03, sp)
	ldw	_ui16_duty_cycle_ramp_down_inverse_step+0, x
	C$motor.c$1110$1_0$512 ==.
;	motor.c: 1110: }
	C$motor.c$1110$1_0$512 ==.
	XG$motor_set_pwm_duty_cycle_ramp_down_inverse_step$0$0 ==.
	ret
	G$motor_set_phase_current_max$0$0 ==.
	C$motor.c$1115$1_0$514 ==.
;	motor.c: 1115: void motor_set_phase_current_max(uint8_t ui8_value)
;	-----------------------------------------
;	 function motor_set_phase_current_max
;	-----------------------------------------
_motor_set_phase_current_max:
	C$motor.c$1117$1_0$514 ==.
;	motor.c: 1117: ui8_adc_target_motor_phase_max_current = ui8_adc_motor_phase_current_offset + ui8_value;
	ld	a, _ui8_adc_motor_phase_current_offset+0
	add	a, (0x03, sp)
	ld	_ui8_adc_target_motor_phase_max_current+0, a
	C$motor.c$1118$1_0$514 ==.
;	motor.c: 1118: }
	C$motor.c$1118$1_0$514 ==.
	XG$motor_set_phase_current_max$0$0 ==.
	ret
	G$ui16_motor_get_motor_speed_erps$0$0 ==.
	C$motor.c$1123$1_0$516 ==.
;	motor.c: 1123: uint16_t ui16_motor_get_motor_speed_erps(void)
;	-----------------------------------------
;	 function ui16_motor_get_motor_speed_erps
;	-----------------------------------------
_ui16_motor_get_motor_speed_erps:
	C$motor.c$1125$1_0$516 ==.
;	motor.c: 1125: return ui16_motor_speed_erps;
	ldw	x, _ui16_motor_speed_erps+0
	C$motor.c$1126$1_0$516 ==.
;	motor.c: 1126: }
	C$motor.c$1126$1_0$516 ==.
	XG$ui16_motor_get_motor_speed_erps$0$0 ==.
	ret
	G$read_battery_voltage$0$0 ==.
	C$motor.c$1131$1_0$518 ==.
;	motor.c: 1131: void read_battery_voltage(void)
;	-----------------------------------------
;	 function read_battery_voltage
;	-----------------------------------------
_read_battery_voltage:
	C$motor.c$1134$1_0$518 ==.
;	motor.c: 1134: ui16_adc_battery_voltage_accumulated -= ui16_adc_battery_voltage_accumulated >> READ_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
	ldw	x, _ui16_adc_battery_voltage_accumulated+0
	srlw	x
	srlw	x
	negw	x
	addw	x, _ui16_adc_battery_voltage_accumulated+0
	ldw	_ui16_adc_battery_voltage_accumulated+0, x
	C$motor.c$1135$1_0$518 ==.
;	motor.c: 1135: ui16_adc_battery_voltage_accumulated += ui16_adc_read_battery_voltage_10b();
	call	_ui16_adc_read_battery_voltage_10b
	addw	x, _ui16_adc_battery_voltage_accumulated+0
	ldw	_ui16_adc_battery_voltage_accumulated+0, x
	C$motor.c$1136$1_0$518 ==.
;	motor.c: 1136: ui16_adc_battery_voltage_filtered_10b = ui16_adc_battery_voltage_accumulated >> READ_BATTERY_VOLTAGE_FILTER_COEFFICIENT;
	ldw	x, _ui16_adc_battery_voltage_accumulated+0
	srlw	x
	srlw	x
	ldw	_ui16_adc_battery_voltage_filtered_10b+0, x
	C$motor.c$1137$1_0$518 ==.
;	motor.c: 1137: }
	C$motor.c$1137$1_0$518 ==.
	XG$read_battery_voltage$0$0 ==.
	ret
	G$read_battery_current$0$0 ==.
	C$motor.c$1142$1_0$520 ==.
;	motor.c: 1142: void read_battery_current(void)
;	-----------------------------------------
;	 function read_battery_current
;	-----------------------------------------
_read_battery_current:
	C$motor.c$1145$1_0$520 ==.
;	motor.c: 1145: ui16_adc_battery_current_accumulated -= ui16_adc_battery_current_accumulated >> READ_BATTERY_CURRENT_FILTER_COEFFICIENT;
	ldw	x, _ui16_adc_battery_current_accumulated+0
	srlw	x
	srlw	x
	negw	x
	addw	x, _ui16_adc_battery_current_accumulated+0
	ldw	_ui16_adc_battery_current_accumulated+0, x
	C$motor.c$1146$1_0$520 ==.
;	motor.c: 1146: ui16_adc_battery_current_accumulated += ui16_adc_battery_current_10b;
	ldw	x, _ui16_adc_battery_current_accumulated+0
	addw	x, _ui16_adc_battery_current_10b+0
	ldw	_ui16_adc_battery_current_accumulated+0, x
	C$motor.c$1147$1_0$520 ==.
;	motor.c: 1147: ui8_adc_battery_current_filtered_10b = ui16_adc_battery_current_accumulated >> READ_BATTERY_CURRENT_FILTER_COEFFICIENT;
	ldw	x, _ui16_adc_battery_current_accumulated+0
	srlw	x
	srlw	x
	ld	a, xl
	ld	_ui8_adc_battery_current_filtered_10b+0, a
	C$motor.c$1148$1_0$520 ==.
;	motor.c: 1148: }
	C$motor.c$1148$1_0$520 ==.
	XG$read_battery_current$0$0 ==.
	ret
	G$calc_foc_angle$0$0 ==.
	C$motor.c$1153$1_0$522 ==.
;	motor.c: 1153: void calc_foc_angle(void)
;	-----------------------------------------
;	 function calc_foc_angle
;	-----------------------------------------
_calc_foc_angle:
	sub	sp, #14
	C$motor.c$1164$1_0$522 ==.
;	motor.c: 1164: p_configuration_variables = get_configuration_variables();
	call	_get_configuration_variables
	ldw	(0x0d, sp), x
	C$motor.c$1174$1_0$522 ==.
;	motor.c: 1174: ui16_temp = ui16_adc_battery_voltage_filtered_10b * ADC10BITS_BATTERY_VOLTAGE_PER_ADC_STEP_X512;
	push	_ui16_adc_battery_voltage_filtered_10b+1
	push	_ui16_adc_battery_voltage_filtered_10b+0
	push	#0x2c
	push	#0x00
	call	__mulint
	addw	sp, #4
	ld	a, xh
	C$motor.c$1175$1_0$522 ==.
;	motor.c: 1175: ui16_temp = (ui16_temp >> 8) * ui8_duty_cycle;
	clrw	x
	ld	xl, a
	ld	a, _ui8_duty_cycle+0
	ld	(0x0c, sp), a
	clr	(0x0b, sp)
	ldw	y, (0x0b, sp)
	pushw	y
	pushw	x
	call	__mulint
	addw	sp, #4
	ld	a, xh
	C$motor.c$1176$1_0$522 ==.
;	motor.c: 1176: ui16_e_phase_voltage = ui16_temp >> 9;
	clrw	x
	ld	xl, a
	srlw	x
	ldw	(0x01, sp), x
	C$motor.c$1179$1_0$522 ==.
;	motor.c: 1179: if(ui8_duty_cycle > 10)
	ld	a, _ui8_duty_cycle+0
	cp	a, #0x0a
	jrule	00102$
	C$motor.c$1181$2_0$523 ==.
;	motor.c: 1181: ui16_temp = ((uint16_t) ui8_adc_battery_current_filtered_10b) * ADC_BATTERY_CURRENT_PER_ADC_STEP_X512;
	clrw	x
	ld	a, _ui8_adc_battery_current_filtered_10b+0
	ld	xl, a
	pushw	x
	push	#0x66
	push	#0x00
	call	__mulint
	addw	sp, #4
	C$motor.c$1182$2_0$523 ==.
;	motor.c: 1182: ui32_i_phase_current_x2 = ui16_temp / ui8_duty_cycle;
	clrw	y
	ld	a, _ui8_duty_cycle+0
	ld	yl, a
	divw	x, y
	clrw	y
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
	C$motor.c$1185$2_0$523 ==.
;	motor.c: 1185: p_configuration_variables->ui8_working_status |= 0x40; // bit6 = 1 (motor working)
	ldw	x, (0x0d, sp)
	addw	x, #0x0023
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00103$
00102$:
	C$motor.c$1190$2_0$524 ==.
;	motor.c: 1190: ui32_i_phase_current_x2 = 0;
	clrw	x
	ldw	(0x05, sp), x
	ldw	(0x03, sp), x
	C$motor.c$1193$2_0$524 ==.
;	motor.c: 1193: p_configuration_variables->ui8_working_status &= 0xBF; // bit6 = 0 (motor not working)
	ldw	x, (0x0d, sp)
	addw	x, #0x0023
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00103$:
	C$motor.c$1198$1_0$522 ==.
;	motor.c: 1198: ui32_w_angular_velocity_x16 = ui16_motor_speed_erps * 101;
	push	_ui16_motor_speed_erps+1
	push	_ui16_motor_speed_erps+0
	push	#0x65
	push	#0x00
	call	__mulint
	addw	sp, #4
	clrw	y
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
	C$motor.c$1219$1_0$522 ==.
;	motor.c: 1219: switch (p_configuration_variables->ui8_motor_type)
	ldw	x, (0x0d, sp)
	ld	a, (0xd, x)
	cp	a, #0x00
	jreq	00104$
	cp	a, #0x01
	jreq	00105$
	cp	a, #0x02
	jreq	00106$
	cp	a, #0x03
	jreq	00107$
	jp	00108$
	C$motor.c$1221$2_0$525 ==.
;	motor.c: 1221: case 0:
00104$:
	C$motor.c$1222$2_0$525 ==.
;	motor.c: 1222: ui32_l_x1048576 = 142; // 48 V motor
	ldw	x, #0x008e
	ldw	(0x0d, sp), x
	clrw	x
	ldw	(0x0b, sp), x
	C$motor.c$1223$2_0$525 ==.
;	motor.c: 1223: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS;
	ldw	x, #0x0208
	ldw	_ui16_max_motor_speed_erps+0, x
	C$motor.c$1224$2_0$525 ==.
;	motor.c: 1224: break;
	jp	00109$
	C$motor.c$1226$2_0$525 ==.
;	motor.c: 1226: case 1:
00105$:
	C$motor.c$1227$2_0$525 ==.
;	motor.c: 1227: ui32_l_x1048576 = 80; // 36 V motor
	ldw	x, #0x0050
	ldw	(0x0d, sp), x
	clrw	x
	ldw	(0x0b, sp), x
	C$motor.c$1228$2_0$525 ==.
;	motor.c: 1228: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS;
	ldw	x, #0x0208
	ldw	_ui16_max_motor_speed_erps+0, x
	C$motor.c$1229$2_0$525 ==.
;	motor.c: 1229: break;
	jra	00109$
	C$motor.c$1231$2_0$525 ==.
;	motor.c: 1231: case 2: // experimental high cadence mode for 48 volt motor
00106$:
	C$motor.c$1232$2_0$525 ==.
;	motor.c: 1232: ui32_l_x1048576 = 199;
	ldw	x, #0x00c7
	ldw	(0x0d, sp), x
	clrw	x
	ldw	(0x0b, sp), x
	C$motor.c$1233$2_0$525 ==.
;	motor.c: 1233: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS_EXPERIMENTAL;
	ldw	x, #0x02bc
	ldw	_ui16_max_motor_speed_erps+0, x
	C$motor.c$1234$2_0$525 ==.
;	motor.c: 1234: break;
	jra	00109$
	C$motor.c$1236$2_0$525 ==.
;	motor.c: 1236: case 3: // experimental high cadence mode for 36 volt motor
00107$:
	C$motor.c$1237$2_0$525 ==.
;	motor.c: 1237: ui32_l_x1048576 = 115; // confirmed working with the 36 V motor (only) by user jbalat so far
	ldw	x, #0x0073
	ldw	(0x0d, sp), x
	clrw	x
	ldw	(0x0b, sp), x
	C$motor.c$1238$2_0$525 ==.
;	motor.c: 1238: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS_EXPERIMENTAL;
	ldw	x, #0x02bc
	ldw	_ui16_max_motor_speed_erps+0, x
	C$motor.c$1239$2_0$525 ==.
;	motor.c: 1239: break;
	jra	00109$
	C$motor.c$1241$2_0$525 ==.
;	motor.c: 1241: default:
00108$:
	C$motor.c$1242$2_0$525 ==.
;	motor.c: 1242: ui32_l_x1048576 = 142; // 48 V motor
	ldw	x, #0x008e
	ldw	(0x0d, sp), x
	clrw	x
	ldw	(0x0b, sp), x
	C$motor.c$1243$2_0$525 ==.
;	motor.c: 1243: ui16_max_motor_speed_erps = (uint16_t) MOTOR_OVER_SPEED_ERPS;
	ldw	x, #0x0208
	ldw	_ui16_max_motor_speed_erps+0, x
	C$motor.c$1245$1_0$522 ==.
;	motor.c: 1245: }	
00109$:
	C$motor.c$1248$1_0$522 ==.
;	motor.c: 1248: ui32_temp = ui32_i_phase_current_x2 * ui32_l_x1048576;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	__mullong
	addw	sp, #8
	ldw	(0x0d, sp), x
	C$motor.c$1249$1_0$522 ==.
;	motor.c: 1249: ui32_temp *= ui32_w_angular_velocity_x16;
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	pushw	y
	call	__mullong
	addw	sp, #8
	exgw	x, y
	C$motor.c$1250$1_0$522 ==.
;	motor.c: 1250: ui16_iwl_128 = ui32_temp >> 18;
	srlw	x
	srlw	x
	C$motor.c$1253$1_0$522 ==.
;	motor.c: 1253: ui8_foc_angle = asin_table(ui16_iwl_128 / ui16_e_phase_voltage);
	ldw	y, (0x01, sp)
	divw	x, y
	ld	a, xl
	push	a
	call	_asin_table
	addw	sp, #1
	ld	_ui8_foc_angle+0, a
	C$motor.c$1256$1_0$522 ==.
;	motor.c: 1256: ui16_foc_angle_accumulated -= ui16_foc_angle_accumulated >> 4;
	ldw	x, _ui16_foc_angle_accumulated+0
	ld	a, #0x10
	div	x, a
	negw	x
	addw	x, _ui16_foc_angle_accumulated+0
	ldw	_ui16_foc_angle_accumulated+0, x
	C$motor.c$1257$1_0$522 ==.
;	motor.c: 1257: ui16_foc_angle_accumulated += ui8_foc_angle;
	clrw	x
	ld	a, _ui8_foc_angle+0
	ld	xl, a
	addw	x, _ui16_foc_angle_accumulated+0
	ldw	_ui16_foc_angle_accumulated+0, x
	C$motor.c$1258$1_0$522 ==.
;	motor.c: 1258: ui8_foc_angle = ui16_foc_angle_accumulated >> 4;
	ldw	x, _ui16_foc_angle_accumulated+0
	ld	a, #0x10
	div	x, a
	ld	a, xl
	ld	_ui8_foc_angle+0, a
	C$motor.c$1259$1_0$522 ==.
;	motor.c: 1259: }
	addw	sp, #14
	C$motor.c$1259$1_0$522 ==.
	XG$calc_foc_angle$0$0 ==.
	ret
	G$asin_table$0$0 ==.
	C$motor.c$1264$1_0$527 ==.
;	motor.c: 1264: uint8_t asin_table(uint8_t ui8_inverted_angle_x128) // calc asin also converts the final result to degrees
;	-----------------------------------------
;	 function asin_table
;	-----------------------------------------
_asin_table:
	push	a
	C$motor.c$1268$2_0$528 ==.
;	motor.c: 1268: while(ui8_index < SIN_TABLE_LEN)
	clr	(0x01, sp)
00103$:
	ld	a, (0x01, sp)
	cp	a, #0x3c
	jrnc	00105$
	C$motor.c$1270$2_0$528 ==.
;	motor.c: 1270: if(ui8_inverted_angle_x128 < ui8_sin_table[ui8_index])
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	addw	x, #(_ui8_sin_table + 0)
	ld	a, (x)
	cp	a, (0x04, sp)
	jrugt	00105$
	C$motor.c$1275$2_0$528 ==.
;	motor.c: 1275: ui8_index++;
	inc	(0x01, sp)
	jra	00103$
00105$:
	C$motor.c$1279$1_0$527 ==.
;	motor.c: 1279: return ui8_index--;
	ld	a, (0x01, sp)
	C$motor.c$1280$1_0$527 ==.
;	motor.c: 1280: }
	addw	sp, #1
	C$motor.c$1280$1_0$527 ==.
	XG$asin_table$0$0 ==.
	ret
	G$motor_get_adc_battery_current_filtered_10b$0$0 ==.
	C$motor.c$1285$1_0$531 ==.
;	motor.c: 1285: uint8_t motor_get_adc_battery_current_filtered_10b(void)
;	-----------------------------------------
;	 function motor_get_adc_battery_current_filtered_10b
;	-----------------------------------------
_motor_get_adc_battery_current_filtered_10b:
	C$motor.c$1287$1_0$531 ==.
;	motor.c: 1287: return ui8_adc_battery_current_filtered_10b;
	ld	a, _ui8_adc_battery_current_filtered_10b+0
	C$motor.c$1288$1_0$531 ==.
;	motor.c: 1288: }
	C$motor.c$1288$1_0$531 ==.
	XG$motor_get_adc_battery_current_filtered_10b$0$0 ==.
	ret
	G$motor_get_adc_battery_voltage_filtered_10b$0$0 ==.
	C$motor.c$1293$1_0$533 ==.
;	motor.c: 1293: uint16_t motor_get_adc_battery_voltage_filtered_10b(void)
;	-----------------------------------------
;	 function motor_get_adc_battery_voltage_filtered_10b
;	-----------------------------------------
_motor_get_adc_battery_voltage_filtered_10b:
	C$motor.c$1295$1_0$533 ==.
;	motor.c: 1295: return ui16_adc_battery_voltage_filtered_10b;
	ldw	x, _ui16_adc_battery_voltage_filtered_10b+0
	C$motor.c$1296$1_0$533 ==.
;	motor.c: 1296: }
	C$motor.c$1296$1_0$533 ==.
	XG$motor_get_adc_battery_voltage_filtered_10b$0$0 ==.
	ret
	G$motor_set_adc_battery_voltage_cut_off$0$0 ==.
	C$motor.c$1301$1_0$535 ==.
;	motor.c: 1301: void motor_set_adc_battery_voltage_cut_off(uint8_t ui8_value)
;	-----------------------------------------
;	 function motor_set_adc_battery_voltage_cut_off
;	-----------------------------------------
_motor_set_adc_battery_voltage_cut_off:
	C$motor.c$1303$1_0$535 ==.
;	motor.c: 1303: ui8_adc_battery_voltage_cut_off = ui8_value;
	ld	a, (0x03, sp)
	ld	_ui8_adc_battery_voltage_cut_off+0, a
	C$motor.c$1304$1_0$535 ==.
;	motor.c: 1304: }
	C$motor.c$1304$1_0$535 ==.
	XG$motor_set_adc_battery_voltage_cut_off$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
Fmotor$__xinit_ui8_svm_table$0_0$0 == .
__xinit__ui8_svm_table:
	.db #0xef	; 239
	.db #0xf1	; 241
	.db #0xf2	; 242
	.db #0xf3	; 243
	.db #0xf5	; 245
	.db #0xf6	; 246
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xfa	; 250
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfc	; 252
	.db #0xfb	; 251
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xf9	; 249
	.db #0xf8	; 248
	.db #0xf7	; 247
	.db #0xf5	; 245
	.db #0xf4	; 244
	.db #0xf3	; 243
	.db #0xf2	; 242
	.db #0xf0	; 240
	.db #0xef	; 239
	.db #0xec	; 236
	.db #0xe7	; 231
	.db #0xe3	; 227
	.db #0xde	; 222
	.db #0xd9	; 217
	.db #0xd4	; 212
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0xc5	; 197
	.db #0xbf	; 191
	.db #0xba	; 186
	.db #0xb5	; 181
	.db #0xb0	; 176
	.db #0xaa	; 170
	.db #0xa5	; 165
	.db #0xa0	; 160
	.db #0x9a	; 154
	.db #0x95	; 149
	.db #0x90	; 144
	.db #0x8a	; 138
	.db #0x85	; 133
	.db #0x7f	; 127
	.db #0x7a	; 122	'z'
	.db #0x74	; 116	't'
	.db #0x6f	; 111	'o'
	.db #0x6a	; 106	'j'
	.db #0x64	; 100	'd'
	.db #0x5f	; 95
	.db #0x59	; 89	'Y'
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x4a	; 74	'J'
	.db #0x44	; 68	'D'
	.db #0x3f	; 63
	.db #0x3a	; 58
	.db #0x35	; 53	'5'
	.db #0x30	; 48	'0'
	.db #0x2b	; 43
	.db #0x26	; 38
	.db #0x21	; 33
	.db #0x1c	; 28
	.db #0x17	; 23
	.db #0x12	; 18
	.db #0x10	; 16
	.db #0x0e	; 14
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x11	; 17
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x17	; 23
	.db #0x1c	; 28
	.db #0x21	; 33
	.db #0x26	; 38
	.db #0x2b	; 43
	.db #0x30	; 48	'0'
	.db #0x35	; 53	'5'
	.db #0x3a	; 58
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x4a	; 74	'J'
	.db #0x4f	; 79	'O'
	.db #0x54	; 84	'T'
	.db #0x59	; 89	'Y'
	.db #0x5f	; 95
	.db #0x64	; 100	'd'
	.db #0x6a	; 106	'j'
	.db #0x6f	; 111	'o'
	.db #0x74	; 116	't'
	.db #0x7a	; 122	'z'
	.db #0x7f	; 127
	.db #0x85	; 133
	.db #0x8a	; 138
	.db #0x90	; 144
	.db #0x95	; 149
	.db #0x9a	; 154
	.db #0xa0	; 160
	.db #0xa5	; 165
	.db #0xaa	; 170
	.db #0xb0	; 176
	.db #0xb5	; 181
	.db #0xba	; 186
	.db #0xbf	; 191
	.db #0xc5	; 197
	.db #0xca	; 202
	.db #0xcf	; 207
	.db #0xd4	; 212
	.db #0xd9	; 217
	.db #0xde	; 222
	.db #0xe3	; 227
	.db #0xe7	; 231
	.db #0xec	; 236
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xf2	; 242
	.db #0xf3	; 243
	.db #0xf4	; 244
	.db #0xf5	; 245
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfd	; 253
	.db #0xfd	; 253
	.db #0xfc	; 252
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfa	; 250
	.db #0xf9	; 249
	.db #0xf8	; 248
	.db #0xf7	; 247
	.db #0xf6	; 246
	.db #0xf5	; 245
	.db #0xf3	; 243
	.db #0xf2	; 242
	.db #0xf1	; 241
	.db #0xef	; 239
	.db #0xee	; 238
Fmotor$__xinit_ui8_sin_table$0_0$0 == .
__xinit__ui8_sin_table:
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x13	; 19
	.db #0x16	; 22
	.db #0x19	; 25
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x22	; 34
	.db #0x25	; 37
	.db #0x28	; 40
	.db #0x2b	; 43
	.db #0x2e	; 46
	.db #0x31	; 49	'1'
	.db #0x34	; 52	'4'
	.db #0x36	; 54	'6'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x47	; 71	'G'
	.db #0x49	; 73	'I'
	.db #0x4c	; 76	'L'
	.db #0x4e	; 78	'N'
	.db #0x51	; 81	'Q'
	.db #0x53	; 83	'S'
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x5a	; 90	'Z'
	.db #0x5c	; 92
	.db #0x5f	; 95
	.db #0x61	; 97	'a'
	.db #0x63	; 99	'c'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x68	; 104	'h'
	.db #0x6a	; 106	'j'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x6f	; 111	'o'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x7d	; 125
	.db #0x7d	; 125
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7f	; 127
Fmotor$__xinit_ui16_PWM_cycles_counter$0_0$0 == .
__xinit__ui16_PWM_cycles_counter:
	.dw #0x0001
Fmotor$__xinit_ui16_PWM_cycles_counter_6$0_0$0 == .
__xinit__ui16_PWM_cycles_counter_6:
	.dw #0x0001
Fmotor$__xinit_ui16_PWM_cycles_counter_total$0_0$0 == .
__xinit__ui16_PWM_cycles_counter_total:
	.dw #0xffff
Fmotor$__xinit_ui16_max_motor_speed_erps$0_0$0 == .
__xinit__ui16_max_motor_speed_erps:
	.dw #0x0208
Fmotor$__xinit_ui16_motor_speed_erps$0_0$0 == .
__xinit__ui16_motor_speed_erps:
	.dw #0x0000
Fmotor$__xinit_ui8_svm_table_index$0_0$0 == .
__xinit__ui8_svm_table_index:
	.db #0x00	; 0
Fmotor$__xinit_ui8_motor_rotor_absolute_angle$0_0$0 == .
__xinit__ui8_motor_rotor_absolute_angle:
	.db #0x00	; 0
Fmotor$__xinit_ui8_motor_rotor_angle$0_0$0 == .
__xinit__ui8_motor_rotor_angle:
	.db #0x00	; 0
Fmotor$__xinit_ui8_foc_angle$0_0$0 == .
__xinit__ui8_foc_angle:
	.db #0x00	; 0
Fmotor$__xinit_ui8_interpolation_angle$0_0$0 == .
__xinit__ui8_interpolation_angle:
	.db #0x00	; 0
Fmotor$__xinit_ui16_foc_angle_accumulated$0_0$0 == .
__xinit__ui16_foc_angle_accumulated:
	.dw #0x0000
Fmotor$__xinit_ui8_motor_commutation_type$0_0$0 == .
__xinit__ui8_motor_commutation_type:
	.db #0x01	; 1
Fmotor$__xinit_ui8_motor_controller_state$0_0$0 == .
__xinit__ui8_motor_controller_state:
	.db #0x01	; 1
Fmotor$__xinit_ui8_hall_sensors_state$0_0$0 == .
__xinit__ui8_hall_sensors_state:
	.db #0x00	; 0
Fmotor$__xinit_ui8_hall_sensors_state_last$0_0$0 == .
__xinit__ui8_hall_sensors_state_last:
	.db #0x00	; 0
Fmotor$__xinit_ui8_half_erps_flag$0_0$0 == .
__xinit__ui8_half_erps_flag:
	.db #0x00	; 0
Fmotor$__xinit_ui8_duty_cycle$0_0$0 == .
__xinit__ui8_duty_cycle:
	.db #0x00	; 0
Fmotor$__xinit_ui8_duty_cycle_target$0_0$0 == .
__xinit__ui8_duty_cycle_target:
	.db #0x00	; 0
Fmotor$__xinit_ui16_duty_cycle_ramp_up_inverse_step$0_0$0 == .
__xinit__ui16_duty_cycle_ramp_up_inverse_step:
	.dw #0x0000
Fmotor$__xinit_ui16_duty_cycle_ramp_down_inverse_step$0_0$0 == .
__xinit__ui16_duty_cycle_ramp_down_inverse_step:
	.dw #0x0000
Fmotor$__xinit_ui16_counter_duty_cycle_ramp_up$0_0$0 == .
__xinit__ui16_counter_duty_cycle_ramp_up:
	.dw #0x0000
Fmotor$__xinit_ui16_counter_duty_cycle_ramp_down$0_0$0 == .
__xinit__ui16_counter_duty_cycle_ramp_down:
	.dw #0x0000
Fmotor$__xinit_ui8_phase_a_voltage$0_0$0 == .
__xinit__ui8_phase_a_voltage:
	.db #0x00	; 0
Fmotor$__xinit_ui8_phase_b_voltage$0_0$0 == .
__xinit__ui8_phase_b_voltage:
	.db #0x00	; 0
Fmotor$__xinit_ui8_phase_c_voltage$0_0$0 == .
__xinit__ui8_phase_c_voltage:
	.db #0x00	; 0
Fmotor$__xinit_ui16_counter_adc_battery_current_ramp_up$0_0$0 == .
__xinit__ui16_counter_adc_battery_current_ramp_up:
	.dw #0x0000
Fmotor$__xinit_ui8_controller_adc_battery_max_current$0_0$0 == .
__xinit__ui8_controller_adc_battery_max_current:
	.db #0x00	; 0
Fmotor$__xinit_ui16_counter_adc_motor_current_ramp_up$0_0$0 == .
__xinit__ui16_counter_adc_motor_current_ramp_up:
	.dw #0x0000
Fmotor$__xinit_ui8_controller_adc_motor_max_current$0_0$0 == .
__xinit__ui8_controller_adc_motor_max_current:
	.db #0x00	; 0
Fmotor$__xinit_ui8_first_time_run_flag$0_0$0 == .
__xinit__ui8_first_time_run_flag:
	.db #0x01	; 1
Fmotor$__xinit_ui8_adc_battery_voltage_cut_off$0_0$0 == .
__xinit__ui8_adc_battery_voltage_cut_off:
	.db #0xff	; 255
Fmotor$__xinit_ui16_adc_battery_voltage_accumulated$0_0$0 == .
__xinit__ui16_adc_battery_voltage_accumulated:
	.dw #0x0000
Fmotor$__xinit_ui16_adc_battery_voltage_filtered_10b$0_0$0 == .
__xinit__ui16_adc_battery_voltage_filtered_10b:
	.dw #0x0000
Fmotor$__xinit_ui16_adc_battery_current_accumulated$0_0$0 == .
__xinit__ui16_adc_battery_current_accumulated:
	.dw #0x0000
Fmotor$__xinit_ui8_adc_battery_current_filtered_10b$0_0$0 == .
__xinit__ui8_adc_battery_current_filtered_10b:
	.db #0x00	; 0
Fmotor$__xinit_ui16_adc_battery_current_10b$0_0$0 == .
__xinit__ui16_adc_battery_current_10b:
	.dw #0x0000
Fmotor$__xinit_ui8_adc_battery_current$0_0$0 == .
__xinit__ui8_adc_battery_current:
	.db #0x00	; 0
Fmotor$__xinit_ui8_adc_motor_phase_current$0_0$0 == .
__xinit__ui8_adc_motor_phase_current:
	.db #0x00	; 0
Fmotor$__xinit_ui8_current_controller_counter$0_0$0 == .
__xinit__ui8_current_controller_counter:
	.db #0x00	; 0
Fmotor$__xinit_ui8_current_controller_flag$0_0$0 == .
__xinit__ui8_current_controller_flag:
	.db #0x00	; 0
Fmotor$__xinit_ui8_adc_target_motor_phase_max_current$0_0$0 == .
__xinit__ui8_adc_target_motor_phase_max_current:
	.db #0x00	; 0
Fmotor$__xinit_ui8_adc_motor_phase_current_offset$0_0$0 == .
__xinit__ui8_adc_motor_phase_current_offset:
	.db #0x00	; 0
Fmotor$__xinit_ui8_pas_state$0_0$0 == .
__xinit__ui8_pas_state:
	.db #0x00	; 0
Fmotor$__xinit_ui8_pas_state_old$0_0$0 == .
__xinit__ui8_pas_state_old:
	.db #0x00	; 0
Fmotor$__xinit_ui8_pas_after_first_pulse$0_0$0 == .
__xinit__ui8_pas_after_first_pulse:
	.db #0x00	; 0
Fmotor$__xinit_ui16_pas_counter$0_0$0 == .
__xinit__ui16_pas_counter:
	.dw #0x249f
Fmotor$__xinit_ui16_torque_sensor_throttle_processed_value$0_0$0 == .
__xinit__ui16_torque_sensor_throttle_processed_value:
	.dw #0x0000
Fmotor$__xinit_ui8_torque_sensor_pas_signal_change_counter$0_0$0 == .
__xinit__ui8_torque_sensor_pas_signal_change_counter:
	.db #0x00	; 0
Fmotor$__xinit_ui16_torque_sensor_throttle_max_value$0_0$0 == .
__xinit__ui16_torque_sensor_throttle_max_value:
	.dw #0x0000
Fmotor$__xinit_ui16_torque_sensor_throttle_value$0_0$0 == .
__xinit__ui16_torque_sensor_throttle_value:
	.dw #0x0000
Fmotor$__xinit_ui8_wheel_speed_sensor_state$0_0$0 == .
__xinit__ui8_wheel_speed_sensor_state:
	.db #0x01	; 1
Fmotor$__xinit_ui8_wheel_speed_sensor_state_old$0_0$0 == .
__xinit__ui8_wheel_speed_sensor_state_old:
	.db #0x01	; 1
Fmotor$__xinit_ui16_wheel_speed_sensor_counter$0_0$0 == .
__xinit__ui16_wheel_speed_sensor_counter:
	.dw #0x0000
Fmotor$__xinit_ui8_wheel_speed_sensor_change_counter$0_0$0 == .
__xinit__ui8_wheel_speed_sensor_change_counter:
	.db #0x00	; 0
	.area CABS (ABS)
