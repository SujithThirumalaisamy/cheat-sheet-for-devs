#!/bin/bash

# Download and install the latest version of Neovim
curl -LO https:/github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo mkdir -p /opt/nvim
sudo tar -xzf nvim-linux-x86_64.tar.gz --strip-components=1 -C /opt/nvim
rm nvim-linux-x86_64.tar.gz

# Download other dependencies
sudo apt update
sudo apt install -y git curl build-essential ripgrep fd-find fzf

# Delete the old Neovim config
rm -rf ~/.config/nvim

# Clone the starter
git clone https://github.com/LazyVim/starter ~/.config/nvim
# Remove the .git folder, so you can add it to your own repo later
rm -rf ~/.config/nvim/.git
