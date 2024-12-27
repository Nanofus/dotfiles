# Export OS-specific configuration

cp ~/.gitconfig ~/.base.gitconfig

if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/.macos.bootstrap.config
  cp ~/Library/LaunchAgents/startup.plist ~/.macos.startup.plist
  sed -i '' -e "s|${GIT_AUTOCRLF}|GIT_AUTOCRLF|" ~/.base.gitconfig
  sed -i '' -e "s|${GIT_SSH_COMMAND}|GIT_SSH_COMMAND|" ~/.base.gitconfig
  sed -i '' -e "s|${GIT_SSH_PROGRAM}|GIT_SSH_PROGRAM|" ~/.base.gitconfig
elif [[ "$OSTYPE" == "msys" ]]; then
  source ~/.windows.bootstrap.config
  sed -i "s|${GIT_AUTOCRLF}|GIT_AUTOCRLF|" ~/.base.gitconfig
  sed -i "s|${GIT_SSH_COMMAND}|GIT_SSH_COMMAND|" ~/.base.gitconfig
  sed -i "s|${GIT_SSH_PROGRAM}|GIT_SSH_PROGRAM|" ~/.base.gitconfig
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "not implemented"
fi
