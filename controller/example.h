#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"

#define PIN_MODE 4

int turn_on_main_led() {
  GPIO_PinModeSet(gpioPortA, PIN_MODE, gpioModePushPull, 1);
  return 0;
}
