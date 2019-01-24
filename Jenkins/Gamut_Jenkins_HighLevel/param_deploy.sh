#!/bin/bash
if [ $ENVIRONMENT = "QA" ]; then
   echo Deploying to "$ENVIRONMENT" Environment ....
   sshpass -p "gamut" scp gamutkart.war gamut@172.17.0.2:/home/gamut/apache-tomcat-8.5.11/webapps
elif [ $ENVIRONMENT = "PROD" ]; then
   echo Deploying to "$ENVIRONMENT" Environment....
   sshpass -p "gamut" scp gamutkart.war gamut@172.17.0.3:/home/gamut/apache-tomcat-8.5.11/webapps
fi

if [ $ENVIRONMENT = "QA" ]; then
sshpass -p "123" scp target/gamutkart.war satya@172.17.0.3:/home/satya/distros/apache-tomcat-8.5.35/webapps
sshpass -p "123" ssh satya@172.17.0.3 "JAVA_HOME=/home/satya/distros/jdk1.8.0_191" "/home/satya/distros/apache-tomcat-8.5.35/bin/startup.sh"
elif [ $ENVIRONMENT = "SIT" ]; then
sshpass -p "123" scp target/gamutkart.war satya@172.17.0.2:/home/satya/distros/apache-tomcat-8.5.35/webapps
sshpass -p "123" ssh satya@172.17.0.2 "JAVA_HOME=/home/satya/distros/jdk1.8.0_191" "/home/satya/distros/apache-tomcat-8.5.35/bin/startup.sh"
fi
'sshpass -p "123" ssh satya@172.17.0.2 JAVA_HOME=/home/satya/distros/jdk1.8.0_191 /home/satya/distros/apache-tomcat-8.5.35/bin/startup.sh'

#!/bin/bash 
if [ $ENVIRONMENT = "QA" ]; then
sshpass -p "123" scp target/gamutkart.war satya@172.17.0.3:/home/satya/distros/apache-tomcat-8.5.35/webapps
sshpass -p "123" ssh -o StrictHostkeyChecking=no satya@172.17.0.3 "JAVA_HOME=/home/satya/distros/jdk1.8.0_191" "/home/satya/distros/apache-tomcat-8.5.35/bin/startup.sh"
elif [ $ENVIRONMENT = "SIT" ]; then
sshpass -p "123" scp target/gamutkart.war satya@172.17.0.4:/home/satya/distros/apache-tomcat-8.5.35/webapps
sshpass -p "123" ssh -o StrictHostkeyChecking=no satya@172.17.0.4 "JAVA_HOME=/home/satya/distros/jdk1.8.0_191" "/home/satya/distros/apache-tomcat-8.5.35/bin/startup.sh"
