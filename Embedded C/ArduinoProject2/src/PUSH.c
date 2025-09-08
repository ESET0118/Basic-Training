#include <Arduino.h>

#define LED_PIN PD2
#define BUTTON_PIN PD4


int main(void){
   DDRD &= ~(1 << BUTTON_PIN);//Set BUTTON_PIN as input
   DDRD |= (1 << LED_PIN);
  PORTD |= (1 << BUTTON_PIN);// Set LED_PIN as output

  while (1) {
    if (!(PIND & (1 << BUTTON_PIN))) { // Check if button is pressed
      PORTD |= (1 << LED_PIN); // Turn on LED
    } else {
      PORTD &= ~(1 << LED_PIN); // Turn off LED
    }
  }

}