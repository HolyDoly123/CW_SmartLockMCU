/*
 * bluetooth_module.c
 *
 *  Created on: Dec 17, 2022
 *      Author: vladi
 */
#include "bluetooth_module.h"
#include <string.h>
#include "ethernet_module.h"

char* login;
char* password;

void processBluetoothData(UART_HandleTypeDef *huart1,  uint8_t *RxBuf) {
	strtok(RxBuf, " ");
	login = strtok(NULL, " ");
	password = strtok(NULL, " \n");

	switch(RxBuf[0])
	    {
	        case 'o': {
	        	if(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13)) {
					if(W5500_Auth(login, password, RxBuf[0])) {
						HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, 0);
						HAL_UART_Transmit(huart1, "Opened", strlen("Opened"), 10);
					}
					else {
						HAL_UART_Transmit(huart1, "Auth error", strlen("Auth error"), 10);
					}
				} else {
					HAL_UART_Transmit(huart1, "Opened", strlen("Opened"), 10);
				}
	            break;
	        }
	        case 'c': {
	    		if(!HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13)) {
	    			if(W5500_Auth(login, password, RxBuf[0])) {
		    			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, 1);
		    			HAL_UART_Transmit(huart1, "Closed", strlen("Closed"), 10);
					}
					else {
						HAL_UART_Transmit(huart1, "Auth error", strlen("Auth error"), 10);
					}
	    		} else {
	    			HAL_UART_Transmit(huart1, "Closed", strlen("Closed"), 10);
	    		}
	            break;
	        }
	        case 's': {
	        	if(W5500_Auth(login, password, "")) {
	        		char stat[1024] = {0};
	        		W5500_GetStat(stat);
	        		HAL_UART_Transmit(huart1, stat, strlen(stat), 10);
	        	} else {
					HAL_UART_Transmit(huart1, "Auth error", strlen("Auth error"), 10);
				}
	            break;
	        }
	        default: {
	        	break;
	        }
	    }
}
