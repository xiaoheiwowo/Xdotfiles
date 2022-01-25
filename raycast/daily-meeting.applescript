#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Daily Meeting
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 
# @raycast.packageName Tool

# Documentation:
# @raycast.author
# @raycast.authorURL

on run argv
	
	### End of configuration ###
	### do shell script "open -a 'Google Chrome'"
	
	tell application "Google Chrome"
		activate
		open location "https://app.clickup.com/3633188/v/l/3ew14-1307"
	end tell
	delay 1
	# tell application "Google Chrome" to activate
	tell application "Finder" to set volume 75
	do shell script "open -a Zhumu"
	delay 7
	tell application "System Events"
		tell process "Zhumu"
			keystroke "v" using {command down, control down}
			delay 0.3
			### entire contents
		end tell
	end tell
	delay 12
	tell application "System Events"
		tell application process "Zhumu"
			tell window "瞩目 会议号: 198-663-9023" to active
			keystroke "u" using command down
			delay 0.3
			# click menu item "瞩目 会议号: 198-663-9023" of menu "窗口" of menu bar item "窗口" of menu bar 1
			entire contents
		end tell
	end tell
end run
