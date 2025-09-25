#ifndef BNO055_STM32_H_
#define BNO055_STM32_H_

#ifdef __cplusplus
  extern "C" {
#endif

#ifdef FREERTOS_ENABLED
#include "FreeRTOS.h"
#include "task.h"
#include "cmsis_os.h"
#endif

#include "bno055.h"

I2C_HandleTypeDef hi2c3;
extern HAL_StatusTypeDef cnt;

void bno055_delay(int time) {
#ifdef FREERTOS_ENABLED
	osDelay(time);
#else
	HAL_Delay(time);
#endif
}

void bno055_writeData(uint8_t reg, uint8_t data) {
  uint8_t txdata[2] = {reg, data};
 cnt = HAL_I2C_Master_Transmit(&hi2c3, BNO055_I2C_ADDR << 1, txdata, sizeof(txdata),10);
  return;
HAL_I2C_GetError(&hi2c3);
HAL_I2C_GetState(&hi2c3);
}

void bno055_readData(uint8_t reg, uint8_t *data, uint8_t len) {
 cnt = HAL_I2C_Master_Transmit(&hi2c3, BNO055_I2C_ADDR << 1, &reg, 1,100);
 // HAL_I2C_Master_Receive(&hi2c1, BNO055_I2C_ADDR << 1, data, len,100);
 cnt = HAL_I2C_Mem_Read(&hi2c3, BNO055_I2C_ADDR_LO<<1, reg, I2C_MEMADD_SIZE_8BIT, data, len, 100);
}

#ifdef __cplusplus
  }
#endif

#endif  // BNO055_STM32_H_
