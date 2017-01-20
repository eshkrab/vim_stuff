#!/bin/sh

osascript - <<END
tell application "Xcode"
  activate
  delay 1
  tell application "System Events" to keystroke "r" using command down
end tell
END
