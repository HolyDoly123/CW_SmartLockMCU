################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/W5500/Ethernet/MQTTClient.c \
../Lib/W5500/Ethernet/dns.c \
../Lib/W5500/Ethernet/ftpc.c \
../Lib/W5500/Ethernet/ftpd.c \
../Lib/W5500/Ethernet/httpParser.c \
../Lib/W5500/Ethernet/httpServer.c \
../Lib/W5500/Ethernet/httpUtil.c \
../Lib/W5500/Ethernet/loopback.c \
../Lib/W5500/Ethernet/mqtt_interface.c \
../Lib/W5500/Ethernet/multicast.c \
../Lib/W5500/Ethernet/netutil.c \
../Lib/W5500/Ethernet/snmp.c \
../Lib/W5500/Ethernet/snmp_custom.c \
../Lib/W5500/Ethernet/sntp.c \
../Lib/W5500/Ethernet/socket.c \
../Lib/W5500/Ethernet/tftp.c \
../Lib/W5500/Ethernet/w5500.c \
../Lib/W5500/Ethernet/wizchip_conf.c 

OBJS += \
./Lib/W5500/Ethernet/MQTTClient.o \
./Lib/W5500/Ethernet/dns.o \
./Lib/W5500/Ethernet/ftpc.o \
./Lib/W5500/Ethernet/ftpd.o \
./Lib/W5500/Ethernet/httpParser.o \
./Lib/W5500/Ethernet/httpServer.o \
./Lib/W5500/Ethernet/httpUtil.o \
./Lib/W5500/Ethernet/loopback.o \
./Lib/W5500/Ethernet/mqtt_interface.o \
./Lib/W5500/Ethernet/multicast.o \
./Lib/W5500/Ethernet/netutil.o \
./Lib/W5500/Ethernet/snmp.o \
./Lib/W5500/Ethernet/snmp_custom.o \
./Lib/W5500/Ethernet/sntp.o \
./Lib/W5500/Ethernet/socket.o \
./Lib/W5500/Ethernet/tftp.o \
./Lib/W5500/Ethernet/w5500.o \
./Lib/W5500/Ethernet/wizchip_conf.o 

C_DEPS += \
./Lib/W5500/Ethernet/MQTTClient.d \
./Lib/W5500/Ethernet/dns.d \
./Lib/W5500/Ethernet/ftpc.d \
./Lib/W5500/Ethernet/ftpd.d \
./Lib/W5500/Ethernet/httpParser.d \
./Lib/W5500/Ethernet/httpServer.d \
./Lib/W5500/Ethernet/httpUtil.d \
./Lib/W5500/Ethernet/loopback.d \
./Lib/W5500/Ethernet/mqtt_interface.d \
./Lib/W5500/Ethernet/multicast.d \
./Lib/W5500/Ethernet/netutil.d \
./Lib/W5500/Ethernet/snmp.d \
./Lib/W5500/Ethernet/snmp_custom.d \
./Lib/W5500/Ethernet/sntp.d \
./Lib/W5500/Ethernet/socket.d \
./Lib/W5500/Ethernet/tftp.d \
./Lib/W5500/Ethernet/w5500.d \
./Lib/W5500/Ethernet/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/W5500/Ethernet/%.o Lib/W5500/Ethernet/%.su: ../Lib/W5500/Ethernet/%.c Lib/W5500/Ethernet/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Projects/STM32CubeIDE/WorkspaceMain/SmartLockF411CEU6/Lib" -I"D:/Projects/STM32CubeIDE/WorkspaceMain/SmartLockF411CEU6/Lib/W5500" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-W5500-2f-Ethernet

clean-Lib-2f-W5500-2f-Ethernet:
	-$(RM) ./Lib/W5500/Ethernet/MQTTClient.d ./Lib/W5500/Ethernet/MQTTClient.o ./Lib/W5500/Ethernet/MQTTClient.su ./Lib/W5500/Ethernet/dns.d ./Lib/W5500/Ethernet/dns.o ./Lib/W5500/Ethernet/dns.su ./Lib/W5500/Ethernet/ftpc.d ./Lib/W5500/Ethernet/ftpc.o ./Lib/W5500/Ethernet/ftpc.su ./Lib/W5500/Ethernet/ftpd.d ./Lib/W5500/Ethernet/ftpd.o ./Lib/W5500/Ethernet/ftpd.su ./Lib/W5500/Ethernet/httpParser.d ./Lib/W5500/Ethernet/httpParser.o ./Lib/W5500/Ethernet/httpParser.su ./Lib/W5500/Ethernet/httpServer.d ./Lib/W5500/Ethernet/httpServer.o ./Lib/W5500/Ethernet/httpServer.su ./Lib/W5500/Ethernet/httpUtil.d ./Lib/W5500/Ethernet/httpUtil.o ./Lib/W5500/Ethernet/httpUtil.su ./Lib/W5500/Ethernet/loopback.d ./Lib/W5500/Ethernet/loopback.o ./Lib/W5500/Ethernet/loopback.su ./Lib/W5500/Ethernet/mqtt_interface.d ./Lib/W5500/Ethernet/mqtt_interface.o ./Lib/W5500/Ethernet/mqtt_interface.su ./Lib/W5500/Ethernet/multicast.d ./Lib/W5500/Ethernet/multicast.o ./Lib/W5500/Ethernet/multicast.su ./Lib/W5500/Ethernet/netutil.d ./Lib/W5500/Ethernet/netutil.o ./Lib/W5500/Ethernet/netutil.su ./Lib/W5500/Ethernet/snmp.d ./Lib/W5500/Ethernet/snmp.o ./Lib/W5500/Ethernet/snmp.su ./Lib/W5500/Ethernet/snmp_custom.d ./Lib/W5500/Ethernet/snmp_custom.o ./Lib/W5500/Ethernet/snmp_custom.su ./Lib/W5500/Ethernet/sntp.d ./Lib/W5500/Ethernet/sntp.o ./Lib/W5500/Ethernet/sntp.su ./Lib/W5500/Ethernet/socket.d ./Lib/W5500/Ethernet/socket.o ./Lib/W5500/Ethernet/socket.su ./Lib/W5500/Ethernet/tftp.d ./Lib/W5500/Ethernet/tftp.o ./Lib/W5500/Ethernet/tftp.su ./Lib/W5500/Ethernet/w5500.d ./Lib/W5500/Ethernet/w5500.o ./Lib/W5500/Ethernet/w5500.su ./Lib/W5500/Ethernet/wizchip_conf.d ./Lib/W5500/Ethernet/wizchip_conf.o ./Lib/W5500/Ethernet/wizchip_conf.su

.PHONY: clean-Lib-2f-W5500-2f-Ethernet

