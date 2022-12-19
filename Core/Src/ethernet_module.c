/*
 * ethernet_module.c
 *
 *  Created on: Nov 4, 2022
 *      Author: vladi
 */
#include "ethernet_module.h"
#include "md5.h"

#define CLIENT_SOCKET   0
#define W5500_PORT      10887
#define SERVER_PORT		8082
#define DATA_BUF_SIZE   2048

uint8_t buffer[DATA_BUF_SIZE];

SPI_HandleTypeDef *hspi;

wiz_NetInfo gWIZNETINFO = {
		.mac = {0x00, 0x08, 0xdc, 0xab, 0xcd, 0xef},
        .ip = {192, 168, 88, 101},
        .sn = {255, 255, 255, 0},
        .gw = {192, 168, 88, 1},
        .dns = {0, 0, 0, 0},
        .dhcp = NETINFO_STATIC
};

static uint8_t serverIp[] = { 192, 168, 88, 100 };

void W5500_Reset() {
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_RESET);
	HAL_Delay(10);
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, GPIO_PIN_SET);
	HAL_Delay(10);
}

void W5500_Select(void) {
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_RESET);
}

void W5500_Unselect(void) {
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_SET);
}

void W5500_ReadBuff(uint8_t *buff, uint16_t len) {
	HAL_SPI_Receive(hspi, buff, len, HAL_MAX_DELAY);
}

void W5500_WriteBuff(uint8_t *buff, uint16_t len) {
	HAL_SPI_Transmit(hspi, buff, len, HAL_MAX_DELAY);
}

uint8_t W5500_ReadByte(void) {
	uint8_t byte;
	W5500_ReadBuff(&byte, sizeof(byte));
	return byte;
}

void W5500_WriteByte(uint8_t byte) {
	W5500_WriteBuff(&byte, sizeof(byte));
}

void W5500_Init(SPI_HandleTypeDef *hspi1) {
	hspi = hspi1;


	W5500_Unselect();
	W5500_Reset();

	reg_wizchip_cs_cbfunc(W5500_Select, W5500_Unselect);
	reg_wizchip_spi_cbfunc(W5500_ReadByte, W5500_WriteByte);
	reg_wizchip_spiburst_cbfunc(W5500_ReadBuff, W5500_WriteBuff);

	uint8_t rx_tx_buff_sizes[] = { 2, 2, 2, 2, 2, 2, 2, 2 };
	wizchip_init(rx_tx_buff_sizes, rx_tx_buff_sizes);

	uint8_t phyLink = 0;
	do {
		ctlwizchip(CW_GET_PHYLINK, (void*) &phyLink);
		HAL_Delay(10);
	} while (phyLink == PHY_LINK_OFF);

	wizchip_setnetinfo(&gWIZNETINFO);
}

int W5500_Auth(char* login, char* password, char* action) {
	//открытие TCP сокета
	uint8_t code = socket(CLIENT_SOCKET, Sn_MR_TCP, W5500_PORT, 0);
	if (code != CLIENT_SOCKET)
		return 0;
	//открытие соединения
	code = connect(CLIENT_SOCKET, serverIp, SERVER_PORT);
	if (code != SOCK_OK) {
		close(CLIENT_SOCKET);
		return 0;
	}

	char openKey[5];
	rand_string(openKey, 5);
	char stringToHash[9];
	sprintf(stringToHash, "%s%s", password, openKey);
	uint8_t *hashString = md5String(stringToHash);
	char hashHex[33];
	for(unsigned int i = 0; i < 16; ++i){
		sprintf(hashHex + i * 2, "%02x", hashString[i]);
	}
	//отправка запроса на сервер
	char req[32];
	sprintf(req, "a %s %s", login, openKey);

	uint16_t len = sizeof(req) - 1;
	uint8_t *pbuff = (uint8_t*) &req;
	while (len > 0) {
		int32_t nbytes = send(CLIENT_SOCKET, pbuff, len);
		if (nbytes <= 0) {
			close(CLIENT_SOCKET);
			return 0;
		}
		len -= nbytes;
	}

	char buff[1024] = {0};
	len = sizeof(buff);
	//получение ответа от сервера
	while (1) {
		int32_t nbytes = recv(CLIENT_SOCKET, (uint8_t*) &buff, sizeof(buff));
		if (nbytes == SOCKERR_SOCKSTATUS)
			break;
		len -= nbytes;
		if (len <= 0)
			break;
	}

	int result = 1;
	for(int i = 0; i < 32; i++) {
		if(buff[i] != hashHex[i]) {
			result = 0;
			break;
		}
	}
	if(result && *action != '\0') {
		*pbuff = action;
		send(CLIENT_SOCKET, pbuff, sizeof(uint8_t));
	}

	//закрытие соединения
	close(CLIENT_SOCKET);
	return result;
}

void W5500_GetStat(char* buf) {
	//открытие TCP сокета
	uint8_t code = socket(CLIENT_SOCKET, Sn_MR_TCP, W5500_PORT, 0);
	if (code != CLIENT_SOCKET)
		return 0;
	//открытие соединения
	code = connect(CLIENT_SOCKET, serverIp, SERVER_PORT);
	if (code != SOCK_OK) {
		close(CLIENT_SOCKET);
		return 0;
	}

	char req[] = { "s" };
	uint16_t len = sizeof(req) - 1;
	uint8_t *pbuff = (uint8_t*) &req;
	while (len > 0) {
		int32_t nbytes = send(CLIENT_SOCKET, pbuff, len);
		if (nbytes <= 0) {
			close(CLIENT_SOCKET);
			return 0;
		}
		len -= nbytes;
	}

	char buff[1024] = {0};
	len = sizeof(buff);
	//получение ответа от сервера
	while (1) {
		int32_t nbytes = recv(CLIENT_SOCKET, (uint8_t*) &buff, sizeof(buff));
		if (nbytes == SOCKERR_SOCKSTATUS)
			break;
		len -= nbytes;
		if (len <= 0)
			break;
	}

	//закрытие соединения
	close(CLIENT_SOCKET);
	for(int i = 0; i < 1024; ++i)
		buf[i] = buff[i];
}

int W5500_CheckPassword(char* password) {
	uint8_t code = socket(CLIENT_SOCKET, Sn_MR_TCP, W5500_PORT, 0);
	if (code != CLIENT_SOCKET)
		return 0;
	//открытие соединения
	code = connect(CLIENT_SOCKET, serverIp, SERVER_PORT);
	if (code != SOCK_OK) {
		close(CLIENT_SOCKET);
		return 0;
	}

	char req[7] = {0};
	sprintf(req, "p %s", password);

	uint16_t len = sizeof(req) - 1;
	uint8_t *pbuff = (uint8_t*) &req;
	while (len > 0) {
		int32_t nbytes = send(CLIENT_SOCKET, pbuff, len);
		if (nbytes <= 0) {
			close(CLIENT_SOCKET);
			return 0;
		}
		len -= nbytes;
	}

	char buff[1024] = {0};
	len = sizeof(buff);
	//получение ответа от сервера
	while (1) {
		int32_t nbytes = recv(CLIENT_SOCKET, (uint8_t*) &buff, sizeof(buff));
		if (nbytes == SOCKERR_SOCKSTATUS)
			break;
		len -= nbytes;
		if (len <= 0)
			break;
	}

	//закрытие соединения
	close(CLIENT_SOCKET);
	return buff[0];
}

