export TERM="xterm-256color"

export PATH="/Users/pbang/miniconda3/bin:$PATH"

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down



# Hombrew installation of zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug zsh-users/zsh-syntax-highlighting
zplug zsh-users/zsh-history-substring-search
zplug zsh-users/zsh-completions
zplug zsh-users/zsh-autosuggestions

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
