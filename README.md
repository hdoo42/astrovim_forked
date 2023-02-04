# AstroNvim User Configuration

My personal user config for AstroVim

## Installation

- Install AstroNvim

```sh
git clone https://github.com/AstroNvim/AstroNvim.git ~/.config/nvim
```

- Check out to V3 branch (temp)

```sh
git checkout -b "v3" "origin/v3" && git pull
```

- Install these user settings

```sh
git clone https://github.com/ElApostles/astrovim_forked.git ~/.config/nvim/lua/user
```

- Options: make symlink to goinfre

```sh
rm -rf ~/goinfre/.local && mkdir ~/goinfre/.local && ln -shf goinfre/.local ~/.local
```

- Options: install dependancy ( you can install all of below with [homebrew](https://brew.sh/))
- lazygit
- fzf
- ripgrep

- Initialize AstroVim

open any file or just type '(n)vim', plugins & lsp will installed automatically.
