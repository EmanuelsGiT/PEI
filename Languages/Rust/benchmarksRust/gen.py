import random

random.seed(1)

numeros = [random.randint(0, 10000) for _ in range(10000)]

with open("numeros.txt", "w") as file:
    for numero in numeros:
        file.write(f"{numero}\n")

print("Os números foram salvos em numeros.txt")
