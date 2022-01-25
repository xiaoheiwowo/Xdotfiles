#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Print TLDR doc
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Command" }
# @raycast.packageName Developer Utils

# @Documentation:
# @raycast.description Print the tldr documentation for a command
# @raycast.author Achille Lacoin
# @raycast.authorURL https://github.com/pomdtr
tldr "$1" --color

