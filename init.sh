#!/bin/bash

# installs
/bin/bash -c "sudo /usr/bin/apt install -y curl"
/bin/bash -c "sudo /usr/bin/apt install -y wget"
/bin/bash -c "sudo /usr/bin/apt install -y git"
/bin/bash -c "sudo /usr/bin/apt install -y neovim"
/bin/bash -c "sudo /usr/bin/apt install -y exa"
/bin/bash -c "sudo /usr/bin/apt install -y bat"
/bin/bash -c "sudo /usr/bin/apt install -y neofetch"
/bin/bash -c "sudo /usr/bin/apt install -y tmux"
/bin/bash -c "sudo /usr/bin/apt install -y nala"
/bin/bash -c "sudo /usr/bin/apt install -y build-essential"
/bin/bash -c "git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm"
NONINTERACTIVE=1 /bin/bash -c "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/home/linuxbrew/.linuxbrew/bin/brew install jandedobbeleer/oh-my-posh/oh-my-posh
/home/linuxbrew/.linuxbrew/bin/brew install gcc
/home/linuxbrew/.linuxbrew/bin/brew install zoxide
/home/linuxbrew/.linuxbrew/bin/brew install btop
/bin/bash -c "$(/usr/bin/wget -q -O vivid.deb https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb)" && /bin/bash -c "sudo dpkg -i ./vivid.deb ; rm -f ./vivid.deb"
/bin/bash -c "$(/usr/bin/wget -q -O conda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)" && /bin/bash -c "/bin/sh ./conda.sh -bu ; rm -f ./conda.sh"
/home/linuxbrew/.linuxbrew/bin/brew install fish
/home/linuxbrew/.linuxbrew/bin/fish -c "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install)"
/home/linuxbrew/.linuxbrew/bin/fish -c "$(/usr/bin/curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish) | source && fisher install jorgebucaran/fisher"

# setup shells
/bin/bash -c "/usr/bin/grep -qxF "/home/linuxbrew/.linuxbrew/bin/fish" /etc/shells || echo "/home/linuxbrew/.linuxbrew/bin/fish" | sudo /usr/bin/tee -a /etc/shells"
/bin/bash -c "sudo chsh -s /home/linuxbrew/.linuxbrew/bin/fish jikol"

# config reloads
/home/jikol/miniconda3/bin/conda init fish
/usr/bin/batcat cache --build
/home/linuxbrew/.linuxbrew/bin/fish -c "zoxide init fish | source"
/home/linuxbrew/.linuxbrew/bin/fish -c "source ~/.config/fish/config.fish"
/bin/bash -c "tmux new-session -d"
/bin/bash -c "tmux source ~/.config/tmux/tmux.conf"
/bin/bash -c "tmux kill-server"

# message
echo "Go to tmux with `tmux` command and press ctrl + space + I"
