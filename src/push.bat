"lua\lua.exe" ldoc.lua --project "GuiH docs" --title "GuiH documentation" --dir "9551-dev.github.io" GuiH/

copy /Y "GuiH\ldoc.css" "9551-dev.github.io\ldoc.css"

PAUSE