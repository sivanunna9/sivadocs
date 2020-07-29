#!/bin/bash

tag=$1
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
if [ -z "$tag" ]
then
	echo "please specify a tag/branch"
fi
	cd /home/ubuntu/siva
       
#	git clone https://github.com/sivakiran9/Tender-Management-System.git
	git clone -b $tag --single-branch --depth 1 https://github.com/sivakiran9/Tender-Management-System.git

      echo "Repository cloning is done"
 
    cd /home/ubuntu/siva/Tender-Management-System/tendermanagement

    mvn clean install 

    cd /home/ubuntu/siva/Tender-Management-System/tendermanagement/target
    cp tendermanagement-0.0.1-SNAPSHOT.war /home/ubuntu/apache-tomcat-8.5.56/webapps
    cd 
    sh apache-tomcat-8.5.56/bin/startup.sh 
    docker build  -t siva:$tag .
  
    cd /home/ubuntu/siva/Tender-Management-System/tendermanagement

    docker build --build-arg BUILD_ENV=prod -t siva:$tag .

   docker tag siva:$tag 141693053.dkr.ecr.us-east-2.amazonaws.com/kiran:$tag
   docker push 141693053.dkr.ecr.us-east-2.amazonaws.com/kiran:$tag
   if [  $? -eq "0" ]
   then
           echo "${green}docker image is sucesufully pushed${reset}"
   else
	   echo "${red}docker image is not pushed${reset}"

   fi

   docker pull 141693053.dkr.ecr.us-east-2.amazonaws.com/kiran:$tag
   if [  $? -ne "0" ]
   then
	   echo "${red}docker image is not pulled${reset}"
   fi
  docker run -itd --name new-docker1 -p 8084:8080 141693053.dkr.ecr.us-east-2.amazonaws.com/kiran:$tag

