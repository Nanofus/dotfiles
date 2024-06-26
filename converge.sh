# Export OS-specific configuration

cp ~/.gitconfig ~/.base.gitconfig

if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/.macos.bootstrap.config
  cp ~/Library/LaunchAgents/startup.plist ~/.macos.startup.plist
  cp ~/.config/Hyper/hyper.json ~/.base.hyper.json
  sed -i '' -e "s|${HYPER_SHELL}|HYPER_SHELL|" ~/.base.hyper.json
  sed -i '' -e "s|${HYPER_KEYMAP_PASTE}|HYPER_KEYMAP_PASTE|" ~/.base.hyper.json
  sed -i '' -e "s|${HYPER_KEYMAP_NEW_TAB}|HYPER_KEYMAP_NEW_TAB|" ~/.base.hyper.json
  sed -i '' -e "s|${HYPER_KEYMAP_CLOSE_TAB}|HYPER_KEYMAP_CLOSE_TAB|" ~/.base.hyper.json
  sed -i '' -e "s|${GIT_AUTOCRLF}|GIT_AUTOCRLF|" ~/.base.gitconfig
  sed -i '' -e "s|${GIT_SSH_COMMAND}|GIT_SSH_COMMAND|" ~/.base.gitconfig
  sed -i '' -e "s|${GIT_SSH_PROGRAM}|GIT_SSH_PROGRAM|" ~/.base.gitconfig
elif [[ "$OSTYPE" == "msys" ]]; then
  source ~/.windows.bootstrap.config
  cp $APPDATA/Hyper/hyper.json ~/.base.hyper.json
  sed -i "s|${HYPER_SHELL}|HYPER_SHELL|" ~/.base.hyper.json
  sed -i "s|${HYPER_KEYMAP_PASTE}|HYPER_KEYMAP_PASTE|" ~/.base.hyper.json
  sed -i "s|${HYPER_KEYMAP_NEW_TAB}|HYPER_KEYMAP_NEW_TAB|" ~/.base.hyper.json
  sed -i "s|${HYPER_KEYMAP_CLOSE_TAB}|HYPER_KEYMAP_CLOSE_TAB|" ~/.base.hyper.json
  sed -i "s|${GIT_AUTOCRLF}|GIT_AUTOCRLF|" ~/.base.gitconfig
  sed -i "s|${GIT_SSH_COMMAND}|GIT_SSH_COMMAND|" ~/.base.gitconfig
  sed -i "s|${GIT_SSH_PROGRAM}|GIT_SSH_PROGRAM|" ~/.base.gitconfig
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "not implemented"
fi
