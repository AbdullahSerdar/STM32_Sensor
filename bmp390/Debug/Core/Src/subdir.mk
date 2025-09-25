################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/driver_bmp390.c \
../Core/Src/driver_bmp390_basic.c \
../Core/Src/driver_bmp390_fifo.c \
../Core/Src/driver_bmp390_interface_template.c \
../Core/Src/driver_bmp390_interrupt.c \
../Core/Src/driver_bmp390_shot.c \
../Core/Src/main.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c 

OBJS += \
./Core/Src/driver_bmp390.o \
./Core/Src/driver_bmp390_basic.o \
./Core/Src/driver_bmp390_fifo.o \
./Core/Src/driver_bmp390_interface_template.o \
./Core/Src/driver_bmp390_interrupt.o \
./Core/Src/driver_bmp390_shot.o \
./Core/Src/main.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o 

C_DEPS += \
./Core/Src/driver_bmp390.d \
./Core/Src/driver_bmp390_basic.d \
./Core/Src/driver_bmp390_fifo.d \
./Core/Src/driver_bmp390_interface_template.d \
./Core/Src/driver_bmp390_interrupt.d \
./Core/Src/driver_bmp390_shot.d \
./Core/Src/main.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/driver_bmp390.d ./Core/Src/driver_bmp390.o ./Core/Src/driver_bmp390.su ./Core/Src/driver_bmp390_basic.d ./Core/Src/driver_bmp390_basic.o ./Core/Src/driver_bmp390_basic.su ./Core/Src/driver_bmp390_fifo.d ./Core/Src/driver_bmp390_fifo.o ./Core/Src/driver_bmp390_fifo.su ./Core/Src/driver_bmp390_interface_template.d ./Core/Src/driver_bmp390_interface_template.o ./Core/Src/driver_bmp390_interface_template.su ./Core/Src/driver_bmp390_interrupt.d ./Core/Src/driver_bmp390_interrupt.o ./Core/Src/driver_bmp390_interrupt.su ./Core/Src/driver_bmp390_shot.d ./Core/Src/driver_bmp390_shot.o ./Core/Src/driver_bmp390_shot.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/stm32f4xx_hal_msp.d ./Core/Src/stm32f4xx_hal_msp.o ./Core/Src/stm32f4xx_hal_msp.su ./Core/Src/stm32f4xx_it.d ./Core/Src/stm32f4xx_it.o ./Core/Src/stm32f4xx_it.su ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su

.PHONY: clean-Core-2f-Src

