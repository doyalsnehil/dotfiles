# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set theme and plugins
ZSH_THEME="xiong-chiamiov-plus"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# --- User Configuration ---

# Path exports
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="$PATH:/home/snehil/.local/bin" # Corrected pipx path

# Editor configuration
export EDITOR='nvim'
alias vim='nvim'

# NVM (Node Version Manager) configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Brew and Tmuxifier
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(tmuxifier init -)"

# Key bindings
bindkey -s '^F' 'tmux-sessionizer\n'
bindkey -s '^A' 'tmux attach\n'
