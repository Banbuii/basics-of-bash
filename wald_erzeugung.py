#!/bin/python
import os

os.mkdir("dark_forest")

def make_wald (depth, path):
    if depth == 0:
        return
    else:
        os.mkdir(path+"/left_tree")
        os.mkdir(path+"/right_tree")

        make_wald(depth-1, path+"/left_tree")
        make_wald(depth-1, path+"/right_tree")
    
    return

make_wald(10, "dark_forest")