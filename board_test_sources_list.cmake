
## ------- TARGET STARTS HERE -------
set(TARGET_NAME board_test)
set(EXEC_NAME board_test_STM32F427VITx)
add_executable(${EXEC_NAME})

set(MCU STM32F427VITx)
target_compile_definitions(${EXEC_NAME} PRIVATE USE_FULL_LL_DRIVER USE_HAL_DRIVER STM32F427xx)
target_include_directories(${EXEC_NAME} PRIVATE Core/Inc)
target_include_directories(${EXEC_NAME} PRIVATE Drivers/STM32F4xx_HAL_Driver/Inc)
target_include_directories(${EXEC_NAME} PRIVATE Drivers/STM32F4xx_HAL_Driver/Inc/Legacy)
target_include_directories(${EXEC_NAME} PRIVATE Drivers/CMSIS/Device/ST/STM32F4xx/Include)
target_include_directories(${EXEC_NAME} PRIVATE Drivers/CMSIS/Include)
target_include_directories(${EXEC_NAME} PRIVATE .)

set(COMPILE_FLAGS -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16  -mno-thumb-interwork -v)
set(STARTUP_CODE_SOURCE ${STARTUP_CODE_DIR}/startup_stm32f427xx.s)
set(LDSCRIPT ${STARTUP_CODE_DIR}/STM32F427VITx_FLASH.ld)
set	(GROUP_SRC_APPLICATION_MDK_ARM
#		startup_stm32f427xx.s
	)

set	(GROUP_SRC_APPLICATION_USER_CORE
		Core/Src/main.c
		Core/Src/gpio.c
		Core/Src/adc.c
		Core/Src/can.c
		Core/Src/crc.c
		Core/Src/dma.c
		Core/Src/iwdg.c
		Core/Src/rng.c
		Core/Src/spi.c
		Core/Src/tim.c
		Core/Src/usart.c
		Core/Src/stm32f4xx_it.c
		Core/Src/stm32f4xx_hal_msp.c
	)

set	(GROUP_SRC_DRIVERS_STM32F4XX_HAL_DRIVER
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_gpio.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_exti.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_rcc.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_utils.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_exti.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_can.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_crc.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_iwdg.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rng.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
		Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c
	)

set	(GROUP_SRC_DRIVERS_CMSIS
		Core/Src/system_stm32f4xx.c
	)

set	(${EXEC_NAME}_LIST_OF_SOURCES
		${GROUP_SRC_APPLICATION_MDK_ARM}
		${GROUP_SRC_APPLICATION_USER_CORE}
		${GROUP_SRC_DRIVERS_STM32F4XX_HAL_DRIVER}
		${GROUP_SRC_DRIVERS_CMSIS}
	)

target_sources(${EXEC_NAME} PRIVATE ${${EXEC_NAME}_LIST_OF_SOURCES} ${STARTUP_CODE_SOURCE})

target_compile_options(${EXEC_NAME} PRIVATE ${COMPILE_FLAGS} )

target_link_options(
				${EXEC_NAME} BEFORE PRIVATE 
				"-Wl,-Map=${EXEC_NAME}.map"
				"-Wl,-T${LDSCRIPT}"
				"-Wl,--gc-sections"
				"-Wl,--verbose"
				"-Wl,-V"
				"-Wl,--cref"
				${COMPILE_FLAGS})


target_link_libraries(
				${EXEC_NAME}
				c		# c runtime
				m		# math
				nosys	# for non-os
				)

STM32_ADD_HEX_BIN_TARGETS(${EXEC_NAME})
STM32_PRINT_SIZE_OF_TARGETS(${EXEC_NAME})
