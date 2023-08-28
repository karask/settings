- Open a terminal (gnome-terminal) and change shortcut for zooming in from Ctrl-+ to Ctrl-=

Create dir:
~/repos		(all repos go here, incl. 'settings', 'programs', 'bitcoin-textbook' !!)
~/.local/bin	(copy all scripts here, like todo.sh for tmux, etc. - include to $PATH)
                (also include AppImages, flatpacks here)
~/.local/lib	(create and just install all non-packaged software here, like bitcoind)


Add to .bashrc
***
alias bc='bc -l'
alias l='ls -ltr'
alias bit='bitcoin-cli'
alias gitcg="git log --all --decorate --oneline --graph"
#alias v='nvim.appimage'

#export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
***
