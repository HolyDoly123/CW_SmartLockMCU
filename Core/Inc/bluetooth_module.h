/*
 * bluetooth_module.h
 *
 *  Created on: Dec 17, 2022
 *      Author: vladi
 */

#ifndef INC_BLUETOOTH_MODULE_H_
#define INC_BLUETOOTH_MODULE_H_

#include "stm32f4xx_hal.h"

void processBluetoothData(SPI_HandleTypeDef *,  uint8_t *);

#endif /* INC_BLUETOOTH_MODULE_H_ */
