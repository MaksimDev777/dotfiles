# dotfiles

## Setup

```sh
git clone https://github.com/maksim/dotfiles ~/code/dotfiles
cd ~/code/dotfiles
./install.sh
```

## What's inside

| Tool | Config       |
| ---- | ------------ |
| tmux | `.tmux.conf` |
| nvim | `.config/nvim/` |
| zsh | `.zshrc`, `.p10k.zsh` |

## How it works

[GNU Stow](https://www.gnu.org/software/stow/) symlinks each config to its expected location in `$HOME`. Adding a new tool:

1. Create a folder named after the tool
2. Mirror the path as it would appear in `$HOME`
3. Run `stow <folder>`
