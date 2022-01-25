#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Work
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/slack-logo.png
# @raycast.packageName Tool

# Documentation:
# @raycast.author
# @raycast.authorURL

on run argv
	
	### End of configuration ###
	do shell script "open -a Slack"
	do shell script "open -a Goland"
	do shell script "open -a 'Google Chrome'"
	do shell script "open -a iTerm"
	
	
end run
