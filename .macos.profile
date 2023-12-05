# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# NPM global
export PATH=~/.npm-global/bin:$PATH
# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"

export SHELL="/opt/homebrew/bin/bash"
export EDITOR="/opt/homebrew/bin/nano"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
