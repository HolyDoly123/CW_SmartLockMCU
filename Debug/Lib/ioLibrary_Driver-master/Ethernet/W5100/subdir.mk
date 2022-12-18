################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/ioLibrary_Driver-master/Ethernet/W5100/w5100.c 

OBJS += \
./Lib/ioLibrary_Driver-master/Ethernet/W5100/w5100.o 

C_DEPS += \
./Lib/ioLibrary_Driver-master/Ethernet/W5100/w5100.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/ioLibrary_Driver-master/Ethernet/W5100/%.o Lib/ioLibrary_Driver-master/Ethernet/W5100/%.su: ../Lib/ioLibrary_Driver-master/Ethernet/W5100/%.c Lib/ioLibrary_Driver-master/Ethernet/W5100/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Projects/STM32CubeIDE/WorkspaceMain/SmartLockF411CEU6/Lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-ioLibrary_Driver-2d-master-2f-Ethernet-2f-W5100

clean-Lib-2f-ioLibrary_Driver-2d-master-2f-Ethernet-2f-W5100:
	-$(RM) ./Lib/ioLibrary_Driver-master/Ethernet/W5100/w5100.d ./Lib/ioLibrary_Driver-master/Ethernet/W5100/w5100.o ./Lib/ioLibrary_Driver-master/Ethernet/W5100/w5100.su

.PHONY: clean-Lib-2f-ioLibrary_Driver-2d-master-2f-Ethernet-2f-W5100

