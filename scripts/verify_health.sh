#!/bin/bash
# simple health‐check; exit non-zero if the app isn’t responding
curl --fail http://localhost:8080/actuator/health || exit 1
