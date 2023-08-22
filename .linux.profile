# NVM
source /usr/share/nvm/init-nvm.sh

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# WSL specific aliases
alias winget='winget.exe'
alias wsl='wsl.exe'

# SSH
alias ssh-add='ssh-add.exe'
alias ssh='ssh-add.exe -l > /dev/null || ssh-add.exe && ssh.exe'
