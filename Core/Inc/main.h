/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "stm32f4xx_ll_system.h"
#include "stm32f4xx_ll_gpio.h"
#include "stm32f4xx_ll_exti.h"
#include "stm32f4xx_ll_bus.h"
#include "stm32f4xx_ll_cortex.h"
#include "stm32f4xx_ll_rcc.h"
#include "stm32f4xx_ll_utils.h"
#include "stm32f4xx_ll_pwr.h"
#include "stm32f4xx_ll_dma.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ROM_CLK_Pin LL_GPIO_PIN_2
#define ROM_CLK_GPIO_Port GPIOE
#define ROM_MISO_Pin LL_GPIO_PIN_5
#define ROM_MISO_GPIO_Port GPIOE
#define ROM_MOSI_Pin LL_GPIO_PIN_6
#define ROM_MOSI_GPIO_Port GPIOE
#define FLASH_CS_Pin LL_GPIO_PIN_2
#define FLASH_CS_GPIO_Port GPIOC
#define FRAM_CS_Pin LL_GPIO_PIN_3
#define FRAM_CS_GPIO_Port GPIOC
#define FROM_RADIO_Pin LL_GPIO_PIN_0
#define FROM_RADIO_GPIO_Port GPIOA
#define RELOAD_EXT_WDT_Pin LL_GPIO_PIN_1
#define RELOAD_EXT_WDT_GPIO_Port GPIOA
#define KEYS_LEDS_PWM_Pin LL_GPIO_PIN_2
#define KEYS_LEDS_PWM_GPIO_Port GPIOA
#define DISPLAY_LEDS_PWM_Pin LL_GPIO_PIN_3
#define DISPLAY_LEDS_PWM_GPIO_Port GPIOA
#define CAN_STB_Pin LL_GPIO_PIN_4
#define CAN_STB_GPIO_Port GPIOA
#define ACC_12V_Pin LL_GPIO_PIN_9
#define ACC_12V_GPIO_Port GPIOE
#define IGN_ON_Pin LL_GPIO_PIN_10
#define IGN_ON_GPIO_Port GPIOE
#define SENSORS_5V_CTRL_Pin LL_GPIO_PIN_11
#define SENSORS_5V_CTRL_GPIO_Port GPIOE
#define SENSORS_12V_CTRL_Pin LL_GPIO_PIN_12
#define SENSORS_12V_CTRL_GPIO_Port GPIOE
#define DISPLAY_ON_OFF_Pin LL_GPIO_PIN_15
#define DISPLAY_ON_OFF_GPIO_Port GPIOE
#define HV_ENABLE_Pin LL_GPIO_PIN_12
#define HV_ENABLE_GPIO_Port GPIOB
#define SPEED_SENSOR_Pin LL_GPIO_PIN_14
#define SPEED_SENSOR_GPIO_Port GPIOB
#define SW1_Pin LL_GPIO_PIN_8
#define SW1_GPIO_Port GPIOD
#define SW2_Pin LL_GPIO_PIN_9
#define SW2_GPIO_Port GPIOD
#define SW3_Pin LL_GPIO_PIN_10
#define SW3_GPIO_Port GPIOD
#define SW4_Pin LL_GPIO_PIN_11
#define SW4_GPIO_Port GPIOD
#define SW5_Pin LL_GPIO_PIN_12
#define SW5_GPIO_Port GPIOD
#define SW6_Pin LL_GPIO_PIN_13
#define SW6_GPIO_Port GPIOD
#define EN_HC_PWR_Pin LL_GPIO_PIN_8
#define EN_HC_PWR_GPIO_Port GPIOC
#define EN_HC_Pin LL_GPIO_PIN_9
#define EN_HC_GPIO_Port GPIOC
#define COMPASS_RESET_Pin LL_GPIO_PIN_0
#define COMPASS_RESET_GPIO_Port GPIOD
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
