export TERM="xterm-256color"
export BROWSER=firefox
export FREETYPE_PROPERTIES="cff:no-stem-darkening=0"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Zoxide
eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh

# starship
eval "$(starship init zsh)"

# alias
alias ls='exa --icons'
alias ll='exa --icons -l'
alias lla='exa --icons -a -l'
alias llt='exa --icons -T -L 2 --git-ignore'
alias py='python3'
alias grep='grep --color=auto'
alias lg='lazygit'
alias ldr='lazydocker'
alias c='clear'
alias pw='poweroff'
alias ib='inxi -B'
alias gcbu='git shortlog -sn --all'
alias v='nvim'
alias a='y'
alias f='rxfetch'
alias tmux='tmux -2'

# nvim fzf
nf() {
  local file=$(fzf -m --preview "bat --color=always {}")
  if [[ -n "$file" ]]; then
    local project_root=$(git -C "$(dirname "$file")" rev-parse --show-toplevel 2>/dev/null || dirname "$file")
    nvim "$file" -c "cd $project_root"
  fi
}

export FZF_DEFAULT_OPTS='
  --color=fg:#8b949e,hl:#ffffff
  --color=fg+:#c9d1d9,bg+:-1,hl+:#ffa198
  --color=info:#d29922,prompt:#58a6ff,pointer:#a371f7
  --color=marker:#ff7b72,spinner:#6e7681,header:#343941
  --border
  --height=24'

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


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=color8,bold"
ZSH_HIGHLIGHT_STYLES[path]='fg=color15'

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

export MESA_LOADER_DRIVER_OVERRIDE=i965
export INTEL_DEBUG=perf

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"
. "/home/adi/.deno/env"

export PATH="$PATH:$HOME/go/bin"
