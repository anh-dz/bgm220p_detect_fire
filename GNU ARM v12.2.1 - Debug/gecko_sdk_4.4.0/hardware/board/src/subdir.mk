################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Lenovo/Desktop/gecko-sdk/hardware/board/src/sl_board_control_gpio.c \
C:/Users/Lenovo/Desktop/gecko-sdk/hardware/board/src/sl_board_init.c 

OBJS += \
./gecko_sdk_4.4.0/hardware/board/src/sl_board_control_gpio.o \
./gecko_sdk_4.4.0/hardware/board/src/sl_board_init.o 

C_DEPS += \
./gecko_sdk_4.4.0/hardware/board/src/sl_board_control_gpio.d \
./gecko_sdk_4.4.0/hardware/board/src/sl_board_init.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.0/hardware/board/src/sl_board_control_gpio.o: C:/Users/Lenovo/Desktop/gecko-sdk/hardware/board/src/sl_board_control_gpio.c gecko_sdk_4.4.0/hardware/board/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Lenovo\SimplicityStudio\v5_workspace\tiendinhcungnhom6\config" -I"C:\Users\Lenovo\SimplicityStudio\v5_workspace\tiendinhcungnhom6\autogen" -I"C:\Users\Lenovo\SimplicityStudio\v5_workspace\tiendinhcungnhom6" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Lenovo/Desktop/gecko-sdk//hardware/board/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/CMSIS/Core/Include" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/service/device_init/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/emlib/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/common/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/common/toolchain/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.0/hardware/board/src/sl_board_control_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.0/hardware/board/src/sl_board_init.o: C:/Users/Lenovo/Desktop/gecko-sdk/hardware/board/src/sl_board_init.c gecko_sdk_4.4.0/hardware/board/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Lenovo\SimplicityStudio\v5_workspace\tiendinhcungnhom6\config" -I"C:\Users\Lenovo\SimplicityStudio\v5_workspace\tiendinhcungnhom6\autogen" -I"C:\Users\Lenovo\SimplicityStudio\v5_workspace\tiendinhcungnhom6" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Lenovo/Desktop/gecko-sdk//hardware/board/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/CMSIS/Core/Include" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/service/device_init/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/emlib/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/common/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/common/toolchain/inc" -I"C:/Users/Lenovo/Desktop/gecko-sdk//platform/service/system/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.0/hardware/board/src/sl_board_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


