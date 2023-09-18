#!/bin/bash

# terminal configuration
cat << 'EOF' >> ~/.bashrc

# set note taking shortcuts
n() { $EDITOR ~/MEGAsync/mine/.notes/"$*"; }
nls() { ls -tr  ~/MEGAsync/mine/.notes/ | grep "$*"; }
nr() { rm ~/MEGAsync/mine/.notes/"$*"; }
ns() { grep -C 5 "$*" ~/MEGAsync/mine/.notes/*; }
nv() { cat ~/MEGAsync/mine/.notes/"$*"; }

# my aliases
alias bc='bc -l'
alias l='ls -ltr'
alias bit='bitcoin-cli'
alias gitcg="git log --all --decorate --oneline --graph"
alias e='nvim.appimage'
alias v='okular'

# my init paths
export PATH=$HOME/.local/bin:$PATH
export PASSWORD_STORE_DIR=~/MEGAsync/mine/mine/.password-store/
export EDITOR=nvim.appimage

EOF
