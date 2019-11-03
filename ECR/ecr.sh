#!/bin/bash
OUTPUT="$(aws ecr get-login --no-include-email --region ap-south-1)"
echo "${OUTPUT}"
sudo $OUTPUT

sudo docker pull 668624320430.dkr.ecr.ap-south-1.amazonaws.com/siva1995:latest
sudo docker run -it --name nginx -p 80:80 668624320430.dkr.ecr.ap-south-1.amazonaws.com/siva1995:latest /bin/bash
exit 
