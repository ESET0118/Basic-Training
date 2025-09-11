#include "hal_gpio.h"
#include "../config/pin_config.h"
#include <avr/io.h>

// Initialize GPIO pin as output (PB5 = Arduino D13)
void HAL_GPIO_Init_Output(int pin) {
    if (pin == LED_PIN) {
        DDRB |= (1 << DDB5);  // set PB5 as output
    }
}

// Toggle GPIO pin
void HAL_GPIO_Toggle(int pin) {
    if (pin == LED_PIN) {
        PINB |= (1 << PINB5); // toggle PB5
    }
}
