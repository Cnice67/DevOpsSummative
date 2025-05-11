#!/bin/bash
set -e

# stop any existing process
pkill -f 'java.*DevOpsSummative' || true

# where CodeDeploy put your artifact
cd /home/ec2-user

# sanity check: if the file isn't here, fail early
if [[ ! -f DevOpsSummative-1.0-SNAPSHOT.jar ]]; then
  echo "ERROR: JAR not found in $(pwd)"
  exit 1
fi

# launch it in background
nohup java -jar DevOpsSummative-1.0-SNAPSHOT.jar > app.log 2>&1 &
