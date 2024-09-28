export PATH=$HOME/bin:/usr/local/bin:$HOME/.gem/ruby/2.6.0/bin:$HOME/flutter/bin:$PATH
export PATH=~/tools/nvim-macos/bin:$PATH
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export PATH=~/go/bin:$PATH

export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="headline"
export XDG_CONFIG_HOME=$HOME/.config

source $ZSH/oh-my-zsh.sh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

#docker 
alias 'start docker'="open /Applications/Docker.app/Contents/MacOS/Docker\ Desktop.app"

#tmux
alias ta='tmux attach-session -t'
alias tka='tmux kill-server'
alias tk='tmux kill-session -t'
alias tl='tmux ls'

alias udf='bash ~/.scripts/update-dotfile.bash'
alias ide='bash ~/.scripts/ide.bash'

alias vim='nvim'
alias v='nvim'
alias cls='clear'
alias python=~/.pyenv/versions/3.12.5/bin/python
alias pip=~/.pyenv/versions/3.12.5/bin/pip

findandkill() {
  $(lsof -ti:3000 | xargs kill)
}

alias kill_port=findandkill

change_kitty_profile() {
  sh ~/.config/kitty/change-profile.sh
}

toggle_kitty_transparency() {
  sh ~/.config/kitty/toggle-transparency.sh
}

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/share/sentry-devenv/bin:$PATH"

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# sst
export PATH=/Users/tanongsakintean/.sst/bin:$PATH

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

### FZF ###
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias la=tree
alias cat=bat

# Git
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias gadd='git add'
alias ga='git add -p'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."


source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

eval $(thefuck --alias)
