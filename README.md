# Dotfiles readme

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
