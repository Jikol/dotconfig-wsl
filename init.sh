#!/bin/bash

/bin/bash -c "sudo /usr/bin/apt install -y curl"
/bin/bash -c "sudo /usr/bin/apt install -y wget"
/bin/bash -c "sudo /usr/bin/apt install -y git"
/bin/bash -c "sudo /usr/bin/apt install -y neovim"
/bin/bash -c "sudo /usr/bin/apt install -y exa"
/bin/bash -c "sudo /usr/bin/apt install -y bat"
/bin/bash -c "sudo /usr/bin/apt install -y neofetch"
/bin/bash -c "sudo /usr/bin/apt install -y tmux"
/bin/bash -c "git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm"
/bin/bash -c "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/bin/bash -c "$(/usr/bin/wget -q -O vivid.deb https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb)" && /bin/bash -c "sudo dpkg -i vivid.deb && rm -f vivid.deb"
/bin/bash -c "$(/usr/bin/wget -q -O install.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)" && /bin/bash install.sh -b && /bin/bash -c "rm -f install.sh"
/home/linuxbrew/.linuxbrew/bin/brew install fish
/home/linuxbrew/.linuxbrew/bin/fish -c "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install)"
/home/linuxbrew/.linuxbrew/bin/fish -c "$(/usr/bin/curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish) | source && fisher install jorgebucaran/fisher"
/home/linuxbrew/.linuxbrew/bin/brew install jandedobbeleer/oh-my-posh/oh-my-posh
/home/linuxbrew/.linuxbrew/bin/brew install zoxide
/home/linuxbrew/.linuxbrew/bin/brew install btop