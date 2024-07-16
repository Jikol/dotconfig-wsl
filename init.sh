#!/bin/bash

CYAN='\033[0;36m'
WHITE='\033[0;37m'
RESET='\033[0m'

# prepare
sudo /bin/bash -c '
sudo rm -rf \
    ~/.cache ~/.local/share/fish ~/.local/share/nvim \
    ~/.local/share/omf ~/.local/share/zoxide
'

# aptitude installs
sudo /bin/bash -c '
apt-get update && apt-get upgrade -y
apt-get install -y \
    curl wget git neovim exa bat neofetch \
    tmux nala ffmpeg build-essential
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
'

# homebrew installs
NONINTERACTIVE=1 /bin/bash -c "$(
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
)"
/bin/bash -c '
/home/linuxbrew/.linuxbrew/bin/brew install \
    gcc jandedobbeleer/oh-my-posh/oh-my-posh zoxide \
    git-delta btop fish node corepack go-task \
    pipx oven-sh/bun/bun
'

# pipx installs
/bin/bash -c '
/home/linuxbrew/.linuxbrew/bin/pipx install poetry
/home/linuxbrew/.linuxbrew/bin/pipx install poethepoet
'

# shellscript installs
/bin/bash -c "$(
wget -q -O vivid.deb https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb
)" && sudo /bin/bash -c '
dpkg -i ./vivid.deb ; rm -f ./vivid.deb
'
/bin/bash -c "$(
wget -q -O conda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
)" && /bin/bash -c '
/bin/sh ./conda.sh -bu ; rm -f ./conda.sh
'

# fishshell installs
NONINTERACTIVE=1 /bin/bash -c '
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
/home/linuxbrew/.linuxbrew/bin/fish install --path=~/.local/share/omf --config=~/.config/omf
rm -f install
'

# setup shells
/bin/bash -c '
grep -qxF "/home/linuxbrew/.linuxbrew/bin/fish" /etc/shells || echo "/home/linuxbrew/.linuxbrew/bin/fish" | sudo /usr/bin/tee -a /etc/shells
'
sudo /bin/bash -c '
chsh -s /home/linuxbrew/.linuxbrew/bin/fish jikol
'

# config reloads & setups
/home/linuxbrew/.linuxbrew/bin/fish -c '
source ~/.config/fish/config.fish
/home/linuxbrew/.linuxbrew/bin/zoxide init fish | source
'
/bin/bash -c '
~/miniconda3/bin/conda init fish
/usr/bin/batcat cache --build
/usr/bin/tmux new-session -d
/usr/bin/tmux source ~/.config/tmux/tmux.conf
/usr/bin/tmux kill-server
'

# message
echo -e "${CYAN}Installation completed${RESET}"
echo -e "${WHITE}Go to tmux with 'tmux' command and press Ctrl + Space + I${RESET}"
