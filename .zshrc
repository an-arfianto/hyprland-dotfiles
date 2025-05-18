export SUDO_PROMPT="[%u] Sending Nuclear Code: "

# Starship setting
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# List of plugins used
plugins=( git zsh-256color zsh-autosuggestions zsh-syntax-highlighting fzf-tab )
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

# Config fzf
# source <(fzf --zsh)
export FZF_DEFAULT_OPTS="	--color=fg:white,bg:-1,hl:grey \
	--color=fg+:white,bg+:-1,hl+:black \
	--color=border:blue,header:green,gutter:red \
	--color=spinner:yellow,info:blue \
	--color=pointer:magenta,marker:red,prompt:grey --border --multi"
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list \
	'm:{a-zA-Z}={A-Za-z}' \
	'+r:|[._-]=* r:|=*' \
	'+l:|=*'
zstyle ':fzf-tab:*' fzf-flags --style=full --height=90% --pointer '>' \
  --color 'pointer:green:bold,bg+:-1:,fg+:green:bold,info:blue:bold,marker:yellow:bold,hl:gray:bold,hl+:yellow:bold' \
  --input-label ' Search ' --color 'input-border:blue,input-label:blue:bold' \
  --list-label ' Results ' --color 'list-border:green,list-label:green:bold' \
  --preview-label ' Preview ' --color 'preview-border:magenta,preview-label:magenta:bold'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons=always --color=always -a $realpath'
zstyle ':fzf-tab:complete:eza:*' fzf-preview 'eza -1 --icons=always --color=always -a $realpath'
zstyle ':fzf-tab:complete:bat:*' fzf-preview 'bat --color=always $realpath'
zstyle ':fzf-tab:*' fzf-bindings 'space:accept'
zstyle ':fzf-tab:*' accept-line enter

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
