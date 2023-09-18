cat << 'EOF' >> ~/.bashrc

# my aliases
alias bc='bc -l'
alias l='ls -ltr'
alias bit='bitcoin-cli'
alias gitcg="git log --all --decorate --oneline --graph"
alias v='nvim.appimage'

# my init paths
export PATH=$HOME/.local/bin:$PATH
export PASSWORD_STORE_DIR=~/MEGAsync/mine/mine/.password-store/
export EDITOR=v

EOF
