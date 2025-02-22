#!/bin/bash

# Function to install packages on macOS
install_on_mac() {
    # Brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    brew install git curl zsh tmux ripgrep fzf neovim
    # oh my zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # tmuxifier
    git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
}

# Function to install packages on Ubuntu
install_on_ubuntu() {
    sudo apt update
    sudo apt install -y git curl zsh tmux
    # oh my zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # ripgrep
    curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
    sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
    # neovim
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
    # fzf 
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    # tmuxifier
    git clone https://github.com/tmux-plugins/tmuxifier.git ~/.tmuxifier
}

# Detect the operating system and install packages accordingly
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS. Installing packages using brew..."
    install_on_mac
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Ubuntu. Installing packages using apt..."
    install_on_ubuntu
else
    echo "Unsupported OS. Please install the packages manually."
    exit 1
fi

echo "Installation complete!"
