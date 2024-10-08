# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="dpoggi"

# Enable color support of ls and add handy aliases
if command -v dircolors >/dev/null; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Grep aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Alert alias for long-running commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'' )"'

# Export editor and PATH variables
export EDITOR='nvim'
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"

# Load aliases from a separate file (optional)
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# Enable programmable completion features
autoload -Uz compinit
compinit

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Which plugins would you like to load?
plugins=(git zsh-autosuggestions)

# Change the color of the suggestion text
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=magenta'

# Load Powerlevel10k theme

# Set history configuration
HISTCONTROL=ignoreboth
setopt appendhistory
HISTSIZE=1000
SAVEHIST=2000

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/go/bin
