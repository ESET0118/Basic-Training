#include "../config/pin_config.h"
#include "../hal/hal_gpio.h"
#include <avr/io.h>
#include <util/delay.h>

int main(void) {
    HAL_GPIO_Init_Output(LED_PIN);

    while (1) {
        HAL_GPIO_Toggle(LED_PIN);
        _delay_ms(500);
    }

    return 0; // never reached
}
