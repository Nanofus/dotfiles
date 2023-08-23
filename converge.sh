# Export OS-specific configuration

cp .gitconfig .base.gitconfig

if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/.macos.bootstrap.config
  cp ~/.config/Hyper/hyper.json ~/.base.hyper.json
elif [[ "$OSTYPE" == "msys" ]]; then
  source ~/.windows.bootstrap.config
  cp $APPDATA/Hyper/hyper.json ~/.base.hyper.json
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "not implemented"
fi

sed -i '' -e "s|${HYPER_SHELL}|HYPER_SHELL|" ~/.base.hyper.json
sed -i '' -e "s|${GIT_AUTOCRLF}|GIT_AUTOCRLF|" ~/.base.gitconfig
sed -i '' -e "s|${GIT_SSH_COMMAND}|GIT_SSH_COMMAND|" ~/.base.gitconfig
sed -i '' -e "s|${GIT_SSH_PROGRAM}|GIT_SSH_PROGRAM|" ~/.base.gitconfig
