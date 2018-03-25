#!/usr/bin/env python
import subprocess
time.sleep(10)

subprocess.call(["/Users/d059566/Documents/Avocado_Buster/caller.sh"])
time.sleep(10)

import glob
import os
list_of_files = glob.glob('/Users/d059566/Documents/Avocado_Buster/Data/*')
latest_file = max(list_of_files, key=os.path.getctime)
print(latest_file)
data = input('Input: ')
myfile = open(latest_file, "a")
# with open(latest_file, "a") as myfile:
myfile.write(data)
myfile.close()