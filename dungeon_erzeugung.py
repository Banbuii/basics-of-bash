import random
import os

colour = ["red", "orange", "yellow", "green", "blue", "indigo", "violet", "rosa"]
size = ["tiny", "small", "medium", "big", "gigantic"]
form = ["carts", "corners", "holes", "thingys", "hubbles", "rings"]
pwd_first = ["great", "abnormal", "sensational", "fetch", "superb", "fabulous"]
pwd_second = ["password", "keyyy", "ticket", "emerald", "gem", "fachrat", "honeypot", "cat"]


dungeon = ""

for i in range(1024):

        passphrase = random.choice(pwd_first) + "_" + random.choice(pwd_second)
        dungeon += "|Dungeon " + str(i) + ": " + random.choice(size) + " " + random.choice(colour) + " key"
        dungeon += f" with {random.randint(1,15)} {random.choice(form)} [{passphrase}]|\n"

with open("./kings_castle/cellar/dungeons.txt", 'w') as dun:
    dun.write(dungeon)


for i in range(255):
    directory = "./kings_castle/cellar/dungeon_" + str(i)
    os.mkdir(directory)
    with open(directory + "/Key", 'w') as fil:
        if i == 142:
            fil.write("tiny blue key with 5 hubbles: bashtes_pwd")
        else:
            passphrase = random.choice(pwd_first) + "_" + random.choice(pwd_second)
            key = f"{random.choice(size)} {random.choice(colour)} key with {random.randint(1,15)} {random.choice(form)}: {passphrase}"
            fil.write(key)
    
    

