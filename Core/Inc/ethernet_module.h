/*
 * ethernet_module.h
 *
 *  Created on: Nov 5, 2022
 *      Author: vladi
 */

#ifndef INC_ETHERNET_MODULE_H_
#define INC_ETHERNET_MODULE_H_

#include "socket.h"
#include "stm32f4xx_hal.h"

void W5500_Init(SPI_HandleTypeDef *);
int W5500_Auth(char* , char* , char*);
void W5500_GetStat(char*);
int W5500_CheckPassword(char*);


#endif /* INC_ETHERNET_MODULE_H_ */
