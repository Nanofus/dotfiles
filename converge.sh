# Install OS-specific configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp .gitconfig .macos.gitconfig
    cp .config/Hyper/hyper.json .config/Hyper/macos.hyper.json
elif [[ "$OSTYPE" == "msys" ]]; then
    cp .gitconfig .windows.gitconfig
    cp $APPDATA/Hyper/hyper.json .config/Hyper/windows.hyper.json
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    cp .gitconfig .linux.gitconfig
fi
