#!/bin/bash
set -e

# wait for Apache to start up
sleep 5

# hit port 80, not 8080
curl --fail http://localhost/ || {
  echo "Health check on port 80 failed"
  exit 1
}

echo "OK"
exit 0
