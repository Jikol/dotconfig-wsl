# Aliases
alias cls="printf "\033c""
alias csl="cls"
alias rld="omf reload" #! needs oh-my-fish
alias rmr="rm -r"
alias vim="nvim"
alias root="su root -L"
alias cat="batcat"
alias ssh="ssh.exe"
alias tmuxrld="tmux source ~/.config/tmux/tmux.conf"

# Functions
source ~/.config/fish/functions/use-nala.fish

# Listings
alias ls="exa --color always --icons" #! needs exa
alias ll="exa -lg --color always --icons" #! needs exa
alias la="exa -lag --color always --icons" #! needs exa

# Path Appends
fish_add_path /home/linuxbrew/.linuxbrew/bin
fish_add_path /home/linuxbrew/.linuxbrew/sbin
fish_add_path /home/jikol/.local/bin

# Environment Variables
export GIT_CONFIG_GLOBAL="$HOME/.config/git/.gitconfig"
export CONFIG_FISH="$HOME/.config/fish/config.fish"
export CONFIG_TMUX="$HOME/.config/tmux/tmux.conf"
export LS_COLORS="$(vivid generate ~/.config/vivid/cattpuccin-mocha.yml)"
export XDG_CONFIG_HOME="$HOME/.config"

# Prompt Theme
oh-my-posh init fish --config "~/.config/omp/fluent.json" | source

# Zoxide init
zoxide init fish | source #! needs zoxide

# Supress MOTD
set fish_greeting

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jikol/miniconda3/bin/conda
    eval /home/jikol/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/jikol/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/jikol/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/jikol/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

