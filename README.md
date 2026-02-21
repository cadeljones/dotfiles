# dotfiles

Managed with GNU Stow.

## Managed packages

- `nvim` -> `~/.config/nvim`
- `tmux` -> `~/.config/tmux/tmux.conf`
- `ghostty` -> `~/.config/ghostty/config`
- `zsh` -> `~/.zshrc`, `~/.zprofile`, `~/.zshenv`
- `karabiner` -> `~/.config/karabiner/karabiner.json`
- `zed` -> `~/.config/zed/settings.json`
- `aerospace` -> `~/.config/aerospace/aerospace.toml`

## First-time setup (this machine)

```bash
./bootstrap.sh
```

## Manual commands

```bash
# Link/update packages
stow -R -t ~ nvim tmux ghostty zsh karabiner zed aerospace

# Remove links for a package
stow -D -t ~ nvim
```

## New machine

```bash
git clone git@github.com:cadeljones/dotfiles.git ~/dotfiles
cd ~/dotfiles
./bootstrap.sh
```
