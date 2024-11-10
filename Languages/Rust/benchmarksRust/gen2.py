import random

random.seed(1)

num_elements = 2**17  # 131072

random_numbers = [random.randint(0, 10000) for _ in range(num_elements)]

with open("numeros2.txt", "w") as file:
    for num in random_numbers:
        file.write(f"{num}\n")

print(f"{num_elements} random numbers have been saved to 'numeros2.txt'")
