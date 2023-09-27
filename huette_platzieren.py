import random

pfade = ["/left_tree", "/right_tree"]

path = "dark_forest"

for i in range(10):
    path += random.choice(pfade)

print(path)