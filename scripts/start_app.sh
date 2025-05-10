#!/bin/bash
# start the JAR in the background and log output
nohup java -jar /home/ec2-user/DevOpsSummativeApp.jar \
  > /home/ec2-user/app.log 2>&1 &
