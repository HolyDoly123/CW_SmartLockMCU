/*
 * keyboard_module.c
 *
 *  Created on: 19 дек. 2022 г.
 *      Author: vladi
 */

#include "keyboard_module.h"
#include <string.h>
#include "ethernet_module.h"

GPIO_InitTypeDef GPIO_InitStructPrivate = {0};
uint32_t previousMillis = 0;
uint32_t currentMillis = 0;

uint8_t password_buf[4] = {0};
uint8_t buf_pos = 0;

TIM_HandleTypeDef *htim;

void keypadInit(TIM_HandleTypeDef * htim2) {
	htim = htim2;
}

void processKeypadInput(uint16_t GPIO_Pin) {
	currentMillis = HAL_GetTick();
	if (currentMillis - previousMillis > 100) {
	/*Configure GPIO pins : PB6 PB7 PB8 PB9 to GPIO_INPUT*/
//		GPIO_InitStructPrivate.Pin = GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9;
//		GPIO_InitStructPrivate.Mode = GPIO_MODE_INPUT;
//		GPIO_InitStructPrivate.Pull = GPIO_NOPULL;
//		GPIO_InitStructPrivate.Speed = GPIO_SPEED_FREQ_LOW;
//		HAL_GPIO_Init(GPIOB, &GPIO_InitStructPrivate);

		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, 1);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, 0);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, 0);
		if(GPIO_Pin == GPIO_PIN_6 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6))
		{
			checkBuf('#');
		}
		else if(GPIO_Pin == GPIO_PIN_7 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7))
		{
			checkBuf('9');
		}
		else if(GPIO_Pin == GPIO_PIN_8 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_8))
		{
			checkBuf('6');
		}
		else if(GPIO_Pin == GPIO_PIN_9 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_9))
		{
			checkBuf('3');
		}

		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, 0);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, 1);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, 0);
		if(GPIO_Pin == GPIO_PIN_6 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6))
		{
			checkBuf('0');
		}
		else if(GPIO_Pin == GPIO_PIN_7 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7))
		{
			checkBuf('8');
		}
		else if(GPIO_Pin == GPIO_PIN_8 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_8))
		{
			checkBuf('5');
		}
		else if(GPIO_Pin == GPIO_PIN_9 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_9))
		{
			checkBuf('2');
		}

		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, 0);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, 0);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, 1);
		if(GPIO_Pin == GPIO_PIN_6 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6))
		{
			checkBuf('*');
		}
		else if(GPIO_Pin == GPIO_PIN_7 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7))
		{
			checkBuf('7');
		}
		else if(GPIO_Pin == GPIO_PIN_8 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_8))
		{
			checkBuf('4');
		}
		else if(GPIO_Pin == GPIO_PIN_9 && HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_9))
		{
			checkBuf('1');
		}

		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, 1);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, 1);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_5, 1);
		/*Configure GPIO pins : PB6 PB7 PB8 PB9 back to EXTI*/
//		GPIO_InitStructPrivate.Mode = GPIO_MODE_IT_RISING;
//		GPIO_InitStructPrivate.Pull = GPIO_PULLDOWN;
//		HAL_GPIO_Init(GPIOB, &GPIO_InitStructPrivate);
		previousMillis = currentMillis;
	}
}

void checkBuf(uint8_t pressed_key) {
	if(pressed_key == '*') {
		buf_pos = 0;
		return;
	}

	password_buf[buf_pos] = pressed_key;
	buf_pos += 1;

	if(buf_pos == 4) {
		buf_pos = 0;
		if(W5500_CheckPassword(password_buf)) {
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, 0);
			HAL_TIM_Base_Start_IT(htim);
		}
	}
}

