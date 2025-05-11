# #!/bin/bash
# # wait up to 60s for your Spring-Boot app to answer on 8080
# for i in {1..12}; do
#   if curl --silent http://localhost:8080/actuator/health | grep UP; then
#     exit 0
#   fi
#   sleep 5
# done
# exit 1
