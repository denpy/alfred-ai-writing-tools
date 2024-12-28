on run argv
    set toolName to item 1 of argv

    tell application "System Events"
        set frontApp to name of first application process whose frontmost is true
        tell process frontApp
            tell menu bar item "Edit" of menu bar 1
                tell menu item "Writing Tools" of menu "Edit"
                    tell menu "Writing Tools"
                        perform action "AXPress" of menu item toolName
                    end tell
                end tell
            end tell
        end tell
    end tell
end run
