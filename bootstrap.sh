# Install OS-specific configuration

cp ~/.base.gitconfig ~/.gitconfig

if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/.macos.bootstrap.config
  cp ~/.macos.startup.plist ~/Library/LaunchAgents/startup.plist
  sed -i '' -e "s|GIT_AUTOCRLF|${GIT_AUTOCRLF}|" ~/.gitconfig
  sed -i '' -e "s|GIT_SSH_COMMAND|${GIT_SSH_COMMAND}|" ~/.gitconfig
  sed -i '' -e "s|GIT_SSH_PROGRAM|${GIT_SSH_PROGRAM}|" ~/.gitconfig
elif [[ "$OSTYPE" == "msys" ]]; then
  source ~/.windows.bootstrap.config
  sed -i "s|GIT_AUTOCRLF|${GIT_AUTOCRLF}|" ~/.gitconfig
  sed -i "s|GIT_SSH_COMMAND|${GIT_SSH_COMMAND}|" ~/.gitconfig
  sed -i "s|GIT_SSH_PROGRAM|${GIT_SSH_PROGRAM}|" ~/.gitconfig
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "not implemented"
fi
