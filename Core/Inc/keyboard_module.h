/*
 * keyboard_module.h
 *
 *  Created on: 19 дек. 2022 г.
 *      Author: vladi
 */

#ifndef INC_KEYBOARD_MODULE_H_
#define INC_KEYBOARD_MODULE_H_

#include "stm32f4xx_hal.h"

void keypadInit(TIM_HandleTypeDef*);
void processKeypadInput(uint16_t);

#endif /* INC_KEYBOARD_MODULE_H_ */
