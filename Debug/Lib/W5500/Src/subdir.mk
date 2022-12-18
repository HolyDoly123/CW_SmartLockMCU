################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/W5500/Src/md5.c \
../Lib/W5500/Src/socket.c \
../Lib/W5500/Src/w5500.c \
../Lib/W5500/Src/wizchip_conf.c 

OBJS += \
./Lib/W5500/Src/md5.o \
./Lib/W5500/Src/socket.o \
./Lib/W5500/Src/w5500.o \
./Lib/W5500/Src/wizchip_conf.o 

C_DEPS += \
./Lib/W5500/Src/md5.d \
./Lib/W5500/Src/socket.d \
./Lib/W5500/Src/w5500.d \
./Lib/W5500/Src/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/W5500/Src/%.o Lib/W5500/Src/%.su: ../Lib/W5500/Src/%.c Lib/W5500/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Projects/STM32CubeIDE/WorkspaceMain/SmartLockF411CEU6/Lib/W5500/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-W5500-2f-Src

clean-Lib-2f-W5500-2f-Src:
	-$(RM) ./Lib/W5500/Src/md5.d ./Lib/W5500/Src/md5.o ./Lib/W5500/Src/md5.su ./Lib/W5500/Src/socket.d ./Lib/W5500/Src/socket.o ./Lib/W5500/Src/socket.su ./Lib/W5500/Src/w5500.d ./Lib/W5500/Src/w5500.o ./Lib/W5500/Src/w5500.su ./Lib/W5500/Src/wizchip_conf.d ./Lib/W5500/Src/wizchip_conf.o ./Lib/W5500/Src/wizchip_conf.su

.PHONY: clean-Lib-2f-W5500-2f-Src

