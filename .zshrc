export SUDO_PROMPT="[%u] Sending Nuclear Code: "

# Starship setting
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# List of plugins used
plugins=( git zsh-256color zsh-autosuggestions zsh-syntax-highlighting )
source $ZSH/oh-my-zsh.sh

# Helpful aliases
alias c='clear' # clear terminal
alias l='eza -lh --icons=auto' # long list
alias ls='eza -1 --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# Config atuin
eval "$(atuin init zsh)"

# Config zoxide
eval "$(zoxide init zsh)"


eval "$(tv init zsh)"
# Config fzf
# source <(fzf --zsh)

# eval "$(tv init zsh)"
export FZF_DEFAULT_OPTS="
	--color=fg:#908caa,bg:#191724,hl:#ebbcba \
	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba \
	--color=border:#403d52,header:#31748f,gutter:#191724 \
	--color=spinner:#f6c177,info:#9ccfd8 \
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa \
    --border --multi"
#
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
export FZF_ALT_C_OPTS="--style full --preview 'eza --icons=always --tree --color=always {} | head -200'"

# FZF for tmux
export FZF_TMUX_OPTS=" -p70%,60% "

# Editor
export EDITOR=nvim

# PATH

# .local/bin
export PATH=/home/arifnur/.local/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
