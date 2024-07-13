#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "gpiointerrupt.h"

#define  BUTTON_PORT gpioPortC
#define BUTTON_PIN 7

unsigned int ledpin1 = 0;
unsigned int ledpin2 = 3;
unsigned int ledpin3 = 6;

GPIO_Port_TypeDef ledport1 = gpioPortB;
GPIO_Port_TypeDef ledport2 = gpioPortC;
GPIO_Port_TypeDef ledport3 = gpioPortC;

bool checkBuzzerOn = false;

void delay(uint32_t milliseconds)
{
    volatile uint32_t counter = 0;
    const uint32_t count = milliseconds * 14000; // Adjust this constant for the correct delay

    while (counter < count)
    {
        counter++;
    }
}

void playBuzzer() {
    if (checkBuzzerOn) {
        GPIO_PinModeSet(gpioPortC, 2, gpioModeInputPull, 0);
        checkBuzzerOn = false;
    }
    else {
        GPIO_PinModeSet(gpioPortC, 2, gpioModeInputPull, 1);
        checkBuzzerOn = true;
    }
}

bool checkLoop = false;
// Button press handler
void buttonHandler(uint8_t pin)
{
    checkLoop = !checkLoop;
    if (pin == BUTTON_PIN)
    {
        while(checkLoop) {
          playBuzzer();
          GPIO_PinOutToggle(ledport1, ledpin1);
          delay(100);
          GPIO_PinOutToggle(ledport2, ledpin2);
          delay(100);
          GPIO_PinOutToggle(ledport3, ledpin3);
          delay(100);
        }
    }
}

int turn_on_main_led() {
  GPIO_PinModeSet(gpioPortC, 2, gpioModeInputPull, 0);
  GPIO_PinModeSet(ledport1, ledpin1, gpioModePushPull, 0);
  GPIO_PinModeSet(ledport2, ledpin2, gpioModePushPull, 0);
  GPIO_PinModeSet(ledport3, ledpin3, gpioModePushPull, 0);
  GPIO_PinModeSet(BUTTON_PORT, BUTTON_PIN, gpioModeInputPull, 1);


  GPIOINT_CallbackRegister(BUTTON_PIN, buttonHandler);

  GPIO_ExtIntConfig(BUTTON_PORT, BUTTON_PIN, BUTTON_PIN, false, true, true);

  return 0;
}
