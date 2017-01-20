#!/bin/sh

osascript - <<END
tell application "/Applications/Google Chrome.app"
  activate
  delay 1

  tell application "System Events" to keystroke "1" using command down
  tell application "System Events" to keystroke "r" using command down
end tell
END

