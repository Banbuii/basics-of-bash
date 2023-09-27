import random
import os

colour = ["red", "orange", "yellow", "green", "blue", "indigo", "violet", "rosa"]
size = ["tiny", "small", "medium", "big", "gigantic"]
key_form = ["carts", "corners", "holes", "thingys", "hubbles", "rings"]
pwd_first = ["great", "abnormal", "sensational", "fetch", "superb", "fabulous"]
pwd_second = ["password", "keyyy", "ticket", "emerald", "gem", "fachrat", "honeypot", "cat"]
door_material = ["wood", "stone", "metal bars"]
door_form = ["round", "square", "pointy", "wide", "narrow"]


dungeon = ""


os.mkdir("./kings_castle/dungeon/")

# In die Beschreibung der dungeons (Scroll.txt) beschreiben wie die Tür aussieht
for i in range(1024):

        dungeon += f"Room {str(i)} has a {random.choice(colour)}, {random.choice(door_form)} door"
        dungeon += f" made of {random.choice(door_material)} \n"

with open("./kings_castle/dungeon/dungeon.txt", 'w') as dun:
    dun.write(dungeon)


for i in range(255):
    directory = "./kings_castle/dungeon/door_" + str(i)
    os.mkdir(directory)
    with open(directory + "/Key", 'w') as fil:
        if i == 142:
            fil.write("A tiny blue key with 5 hubbles. The inscription on the key says: bashtes_pwd")
        else:
            passphrase = random.choice(pwd_first) + "_" + random.choice(pwd_second)
            key = f"A {random.choice(size)} {random.choice(colour)} key with {random.randint(1,15)} {random.choice(key_form)}. The inscription on the key says:  {passphrase}"
            fil.write(key)
    
    

