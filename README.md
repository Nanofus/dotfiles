# Dotfiles

Cross-platform dotfiles used on MacOS, Windows (with Git Bash) and WSL (Arch).

## Setup

Based on [a Hacker News comment](https://news.ycombinator.com/item?id=11070797). The setup is completely cross-platform.
```
git clone --bare git@github.com:Nanofus/dotfiles.git $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
~/bootstrap.sh
```
Afterwards, use the `dotfiles` alias to commit changes.

## Package list exports

### Windows packages
`winget export -o ~/.export/winget.packages.json`

### npm and pnpm
`npm list --global --parseable --depth=0 | sed '1d' | awk '{gsub(/\/.*\//,"",$1); print}' > ~/.export/npm.packages.txt`

`pnpm list --global --parseable | sed '1d' | awk '{gsub(/\/.*\//,"",$1); print}' > ~/.export/pnpm.packages.txt`

### Arch and AUR packages
`yay -Qqen > ~/.export/pacman.packages.txt`
`yay -Qqem > ~/.export/aur.packages.txt`

### Brew packages
`brew leaves > ~/.export/brew.packages.txt`
