#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title IP
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Developer Utils

# @Documentation:
# @raycast.description Print Public IP

#ip=ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}' | tr -d "\n"

#echo $ip

# echo $ip > pbcopy

ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}' | tr -d "\n" | pbcopy
pbpaste
