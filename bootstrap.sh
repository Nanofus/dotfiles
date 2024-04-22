# Install OS-specific configuration

cp ~/.base.gitconfig ~/.gitconfig

if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/.macos.bootstrap.config
  cp ~/.macos.startup.plist ~/Library/LaunchAgents/startup.plist
  cp ~/.base.hyper.json ~/.config/Hyper/hyper.json
  sed -i '' -e "s|HYPER_SHELL|${HYPER_SHELL}|" ~/.config/Hyper/hyper.json
  sed -i '' -e "s|HYPER_KEYMAP_PASTE|${HYPER_KEYMAP_PASTE}|" ~/.config/Hyper/hyper.json
  sed -i '' -e "s|HYPER_KEYMAP_NEW_TAB|${HYPER_KEYMAP_NEW_TAB}|" ~/.config/Hyper/hyper.json
  sed -i '' -e "s|HYPER_KEYMAP_CLOSE_TAB|${HYPER_KEYMAP_CLOSE_TAB}|" ~/.config/Hyper/hyper.json
  sed -i '' -e "s|GIT_AUTOCRLF|${GIT_AUTOCRLF}|" ~/.gitconfig
  sed -i '' -e "s|GIT_SSH_COMMAND|${GIT_SSH_COMMAND}|" ~/.gitconfig
  sed -i '' -e "s|GIT_SSH_PROGRAM|${GIT_SSH_PROGRAM}|" ~/.gitconfig
elif [[ "$OSTYPE" == "msys" ]]; then
  source ~/.windows.bootstrap.config
  cp ~/.base.hyper.json $APPDATA/Hyper/hyper.json
  sed -i "s|HYPER_SHELL|${HYPER_SHELL}|" $APPDATA/Hyper/hyper.json
  sed -i "s|HYPER_KEYMAP_PASTE|${HYPER_KEYMAP_PASTE}|" $APPDATA/Hyper/hyper.json
  sed -i "s|HYPER_KEYMAP_NEW_TAB|${HYPER_KEYMAP_NEW_TAB}|" $APPDATA/Hyper/hyper.json
  sed -i "s|HYPER_KEYMAP_CLOSE_TAB|${HYPER_KEYMAP_CLOSE_TAB}|" $APPDATA/Hyper/hyper.json
  sed -i "s|GIT_AUTOCRLF|${GIT_AUTOCRLF}|" ~/.gitconfig
  sed -i "s|GIT_SSH_COMMAND|${GIT_SSH_COMMAND}|" ~/.gitconfig
  sed -i "s|GIT_SSH_PROGRAM|${GIT_SSH_PROGRAM}|" ~/.gitconfig
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "not implemented"
fi
