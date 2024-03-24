## WSL Debian Programs

- [git](https://git-scm.com/) (version control)
```
/bin/bash -c "sudo /usr/bin/apt install -y git"
```

- [curl](https://curl.se/) (transform data with URLs)
```
/bin/bash -c "sudo /usr/bin/apt install -y curl"
```

- [wget](https://www.gnu.org/software/wget/) (transform data with URLs)
```
/bin/bash -c "sudo /usr/bin/apt install -y wget"
```

- [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) (text editor on steroids)
```
/bin/bash -c "sudo /usr/bin/apt install -y neovim"
```

- [exa](https://the.exa.website/#installation) (modern ls replacement)
```
/bin/bash -c "sudo /usr/bin/apt install -y exa"
```

- [batcat](https://github.com/sharkdp/bat) (modern cat replacement)
```
/bin/bash -c "sudo /usr/bin/apt install -y bat"
```

- [neofetch](https://github.com/dylanaraps/neofetch) (system info listing)
```
/bin/bash -c "sudo /usr/bin/apt install -y neofetch"
```

- [tmux](https://github.com/tmux/tmux/wiki) (terminal emulator)
```
/bin/bash -c "sudo /usr/bin/apt install -y tmux"
```

- [nala](https://gitlab.com/volian/nala) (frontend for apititude)
```
/bin/bash -c "sudo /usr/bin/apt install -y nala"
```

- [tpm](https://github.com/tmux-plugins/tpm) (tmux plugin manager)
```
/bin/bash -c "git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm"
```

- [homebrew](https://brew.sh/) (package manager)
```
NONINTERACTIVE=1 /bin/bash -c "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- [oh-my-posh](https://ohmyposh.dev/docs/installation/linux) (nice looking prompt)
```
/home/linuxbrew/.linuxbrew/bin/brew install jandedobbeleer/oh-my-posh/oh-my-posh
```

- [zoxide](https://github.com/ajeetdsouza/zoxide) (directory jumper)
```
/home/linuxbrew/.linuxbrew/bin/brew install zoxide
```

- [btop](https://github.com/aristocratos/btop?tab=readme-ov-file#installation) (better top replacement)
```
/home/linuxbrew/.linuxbrew/bin/brew install btop
```

- [fish](https://fishshell.com/) (modern shell for linux based systems)
```
/home/linuxbrew/.linuxbrew/bin/brew install fish
```

- [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) (fish shell boost)
```
/home/linuxbrew/.linuxbrew/bin/fish -c "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install)"
```

- [vidid](https://github.com/sharkdp/vivid) (ls terminal colors)
```
/bin/bash -c "$(/usr/bin/wget -q -O vivid.deb https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb)" && /bin/bash -c "sudo dpkg -i ./vivid.deb ; rm -f ./vivid.deb"
```

- [miniconda](https://docs.conda.io/en/latest/miniconda.html#linux-installers) (python envs manager)
```
/bin/bash -c "$(/usr/bin/wget -q -O conda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)" && /bin/bash -c "/bin/sh ./conda.sh -bu ; rm -f ./conda.sh"
```

## Shell Setup

```
/bin/bash -c "/usr/bin/grep -qxF "/home/linuxbrew/.linuxbrew/bin/fish" /etc/shells || echo "/home/linuxbrew/.linuxbrew/bin/fish" | sudo /usr/bin/tee -a /etc/shells"
/bin/bash -c "sudo chsh -s /home/linuxbrew/.linuxbrew/bin/fish jikol"
```

## Init Configs

- Fish config
```
source ~/.config/fish/config.fish
```

- Tmux config
```
tmux new-session -d
tmux source ~/.config/tmux/tmux.conf
tmux kill-server
```

- Conda in fish
```
conda init fish
```

- Batcat cache reload
```
batcat cache --build
```
