#include <stdio.h>
#include <time.h>

// Function to calculate the nth Fibonacci number
// Bottom-Up Approach – O(n) time and O(n) space
// using iteration
void nthFibonacci(long int n) {
  
    // Handle the edge cases
    if (n <= 1) return;

    // Use variables instead of an array to save memory
    unsigned long long prev1 = 0, prev2 = 1, current;

    // Calculate Fibonacci iteratively
    for (long int i = 2; i <= n; ++i) {
        current = prev1 + prev2;
        prev1 = prev2;
        prev2 = current;
    }
}

int main() {
    long int n = 30000000000; // 30 billion
    clock_t start = clock();

    nthFibonacci(n);

    clock_t end = clock();
    double time_taken = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Time taken: %.4f seconds\n", time_taken);

    return 0;
}
