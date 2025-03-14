#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Daily Meeting
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🏗️

# Documentation:
# @raycast.description Start Daily Meeting
# @raycast.author pengyu.liu

tell application "Zhumu" to activate
# tell application "Zen Browser" to activate
delay 10
tell application "Zen Browser"
	activate
	open location "https://project.atcloudbox.com/secure/RapidBoard.jspa?rapidView=858&selectedIssue=AS-2015&quickFilter=1535"
end tell
tell application "Google Chrome"
  open location "https://meeting.zhumu.com/j/1757772677?pwd="
end tell

# tell application "System Events"
# 	tell process "Zhumu"
# 		try
#       open window 2
# 			click button "加入会议" of window 1
# 		on error
# 			display dialog "找不到 '加入会议' 按钮，请检查窗口层级或权限"
# 		end try
# 	end tell
# end tell
