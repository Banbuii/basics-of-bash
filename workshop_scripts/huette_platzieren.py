import random
import shutil

pfade = ["/left_tree", "/right_tree"]

path = "../user_folder_template/dark_forest"

for i in range(10):
    path += random.choice(pfade)

print(path)
shutil.copy("../quest_scripts/stegi_script.sh", path +"/ominousglowingdoor.sh")