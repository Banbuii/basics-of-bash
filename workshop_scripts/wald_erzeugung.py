#!/bin/python
import os
import sys



start_folder = f"{sys.argv[1]}/dark_forest"

if(not os.path.isdir(start_folder)):
    os.mkdir(start_folder)

def make_wald (depth, path):
    if depth == 0:
        return
    else:
        os.mkdir(path+"/left_tree")
        os.mkdir(path+"/right_tree")

        make_wald(depth-1, path+"/left_tree")
        make_wald(depth-1, path+"/right_tree")
    
    return

make_wald(10, start_folder)