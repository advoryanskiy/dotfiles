# --- Powerlevel10k {{

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# }}  Powerlevel10k



# --- Basic Configuration {{

# Address multiple PATH sources
typeset -U PATH

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# zsh custom
export ZSH_CUSTOM="$ZSH/custom"

# oh-my-zsh plugins
plugins=(
    vi-mode
    git
    gitignore
    history
    brew
    zsh-autosuggestions
    zsh-syntax-highlighting
    colorize
    colored-man-pages
    sudo
    urltools
    aliases
)

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Editor
export EDITOR=nvim

# }}  Basic Configuration



# --- Other {{

# fzf
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTION='-p 90%,80% --layout=reverse --border'
alias ff="nvim \$(fzf-tmux $FZF_DEFAULT_OPTION)"
alias f="fzf-tmux $FZF_DEFAULT_OPTION"
# Useful key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable shell completion
autoload -U compinit; compinit

# }}  Other



# --- Aliases {{

# Basic
alias vim="nvim"
alias vi="nvim"
alias cp='cp -i'
alias mv='mv -i'

# }}  Aliases



# --- Path {{

# Local user
export PATH="$HOME/.local/bin:$PATH"

# Brew path
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"

# }}  Path



# --- asdf {{

# Base
. /usr/local/opt/asdf/libexec/asdf.sh

# java
. ~/.asdf/plugins/java/set-java-home.zsh

# }}  asdf

