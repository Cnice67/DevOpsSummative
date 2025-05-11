#!/bin/bash
cd /home/ec2-user

# kill any old instance (optional)
pkill -f DevOpsSummative-1.0-SNAPSHOT.jar || true

# launch in background, redirect logs
nohup java -jar DevOpsSummative-1.0-SNAPSHOT.jar > app.log 2>&1 &
