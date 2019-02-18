#!/bin/bash
if [ $ENVIRONMENT = "QA" ]; then
   echo Deploying to "$ENVIRONMENT" Environment ....
   sshpass -p "gamut" scp gamutkart.war gamut@172.17.0.2:/home/gamut/apache-tomcat-8.5.11/webapps
elif [ $ENVIRONMENT = "PROD" ]; then
   echo Deploying to "$ENVIRONMENT" Environment....
   sshpass -p "gamut" scp gamutkart.war gamut@172.17.0.3:/home/gamut/apache-tomcat-8.5.11/webapps
fi

