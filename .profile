# Base prompt & alias stuff
alias lsa="ls -lhaGAgo --color=always | sed -re 's/^[^ ]* //'"
alias ls='ls -a --color=auto'
alias grep='grep --color=auto'

# Dotfiles config
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# per OS configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/.macos.profile
elif [[ "$OSTYPE" == "msys" ]]; then
    source ~/.windows.profile
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    source ~/.linux.profile
fi
