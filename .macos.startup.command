# Swap rightmost Cmd and Opt for more ergonomic Colemak usage
# Also bind caps lock to backspace
hidutil property --set '{"UserKeyMapping":
    [{"HIDKeyboardModifierMappingSrc":0x700000039,
      "HIDKeyboardModifierMappingDst":0x70000002A},
     {"HIDKeyboardModifierMappingSrc":0x7000000e7,
      "HIDKeyboardModifierMappingDst":0x7000000e6},
     {"HIDKeyboardModifierMappingSrc":0x7000000e6,
      "HIDKeyboardModifierMappingDst":0x7000000e7}]
}'
# Don't do the swap for external keyboard
hidutil property --matching '{"ProductID":0x1969}' --set '{"UserKeyMapping":
    [{"HIDKeyboardModifierMappingSrc":0x7000000e7,
      "HIDKeyboardModifierMappingDst":0x7000000e7},
     {"HIDKeyboardModifierMappingSrc":0x7000000e6,
      "HIDKeyboardModifierMappingDst":0x7000000e6}]
}'

# Swap Arc's icon without the whole invite mess
# https://twitter.com/kaepora/status/1764556190745288747
# defaults write company.thebrowser.Browser currentAppIconName "flutedGlass"

# Swap mymind's macOS icon
# sudo iconsur set /Applications/mymind.app

# Disable menubar in some apps
# (Find id with `osascript -e 'id of app "TextEdit"'`)
defaults write company.thebrowser.Browser AppleMenuBarVisibleInFullscreen -bool false
defaults write md.obsidian AppleMenuBarVisibleInFullscreen -bool false
