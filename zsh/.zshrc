export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

# starship
eval "$(starship init zsh)"

# alias
alias ls='exa --icons'
alias ll='exa --icons -l'
alias lla='exa --icons -a -l'
alias llt='exa --icons -T -L 2'
alias py='python3'
alias grep='grep --color=auto'
alias lg='lazygit'
alias ldk='lazydocker'

# nvim fzf
nf() {
  local file=$(fzf -m --preview "bat --color=always {}")
  if [[ -n "$file" ]]; then
    local project_root=$(git -C "$(dirname "$file")" rev-parse --show-toplevel 2>/dev/null || dirname "$file")
    nvim "$file" -c "cd $project_root"
  fi
}

export FZF_DEFAULT_OPTS='
  --color fg:#d6d6d6,bg:#0b0b0b
  --color fg+:#0b0b0b,bg+:#e05c78
  --color hl:#e6d37a,hl+:#e6d37a
  --color gutter:#0b0b0b
  --color pointer:#e05c78
  --color marker:#6f99e8
  --color header:#79c2c0
  --color info:#7fc48f
  --color prompt:#6f99e8
  --color spinner:#b27cd9
  --color border:#151515
  --border
  --height 24'

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# default editor
export EDITOR=nvim

# nodejs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#50575a,bold"
ZSH_HIGHLIGHT_STYLES[path]='fg=white'

# echo "\nSelalu Hello World Cuyy😀😀😀!"

# bun completions
[ -s "/home/adi/.bun/_bun" ] && source "/home/adi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Java
export PATH="/usr/lib/jvm/java-<version>-openjdk/bin/:$PATH"

# Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Zoxide
eval "$(zoxide init zsh)"

# Function to keep the prompt at the bottom
function keep_prompt_at_bottom() {
  echo -ne "\033[999;1H"
}

# Precmd function to move the prompt to the bottom
function precmd() {
  # keep_prompt_at_bottom
}

# Interactive Zoxide FZF
zi() {
    local dir
    dir=$(zoxide query -l | fzf --preview 'ls -al {}' --preview-window=up:10) || return
    cd "$dir" || return
}

. "$HOME/.local/bin/env"

export MESA_LOADER_DRIVER_OVERRIDE=i965
export INTEL_DEBUG=perf
