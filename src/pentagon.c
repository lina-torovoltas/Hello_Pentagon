#include <stdint.h>
#include <stdio.h>
#include <sys/random.h>
#include <unistd.h>



int64_t random_range(int64_t min, int64_t max) {
    uint64_t value;

    getrandom(&value, sizeof(uint64_t), 0);

    return min + value % (max - min + 1);
}


int main(void) {
    uint8_t progress = 0;

    while (progress < 100) {
        uint8_t max = progress + 20;

        if (max > 100) {
            max = 100;
        }

        progress = random_range(progress + 1, max);

        printf("Pentagon hack progress: %d%%\n", progress);

        sleep(1);
    }

    if (random_range(1, 30) > 20) {
        printf("Pentagon hack: Completed successfully.\n");
        
    } else {
        printf("Pentagon hack: Failed.\n");
    }

    return 0;
}
