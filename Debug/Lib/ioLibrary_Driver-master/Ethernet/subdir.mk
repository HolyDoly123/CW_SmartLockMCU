################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/ioLibrary_Driver-master/Ethernet/MQTTClient.c \
../Lib/ioLibrary_Driver-master/Ethernet/dhcp.c \
../Lib/ioLibrary_Driver-master/Ethernet/dns.c \
../Lib/ioLibrary_Driver-master/Ethernet/ftpc.c \
../Lib/ioLibrary_Driver-master/Ethernet/ftpd.c \
../Lib/ioLibrary_Driver-master/Ethernet/httpParser.c \
../Lib/ioLibrary_Driver-master/Ethernet/httpServer.c \
../Lib/ioLibrary_Driver-master/Ethernet/httpUtil.c \
../Lib/ioLibrary_Driver-master/Ethernet/loopback.c \
../Lib/ioLibrary_Driver-master/Ethernet/mqtt_interface.c \
../Lib/ioLibrary_Driver-master/Ethernet/multicast.c \
../Lib/ioLibrary_Driver-master/Ethernet/netutil.c \
../Lib/ioLibrary_Driver-master/Ethernet/snmp.c \
../Lib/ioLibrary_Driver-master/Ethernet/snmp_custom.c \
../Lib/ioLibrary_Driver-master/Ethernet/sntp.c \
../Lib/ioLibrary_Driver-master/Ethernet/socket.c \
../Lib/ioLibrary_Driver-master/Ethernet/tftp.c \
../Lib/ioLibrary_Driver-master/Ethernet/w5500.c \
../Lib/ioLibrary_Driver-master/Ethernet/wizchip_conf.c 

OBJS += \
./Lib/ioLibrary_Driver-master/Ethernet/MQTTClient.o \
./Lib/ioLibrary_Driver-master/Ethernet/dhcp.o \
./Lib/ioLibrary_Driver-master/Ethernet/dns.o \
./Lib/ioLibrary_Driver-master/Ethernet/ftpc.o \
./Lib/ioLibrary_Driver-master/Ethernet/ftpd.o \
./Lib/ioLibrary_Driver-master/Ethernet/httpParser.o \
./Lib/ioLibrary_Driver-master/Ethernet/httpServer.o \
./Lib/ioLibrary_Driver-master/Ethernet/httpUtil.o \
./Lib/ioLibrary_Driver-master/Ethernet/loopback.o \
./Lib/ioLibrary_Driver-master/Ethernet/mqtt_interface.o \
./Lib/ioLibrary_Driver-master/Ethernet/multicast.o \
./Lib/ioLibrary_Driver-master/Ethernet/netutil.o \
./Lib/ioLibrary_Driver-master/Ethernet/snmp.o \
./Lib/ioLibrary_Driver-master/Ethernet/snmp_custom.o \
./Lib/ioLibrary_Driver-master/Ethernet/sntp.o \
./Lib/ioLibrary_Driver-master/Ethernet/socket.o \
./Lib/ioLibrary_Driver-master/Ethernet/tftp.o \
./Lib/ioLibrary_Driver-master/Ethernet/w5500.o \
./Lib/ioLibrary_Driver-master/Ethernet/wizchip_conf.o 

C_DEPS += \
./Lib/ioLibrary_Driver-master/Ethernet/MQTTClient.d \
./Lib/ioLibrary_Driver-master/Ethernet/dhcp.d \
./Lib/ioLibrary_Driver-master/Ethernet/dns.d \
./Lib/ioLibrary_Driver-master/Ethernet/ftpc.d \
./Lib/ioLibrary_Driver-master/Ethernet/ftpd.d \
./Lib/ioLibrary_Driver-master/Ethernet/httpParser.d \
./Lib/ioLibrary_Driver-master/Ethernet/httpServer.d \
./Lib/ioLibrary_Driver-master/Ethernet/httpUtil.d \
./Lib/ioLibrary_Driver-master/Ethernet/loopback.d \
./Lib/ioLibrary_Driver-master/Ethernet/mqtt_interface.d \
./Lib/ioLibrary_Driver-master/Ethernet/multicast.d \
./Lib/ioLibrary_Driver-master/Ethernet/netutil.d \
./Lib/ioLibrary_Driver-master/Ethernet/snmp.d \
./Lib/ioLibrary_Driver-master/Ethernet/snmp_custom.d \
./Lib/ioLibrary_Driver-master/Ethernet/sntp.d \
./Lib/ioLibrary_Driver-master/Ethernet/socket.d \
./Lib/ioLibrary_Driver-master/Ethernet/tftp.d \
./Lib/ioLibrary_Driver-master/Ethernet/w5500.d \
./Lib/ioLibrary_Driver-master/Ethernet/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/ioLibrary_Driver-master/Ethernet/%.o Lib/ioLibrary_Driver-master/Ethernet/%.su: ../Lib/ioLibrary_Driver-master/Ethernet/%.c Lib/ioLibrary_Driver-master/Ethernet/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Projects/STM32CubeIDE/WorkspaceMain/SmartLockF411CEU6/Lib" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lib-2f-ioLibrary_Driver-2d-master-2f-Ethernet

