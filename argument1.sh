#!/bin/bash
set -u 

if [ $# -lt 1 ]
then
	 echo "please mention repo path"
	 exit 1
 fi


rm -rf /home/siva/1.txt /home/siva/2.txt /home/siva/3.csv
Repo_path=$1

cd "$Repo_path"
A=`ls -d */`
#A=`find . -maxdepth 1 -type d -printf "%f\n"`


for i in $A
 do
         echo "$i"
         cd $i
         git pull
         #git rev-parse --show-toplevel |  cut -d '/' -f5 | sed 's/$/,/' >> /home/siva/1.txt
         git rev-parse --show-toplevel |  cut -d '/' -f5  >> /home/siva/1.txt
         git log -1 --format="%at" | xargs -I{} date -d @{} +%Y/%m/%d_%H:%M:%S >> /home/siva/2.txt
         cd $Repo_path
        # cd /home/siva/gitrepo
        # paste example.txt example2.txt >> output1.csv
 done
    #paste /home/siva/example.txt /home/siva/example2.txt >> /home/siva/output1.csv
    sed -i '1iRepo_Name\' /home/siva/1.txt
    sed -i '1iLast_commit_date\' /home/siva/2.txt
    paste /home/siva/1.txt /home/siva/2.txt >> /home/siva/3.csv



