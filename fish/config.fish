## Aliases ##
alias cls="printf "\033c""
alias csl="cls"
alias g="git"
alias gg="lazygit"
alias d="docker"
alias dd="lazydocker"
alias fetch="fastfetch"
alias subl="subl.exe"
alias ip="ip addr"
alias cat="batcat"

## Variables ##
set -g PROFILE "$HOME/.config/fish/config.fish"
set -g CONFIG_FISH "$HOME/.config/fish/config.fish"
set -g CONFIG_VIM "$HOME/.config/nvim/init.vim"
set -g CONFIG_GIT "$HOME/.config/git/config"
set -g CONFIG_TMUX "$HOME/.config/tmux/tmux.conf"

## Themes ##
oh-my-posh init fish --config "$HOME/.config/omp/fluent.json" | source

## Initialialization ##
zoxide init fish | source
cls