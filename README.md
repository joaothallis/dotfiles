# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## What's included

- `.bashrc` — shell configuration
- `.gitconfig` — git user settings
- `.config/nvim/` — Neovim config with GitHub Copilot (uses chezmoi templates to adapt paths between Termux and other platforms)

## Usage

```sh
chezmoi init joaothallis/dotfiles
chezmoi apply
```
