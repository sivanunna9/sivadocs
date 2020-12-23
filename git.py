#!/usr/bin/env python 

import subprocess
import os
import csv

os.chdir("/home/siva/")
# delete old files
os.system('bash -c "log.csv"')
#changing dirctory 
os.chdir("/home/siva/gitrepo")
print(os.getcwd())
#idetify the only directories
arr = filter(os.path.isdir, os.listdir(os.getcwd()))
# using for loop change diectory to each repositres , pull the latest code using git command , identify the repo name , idenfy the last commit date and all out put will redirect to resective rediection file 
for x in arr:
    print(x)
    os.chdir((x))
    subprocess.call(["git", "pull"])
    subprocess.call('basename `git rev-parse --show-toplevel`' + ' 1>> /home/siva/Import_Conf_Output.txt 2> /home/siva/Error.txt', shell=True)
    subprocess.call('git log -1 --format="%at" | xargs -I{} date -d @{} +%Y/%m/%d_%H:%M:%S' + ' 1>> /home/siva/Output.txt 2> /home/siva/Error.txt', shell=True)

    os.chdir("/home/siva/gitrepo")
os.chdir("/home/siva/")
#using the commad adding colums to another file
subprocess.call('paste Import_Conf_Output.txt Output.txt ' + ' 1>> /home/siva/input.txt 2> /home/siva/Error.txt', shell=True)
#using convert txt file to csv 
with open('input.txt', 'r') as in_file:
    stripped = (line.strip() for line in in_file)
    lines = (line.split(",") for line in stripped if line)
    with open('log.csv', 'w') as out_file:
        writer = csv.writer(out_file)
        writer.writerow(('Repo_Name', 'Last_commit_date'))
        writer.writerows(lines)

# delete old files
os.system('bash -c "rm -f Import_Conf_Output.txt Output.txt input.txt Error.txt "')
