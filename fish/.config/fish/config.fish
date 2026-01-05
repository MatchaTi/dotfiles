if status is-interactive
# Commands to run in interactive sessions can go here
end

# aliases
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

starship init fish | source
zoxide init fish | source
fzf --fish | source

# ~/.config/fish/functions/nvm.fish
function nvm
  bass source ~/.config/nvm/nvm.sh --no-use ';' nvm $argv
end

# ~/.config/fish/functions/nvm_find_nvmrc.fish
function nvm_find_nvmrc
  bass source ~/.config/nvm/nvm.sh --no-use ';' nvm_find_nvmrc
end

# ~/.config/fish/functions/load_nvm.fish
function load_nvm --on-variable="PWD"
  set -l default_node_version (nvm version default)
  set -l node_version (nvm version)
  set -l nvmrc_path (nvm_find_nvmrc)
  if test -n "$nvmrc_path"
    set -l nvmrc_node_version (nvm version (cat $nvmrc_path))
    if test "$nvmrc_node_version" = "N/A"
      nvm install (cat $nvmrc_path)
    else if test "$nvmrc_node_version" != "$node_version"
      nvm use $nvmrc_node_version
    end
  else if test "$node_version" != "$default_node_version"
    #echo "Reverting to default Node version"
    nvm use default
  end
end

# ~/.config/fish/config.fish
# You must call it on initialization or listening to directory switching won't work
load_nvm > /dev/stderr

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# yazi
function a
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
