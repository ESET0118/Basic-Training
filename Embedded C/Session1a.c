#include <stdio.h> // Standard input/output library (for printf)
#include <time.h>
// Assuming a microcontroller environment where GPIO is configured for LED
// For a real embedded system, these would be register accesses
#define LED_PIN 5 // Example LED pin number

// Function to simulate a delay (blocking delay)
void delay_ms(int ms)
{
    volatile long i, j; // Use volatile to prevent optimization
    clock_t start_time = clock();

    // looping till required time is not achieved
    while (clock() < start_time + ms)
        ;
    // Adjust this value for desired delay
    // Do nothing, just waste time
}

int main()
{
    int counter = 0;    // Initialize counter variable
    int max_blinks = 5; // Maximum number of blinks
    int threshold = 3;  // Threshold for conditional check
    int input;
    printf("Enter input ");
    scanf("%d", &input);
    // Loop to blink the LED
    // The for loop iterates a known number of times (max_blinks)
    if (input ==1)
    {
        for (counter = 0; counter < max_blinks; counter++)
        {

            // Conditional statement (if-else)
            // Checks if the current counter value is less than the threshold
            if (counter < threshold)
            {

                // Simulate turning LED ON (e.g., set pin high)
                printf("LED ON (Counter: %d)\n", counter); // For simulation
                                                           // Delay for 200 milliseconds
                delay_ms(200);
                // Simulate turning LED OFF (e.g., set pin low)
                printf("LED OFF (Counter: %d)\n", counter); // For simulation
                // Delay for 200 milliseconds
                delay_ms(200);
            }
            else
            {
                // else
                //  If the counter is at or above the threshold
                printf("Counter reached threshold or above: %d\n", counter);
                // Longer delay
            }
            // Increment operator (++) used in the for loop condition
            // counter++ is equivalent to counter = counter + 1;

            // Another conditional statement demonstrating logical operator

            // Logical AND operator (&&)
            printf("Blinking sequence completed.\n");
        }
    }
    // Example of a while loop
    int countdown = 3;
    // while loop for countdown
    while (countdown >= 0)
    {
        printf("Countdown: %d\n", countdown);
        countdown--;
    }
    // Decrement operator (--)
    // delay timer

    printf("Liftoff!\n");

    return 0; // Indicate successful execution
}