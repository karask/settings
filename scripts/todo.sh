#!/bin/bash

# Prerequisites
# Need to ensure that the folders below exist / repos are in the appropriate folders
# Need to install: htop, bitcoind

SESSION="TODO"

tmux has-session -t "$SESSION" &> /dev/null

if [ $? != 0 ]
then

# 2 terminals
#tmux new-session -d -s $SESSION -n "Blog"
#tmux send-keys "cd /home/kostas/websites/karask.github.io" C-m
#tmux split-window -h
#tmux send-keys "cd ~" C-m
#tmux select-pane -t 0

# 2 terminals
tmux new-session -d -s $SESSION -n "Book"
tmux send-keys "cd /home/kostas/repos/bitcoin-textbook" C-m
tmux split-window -h
tmux send-keys "cd /home/kostas/repos/bitcoin-textbook" C-m
tmux select-pane -t 0

# bitcoin-utils dev
tmux new-window -t $SESSION:1 -n "BUtils"
tmux send-keys 'cd ~/repos/python-bitcoin-utils ; source venv/bin/activate' C-m 'git branch' C-m
tmux split-window -h
tmux send-keys 'cd ~/repos/python-bitcoin-utils ; source venv/bin/activate' C-m
tmux select-pane -t 0  

# blockchain-certificates dev
#tmux new-window -t "$SESSION:2" -n "Certs" 
#tmux send-keys 'cd ~/repos/blockchain-certificates ; source venv/bin/activate' C-m 'git branch' C-m
#tmux split-window -h
#tmux send-keys 'cd ~/repos/blockchain-certificates ; source venv/bin/activate' C-m
#tmux select-pane -t 0

# fantasy-d100 dev
tmux new-window -t "$SESSION:2" -n "D100"
tmux send-keys 'cd ~/repos/fantasy-d100' C-m #'vim tex/ch32-creatures.tex' C-m
#tmux split-window -h
#tmux send-keys 'cd ~/repos/custom_d100/RPG-LaTeX-Template' C-m
#tmux select-pane -t 0

# bitcoind with live logging only with default bitcoin.conf
#tmux new-window -t "$SESSION:4" -n "Bitcoin"
#tmux send-keys 'pgrep bitcoind; if [ $? != 0 ]; then bitcoind; sleep 10; fi' C-m 
#tmux send-keys 'echo "Blockheight: $(bitcoin-cli getblockcount)"' C-m
#tmux split-window -h
#tmux send-keys 'tail -f ~/.bitcoin/testnet3/debug.log' C-m
#tmux select-pane -t 0


# servers (bitcoind only with default bitcoin.conf)
tmux new-window -t "$SESSION:9" -n "System"
tmux send-keys 'htop' C-m 
tmux split-window -h
#tmux send-keys 'watch --color -t -n7200 crypto-prices' C-m 
#tmux split-window -v #-p 90
#tmux send-keys 'watch --color -t -n7200 1btc-is' C-m 
#tmux select-pane -t 1
#tmux split-window -h 
#tmux resize-pane -t 1 -x 50
#tmux resize-pane -t 2 -x 50
#tmux select-pane -t 3


# goto to window
tmux select-window -t "BUtils" 

fi

tmux attach-session -t $SESSION

