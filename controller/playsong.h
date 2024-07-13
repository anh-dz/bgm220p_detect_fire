#include "em_gpio.h"
#include "em_cmu.h"
#include "em_timer.h"

// Define the pin where the buzzer is connected
#define BUZZER_PORT gpioPortB
#define BUZZER_PIN  0

// Define the notes for "Twinkle Twinkle Little Star"
#define C4 261
#define D4 294
#define E4 329
#define F4 349
#define G4 392
#define A4 440

// Notes and durations (in milliseconds)
int melody[] = {C4, C4, G4, G4, A4, A4, G4, F4, F4, E4, E4, D4, D4, C4};
int noteDurations[] = {500, 500, 500, 500, 500, 500, 1000, 500, 500, 500, 500, 500, 500, 1000};

// Function to play a note
void playNote (int frequency, int duration) {
    if (frequency == 0) {
        // Rest note
        for (volatile int i = 0; i < duration * 1000; i++);
    } else {
        int period = 1000000 / frequency; // period in microseconds
        int halfPeriod = period / 2; // half period in microseconds

        for (int i = 0; i < (duration * 1000 / period); i++) {
            GPIO_PinOutSet(BUZZER_PORT, BUZZER_PIN);
            for (volatile int j = 0; j < halfPeriod; j++);
            GPIO_PinOutClear(BUZZER_PORT, BUZZER_PIN);
            for (volatile int j = 0; j < halfPeriod; j++);
        }
    }
}

void playnow() {
    for (int i = 0; i < sizeof(melody) / sizeof(melody[0]); i++) {
        playNote(melody[i], noteDurations[i]);
    }
}
