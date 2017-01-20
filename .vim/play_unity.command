#!/bin/sh

osascript - <<END
tell application "Unity"
  activate
  delay 1
  tell application "System Events" to keystroke "p" using command down
end tell
END
