import random
import shutil
import sys

pfade = ["/left_tree", "/right_tree"]

path = f"{sys.argv[1]}/dark_forest"

for i in range(10):
    path += random.choice(pfade)

print(path)
shutil.copy("./quest_scripts/stegi_script.sh", path +"/ominousglowingdoor.sh")