# per OS configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp .macos.gitconfig .gitconfig
    cp .config/Hyper/macos.hyper.json .config/Hyper/hyper.json
elif [[ "$OSTYPE" == "msys" ]]; then
    cp .windows.gitconfig .gitconfig
    cp .config/Hyper/windows.hyper.json $APPDATA/Hyper/hyper.json
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    cp .linux.gitconfig .gitconfig
fi
