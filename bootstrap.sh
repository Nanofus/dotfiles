# Install OS-specific configuration

cp .base.gitconfig .gitconfig

if [[ "$OSTYPE" == "darwin"* ]]; then
  source .macos.bootstrap.config
  cp .base.hyper.json .config/Hyper/hyper.json
  sed -i "s|HYPER_SHELL|${HYPER_SHELL}|" .config/Hyper/hyper.json
elif [[ "$OSTYPE" == "msys" ]]; then
  source .windows.bootstrap.config
  cp .base.hyper.json $APPDATA/Hyper/hyper.json
  sed -i "s|HYPER_SHELL|${HYPER_SHELL}|" $APPDATA/Hyper/hyper.json
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "not implemented"
fi

sed -i "s|GIT_AUTOCRLF|${GIT_AUTOCRLF}|" .gitconfig
sed -i "s|GIT_SSH_COMMAND|${GIT_SSH_COMMAND}|" .gitconfig
sed -i "s|GIT_SSH_PROGRAM|${GIT_SSH_PROGRAM}|" .gitconfig
