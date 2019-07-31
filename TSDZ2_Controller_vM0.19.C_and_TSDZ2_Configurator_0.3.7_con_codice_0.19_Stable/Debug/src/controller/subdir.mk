################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../src/controller/adc.asm \
../src/controller/brake.asm \
../src/controller/ebike_app.asm \
../src/controller/eeprom.asm \
../src/controller/lights.asm \
../src/controller/main.asm \
../src/controller/motor.asm \
../src/controller/pas.asm \
../src/controller/pwm.asm \
../src/controller/timers.asm \
../src/controller/torque_sensor.asm \
../src/controller/uart.asm \
../src/controller/utils.asm \
../src/controller/watchdog.asm \
../src/controller/wheel_speed_sensor.asm 

C_SRCS += \
../src/controller/adc.c \
../src/controller/adc_18A.c \
../src/controller/adc_new.c \
../src/controller/brake.c \
../src/controller/ebike_app.c \
../src/controller/ebike_app_18A.c \
../src/controller/ebike_app_19.c \
../src/controller/eeprom.c \
../src/controller/lights.c \
../src/controller/main.c \
../src/controller/motor.c \
../src/controller/motor_18A.c \
../src/controller/motor_19.c \
../src/controller/pas.c \
../src/controller/pwm.c \
../src/controller/timers.c \
../src/controller/torque_sensor.c \
../src/controller/uart.c \
../src/controller/utils.c \
../src/controller/watchdog.c \
../src/controller/wheel_speed_sensor.c 

OBJS += \
./src/controller/adc.o \
./src/controller/adc_18A.o \
./src/controller/adc_new.o \
./src/controller/brake.o \
./src/controller/ebike_app.o \
./src/controller/ebike_app_18A.o \
./src/controller/ebike_app_19.o \
./src/controller/eeprom.o \
./src/controller/lights.o \
./src/controller/main.o \
./src/controller/motor.o \
./src/controller/motor_18A.o \
./src/controller/motor_19.o \
./src/controller/pas.o \
./src/controller/pwm.o \
./src/controller/timers.o \
./src/controller/torque_sensor.o \
./src/controller/uart.o \
./src/controller/utils.o \
./src/controller/watchdog.o \
./src/controller/wheel_speed_sensor.o 

C_DEPS += \
./src/controller/adc.d \
./src/controller/adc_18A.d \
./src/controller/adc_new.d \
./src/controller/brake.d \
./src/controller/ebike_app.d \
./src/controller/ebike_app_18A.d \
./src/controller/ebike_app_19.d \
./src/controller/eeprom.d \
./src/controller/lights.d \
./src/controller/main.d \
./src/controller/motor.d \
./src/controller/motor_18A.d \
./src/controller/motor_19.d \
./src/controller/pas.d \
./src/controller/pwm.d \
./src/controller/timers.d \
./src/controller/torque_sensor.d \
./src/controller/uart.d \
./src/controller/utils.d \
./src/controller/watchdog.d \
./src/controller/wheel_speed_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
src/controller/%.o: ../src/controller/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/controller/%.o: ../src/controller/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


