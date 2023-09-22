#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int lower = 1;      // Lower bound of the random number
    int upper = 100;    // Upper bound of the random number
    int number, guess, attempts = 0;

    // Seed the random number generator with the current time
    srand(time(NULL));

    // Generate a random number between lower and upper
    number = (rand() % (upper - lower + 1)) + lower;

    printf("Welcome to the Number Guessing Game!\n");
    printf("I'm thinking of a number between %d and %d.\n", lower, upper);

    do {
        printf("Enter your guess: ");
        scanf("%d", &guess);
        attempts++;

        if (guess < number) {
            printf("Too low! Try again.\n");
        } else if (guess > number) {
            printf("Too high! Try again.\n");
        } else {
            printf("Congratulations! You've guessed the number %d in %d attempts.\n", number, attempts);
        }
    } while (guess != number);

    return 0;
}