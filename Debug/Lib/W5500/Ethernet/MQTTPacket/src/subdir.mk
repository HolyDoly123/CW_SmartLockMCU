################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectClient.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectServer.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTDeserializePublish.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTFormat.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTPacket.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTSerializePublish.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeClient.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeServer.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeClient.c \
../Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeServer.c 

OBJS += \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectClient.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectServer.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTDeserializePublish.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTFormat.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTPacket.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSerializePublish.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeClient.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeServer.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeClient.o \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeServer.o 

C_DEPS += \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectClient.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectServer.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTDeserializePublish.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTFormat.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTPacket.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSerializePublish.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeClient.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeServer.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeClient.d \
./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/W5500/Ethernet/MQTTPacket/src/%.o Lib/W5500/Ethernet/MQTTPacket/src/%.su: ../Lib/W5500/Ethernet/MQTTPacket/src/%.c Lib/W5500/Ethernet/MQTTPacket/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Projects/STM32CubeIDE/WorkspaceMain/SmartLockF411CEU6/Lib" -I"D:/Projects/STM32CubeIDE/WorkspaceMain/SmartLockF411CEU6/Lib/W5500" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-W5500-2f-Ethernet-2f-MQTTPacket-2f-src

clean-Lib-2f-W5500-2f-Ethernet-2f-MQTTPacket-2f-src:
	-$(RM) ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectClient.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectClient.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectClient.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectServer.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectServer.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTConnectServer.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTDeserializePublish.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTDeserializePublish.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTDeserializePublish.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTFormat.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTFormat.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTFormat.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTPacket.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTPacket.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTPacket.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSerializePublish.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSerializePublish.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSerializePublish.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeClient.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeClient.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeClient.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeServer.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeServer.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTSubscribeServer.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeClient.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeClient.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeClient.su ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeServer.d ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeServer.o ./Lib/W5500/Ethernet/MQTTPacket/src/MQTTUnsubscribeServer.su

.PHONY: clean-Lib-2f-W5500-2f-Ethernet-2f-MQTTPacket-2f-src

