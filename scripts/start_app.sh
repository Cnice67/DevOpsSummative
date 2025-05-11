#!/bin/bash
cd /home/ec2-user
nohup java -jar DevOpsSummative-1.0-SNAPSHOT.jar \
  --server.port=8080 > app.log 2>&1 &
