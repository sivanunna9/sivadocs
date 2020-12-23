#!/bin/bash
A='tr'
APPCOUNT=$1
for (( counter=0; counter<$APPCOUNT; counter++ ))
do
docker run -itd --name "$A""$counter" 141693053937.dkr.ecr.us-east-2.amazonaws.com/kiran:latest
done