clean-Lib-2f-ioLibrary_Driver-2d-master-2f-Ethernet:
	-$(RM) ./Lib/ioLibrary_Driver-master/Ethernet/MQTTClient.d ./Lib/ioLibrary_Driver-master/Ethernet/MQTTClient.o ./Lib/ioLibrary_Driver-master/Ethernet/MQTTClient.su ./Lib/ioLibrary_Driver-master/Ethernet/dhcp.d ./Lib/ioLibrary_Driver-master/Ethernet/dhcp.o ./Lib/ioLibrary_Driver-master/Ethernet/dhcp.su ./Lib/ioLibrary_Driver-master/Ethernet/dns.d ./Lib/ioLibrary_Driver-master/Ethernet/dns.o ./Lib/ioLibrary_Driver-master/Ethernet/dns.su ./Lib/ioLibrary_Driver-master/Ethernet/ftpc.d ./Lib/ioLibrary_Driver-master/Ethernet/ftpc.o ./Lib/ioLibrary_Driver-master/Ethernet/ftpc.su ./Lib/ioLibrary_Driver-master/Ethernet/ftpd.d ./Lib/ioLibrary_Driver-master/Ethernet/ftpd.o ./Lib/ioLibrary_Driver-master/Ethernet/ftpd.su ./Lib/ioLibrary_Driver-master/Ethernet/httpParser.d ./Lib/ioLibrary_Driver-master/Ethernet/httpParser.o ./Lib/ioLibrary_Driver-master/Ethernet/httpParser.su ./Lib/ioLibrary_Driver-master/Ethernet/httpServer.d ./Lib/ioLibrary_Driver-master/Ethernet/httpServer.o ./Lib/ioLibrary_Driver-master/Ethernet/httpServer.su ./Lib/ioLibrary_Driver-master/Ethernet/httpUtil.d ./Lib/ioLibrary_Driver-master/Ethernet/httpUtil.o ./Lib/ioLibrary_Driver-master/Ethernet/httpUtil.su ./Lib/ioLibrary_Driver-master/Ethernet/loopback.d ./Lib/ioLibrary_Driver-master/Ethernet/loopback.o ./Lib/ioLibrary_Driver-master/Ethernet/loopback.su ./Lib/ioLibrary_Driver-master/Ethernet/mqtt_interface.d ./Lib/ioLibrary_Driver-master/Ethernet/mqtt_interface.o ./Lib/ioLibrary_Driver-master/Ethernet/mqtt_interface.su ./Lib/ioLibrary_Driver-master/Ethernet/multicast.d ./Lib/ioLibrary_Driver-master/Ethernet/multicast.o ./Lib/ioLibrary_Driver-master/Ethernet/multicast.su ./Lib/ioLibrary_Driver-master/Ethernet/netutil.d ./Lib/ioLibrary_Driver-master/Ethernet/netutil.o ./Lib/ioLibrary_Driver-master/Ethernet/netutil.su ./Lib/ioLibrary_Driver-master/Ethernet/snmp.d ./Lib/ioLibrary_Driver-master/Ethernet/snmp.o ./Lib/ioLibrary_Driver-master/Ethernet/snmp.su ./Lib/ioLibrary_Driver-master/Ethernet/snmp_custom.d ./Lib/ioLibrary_Driver-master/Ethernet/snmp_custom.o ./Lib/ioLibrary_Driver-master/Ethernet/snmp_custom.su ./Lib/ioLibrary_Driver-master/Ethernet/sntp.d ./Lib/ioLibrary_Driver-master/Ethernet/sntp.o ./Lib/ioLibrary_Driver-master/Ethernet/sntp.su ./Lib/ioLibrary_Driver-master/Ethernet/socket.d ./Lib/ioLibrary_Driver-master/Ethernet/socket.o ./Lib/ioLibrary_Driver-master/Ethernet/socket.su ./Lib/ioLibrary_Driver-master/Ethernet/tftp.d ./Lib/ioLibrary_Driver-master/Ethernet/tftp.o ./Lib/ioLibrary_Driver-master/Ethernet/tftp.su ./Lib/ioLibrary_Driver-master/Ethernet/w5500.d ./Lib/ioLibrary_Driver-master/Ethernet/w5500.o ./Lib/ioLibrary_Driver-master/Ethernet/w5500.su ./Lib/ioLibrary_Driver-master/Ethernet/wizchip_conf.d ./Lib/ioLibrary_Driver-master/Ethernet/wizchip_conf.o ./Lib/ioLibrary_Driver-master/Ethernet/wizchip_conf.su

.PHONY: clean-Lib-2f-ioLibrary_Driver-2d-master-2f-Ethernet

