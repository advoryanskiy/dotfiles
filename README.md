# Requirements

## For macos

Install [homebrew](https://brew.sh)

### Stow

Install [GNU Stow](https://www.gnu.org/software/stow/):

```sh
brew install stow
```

### Git configs

```sh
stow git
```

### Binaries

Will be installed in `~/.local/bin`

```sh
stow bin
```

### Alacritty

Install [alacritty](https://alacritty.org):

```sh
brew install alacritty
```

Install config:

```sh
stow alacritty
```

### Tmux

Install [tmux](https://github.com/tmux/tmux):

```sh
brew install tmux
```

Install config:

```sh
stow tmux
```

Install [tpm](https://github.com/tmux-plugins/tpm):

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Open tmux config and install plugins:

```sh
vim ~/.config/tmux/tmux.conf
# press ctrl+a I
```

### Zsh

Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh):

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install plugins:

```sh
# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# syntax highlighting
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

