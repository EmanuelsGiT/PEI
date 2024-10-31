#
# Bottom-Up Approach – O(n) time and O(n) space
# This approach uses dynamic programming to solve the Fibonacci problem by storing 
# previously calculated Fibonacci numbers, avoiding the repeated calculations of 
# the recursive approach. Instead of breaking down the problem recursively, it 
# iteratively builds up the solution by calculating Fibonacci numbers from the 
# bottom up.
#

import time
#import sys
#sys.set_int_max_str_digits(1000000)

def fibonacci(n):
    if n <= 1:
        return n

    # To store the curr Fibonacci number
    curr = 0

    # To store the previous Fibonacci numbers
    prev1 = 1
    prev2 = 0

    # Loop to calculate Fibonacci numbers from 2 to n
    for i in range(2, n + 1):
      
        # Calculate the curr Fibonacci number
        curr = prev1 + prev2

        # Update prev2 to the last Fibonacci number
        prev2 = prev1

        # Update prev1 to the curr Fibonacci number
        prev1 = curr

    #return curr
    return "Done"

n = 3000000
#Initial time
start_time = time.time()

result = fibonacci(n)

#Final time
end_time = time.time()

#Total time
time = end_time - start_time

print(result, "time: ", time)
