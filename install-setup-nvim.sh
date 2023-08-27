#!/bin/bash

echo "The script will install and setup neovim. It will use the current directory for storing files. It will then clean after itself."
echo ""

# check if wget is available
if ! command -v wget &> /dev/null
then
    echo "wget missing. Installing now..."
    sudo apt install wget
else
    echo "Found wget."
fi

# check if deb package ripgrep exists (no command to check as above)
if [ $(dpkg-query -W -f='${Status}' ripgrep 2>/dev/null | grep -c "ok installed") -eq 0 ]
then
    sudo apt-get install ripgrep
else
    echo "ripgrep package found"
fi

# nerd fonts
if [ ! -d ~/.local/share/fonts ]
then
    echo "Directory '~/.local/share/fonts' does not exist. Will create."
    mkdir ~/.local/share/fonts
else
    echo "Found ~/.fonts directory."
fi

FILE=~/.local/share/fonts/HackNerdFont-Regular.ttf
if [ ! -f "$FILE" ]
then
    echo "Downloading and installing Nerd Fonts..."
    wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip"
    unzip Hack.zip -d ~/.local/share/fonts
    rm Hack.zip
    fc-cache -fv
else
    echo "Found Nerd Fonts."
fi

# check if deb package neovim exists and install otherwise
# TODO install to ~/.local/bin/ (or ~/.local/share/bin ??) 
if [ ! -f "~/.local/bin/nvim.appimage" ]
then
    wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
    chmod +x nvim.appimage
    mv nvim.appimage ~/.local/bin
else
    echo "neovim package found"
fi

# check if deb package git exists
if [ $(dpkg-query -W -f='${Status}' git 2>/dev/null | grep -c "ok installed") -eq 0 ]
then
    sudo apt-get install git
else
    echo "git package found"
fi

# also install npm if it does not exist (needed by pyright)
if [ $(dpkg-query -W -f='${Status}' npm 2>/dev/null | grep -c "ok installed") -eq 0 ]
then
    sudo apt-get install npm
else
    echo "git package found"
fi

# install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

echo 
echo Neovim with NvChad config installed successfully. 
echo
echo You need to set the Hack Nerd Font in your terminal (konsole). Search for 'fonts' and change only 'Fixed Width' fonts
echo
echo Then exit the terminal, start a new one and run with: nvim.appimage
echo
echo To install python highlighting run :TSInstall python
echo To install bash highlighting run :TSInstall bash
echo For instructions of a full python IDE: https://www.youtube.com/watch?v=4BnVeOUeZxc
echo 

# TO UPDATE NvChad run :NvChadUpdate from inside nvim
# TO UNINSTALL NvChad just rm -rf ~/.config/nvim and rm -rf ~/.local/share/nvim



