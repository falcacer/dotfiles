#!/bin/bash

# Function to install packages on macOS
install_on_mac() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    brew install zsh fzf tmux neovim ripgrep
    git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
}

# Function to install packages on Ubuntu
install_on_ubuntu() {
    sudo apt update
    sudo apt install -y zsh fzf tmux neovim ripgrep
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
