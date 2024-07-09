## WSL Debian Programs

- [git](https://git-scm.com/) (version control)
```
sudo /bin/bash -c 'apt-get install -y git'
```

- [curl](https://curl.se/) (transform data with URLs)
```
sudo /bin/bash -c 'apt-get install -y git'
```

- [wget](https://www.gnu.org/software/wget/) (transform data with URLs)
```
sudo /bin/bash -c 'apt-get install -y wget'
```

- [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) (text editor on steroids)
```
sudo /bin/bash -c 'apt-get install -y neovim'
```

- [exa](https://the.exa.website/#installation) (modern ls replacement)
```
sudo /bin/bash -c 'apt-get install -y exa'
```

- [batcat](https://github.com/sharkdp/bat) (modern cat replacement)
```
sudo /bin/bash -c 'apt-get install -y bat'
```

- [neofetch](https://github.com/dylanaraps/neofetch) (system info listing)
```
sudo /bin/bash -c 'apt-get install -y neofetch'
```

- [tmux](https://github.com/tmux/tmux/wiki) (terminal emulator)
```
sudo /bin/bash -c 'apt-get install -y tmux'
```

- [nala](https://gitlab.com/volian/nala) (frontend for apititude)
```
sudo /bin/bash -c 'apt-get install -y nala'
```

- [ffmpeg](https://ffmpeg.org/) (video & audio converter)
```
sudo /bin/bash -c 'apt-get install -y ffmpeg'
```

- [tpm](https://github.com/tmux-plugins/tpm) (tmux plugin manager)
```
sudo /bin/bash -c "git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm"
```

- [homebrew](https://brew.sh/) (package manager)
```
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- [gcc](https://gcc.gnu.org/) (GNU compilers)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install gcc'
```

- [oh-my-posh](https://ohmyposh.dev/docs/installation/linux) (nice looking prompt)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install jandedobbeleer/oh-my-posh/oh-my-posh'
```

- [zoxide](https://github.com/ajeetdsouza/zoxide) (directory jumper)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install zoxide'
```

- [git-delta](https://github.com/dandavison/delta) (git diff prettier)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install git-delta'
```

- [btop](https://github.com/aristocratos/btop?tab=readme-ov-file#installation) (better top replacement)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install btop'
```

- [fish](https://fishshell.com/) (modern shell for linux based systems)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install fish'
```

- [node](https://nodejs.org/en) (javascript runner)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install node'
```

- [coreapck](https://nodejs.org/api/corepack.html) (package managers tool)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install corepack'
```

- [taskfile](https://taskfile.dev/installation/) (modern makefile in golang)
```
/bin/bash -c '/home/linuxbrew/.linuxbrew/bin/brew install go-task'
```

- [vidid](https://github.com/sharkdp/vivid) (ls terminal colors)
```
/bin/bash -c "$(wget -q -O vivid.deb https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb)" && sudo /bin/bash -c 'dpkg -i ./vivid.deb ; rm -f ./vivid.deb'
```

- [miniconda](https://docs.conda.io/en/latest/miniconda.html#linux-installers) (python envs manager)
```
/bin/bash -c "$(wget -q -O conda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)" && /bin/bash -c '/bin/sh ./conda.sh -bu ; rm -f ./conda.sh'
```

- [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) (fish shell boost)
```
NONINTERACTIVE=1 /bin/bash -c 'curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
/home/linuxbrew/.linuxbrew/bin/fish install --path=~/.local/share/omf --config=~/.config/omf && rm -f install'
```

## Shell Setup

```
/bin/bash -c '/usr/bin/grep -qxF "/home/linuxbrew/.linuxbrew/bin/fish" /etc/shells || echo "/home/linuxbrew/.linuxbrew/bin/fish" | sudo /usr/bin/tee -a /etc/shells'
sudo /bin/bash -c 'chsh -s /home/linuxbrew/.linuxbrew/bin/fish jikol'
```

## Init Configs

- Fish & Zoxide init
```
/home/linuxbrew/.linuxbrew/bin/fish -c '
source ~/.config/fish/config.fish
/home/linuxbrew/.linuxbrew/bin/zoxide init fish | source'
```

- Tmux config
```
/usr/bin/tmux new-session -d
/usr/bin/tmux source ~/.config/tmux/tmux.conf
/usr/bin/tmux kill-server
```

- Conda init
```
~/miniconda3/bin/conda init fish
```

- Batcat cache reload
```
/usr/bin/batcat cache --build
```
