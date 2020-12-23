#!/bin/bash
rm -rf /home/siva/example.txt /home/siva/example2.txt /home/siva/output1.csv
cd /home/siva/gitrepo 

#A=`ls -l | grep ^d`
A=`find . -maxdepth 1 -type d -printf "%f\n"`
#B=`ls $Ai`	
for i in $A
 do 
	 #echo "$i"
	 cd $i
	 git pull
	 git rev-parse --show-toplevel |  cut -d '/' -f5 >> /home/siva/example.txt
	 git log -1 --format="%at" | xargs -I{} date -d @{} +%Y/%m/%d_%H:%M:%S >> /home/siva/example2.txt
	 cd /home/siva/gitrepo
	# paste example.txt example2.txt >> output1.csv
 done
    #paste /home/siva/example.txt /home/siva/example2.txt >> /home/siva/output1.csv
    sed -i '1iRepo_Name\' /home/siva/example.txt
    sed -i '1iLast_commit_date\' /home/siva/example2.txt 
    paste /home/siva/example.txt /home/siva/example2.txt >> /home/siva/output1.csv
#cd $A
#ls -l | grep ^d
#cd $A/yyy



#git rev-parse --show-toplevel |  cut -d '/' -f5 >> /home/siva/output.csv 
#git pull
#git log -1 --format="%at" | xargs -I{} date -d @{} +%Y/%m/%d_%H:%M:%S >> /home/siva/output.csv


