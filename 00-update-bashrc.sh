#!/bin/bash

# terminal configuration
cat << 'EOF' >> ~/.bashrc

# set note taking shortcuts
export NOTESDIR=~/MEGAsync/mine/.notes/
n() { $EDITOR $NOTESDIR/"$*"; }
nls() { ls -tr  $NOTESDIR/ | grep "$*"; }
nr() { rm $NOTESDIR/"$*"; }
ns() { grep -C 5 "$*" $NOTESDIR/*; }
nv() { cat $NOTESDIR/"$*"; }
# set n autocomplete
_notes()
{
  local notes_dir=$NOTESDIR
  local cmd=$1 cur=$2 pre=$3
  local arr i file

  arr=( $( cd "$NOTESDIR" && compgen -f -- "$cur") )
  COMPREPLY=()
  for ((i = 0; i < ${#arr[@]}; ++i)); do 
    file=${arr[i]}
    if [[ -d $NOTESDIR/$file ]]; then
      file=$file/
    fi
    COMPREPLY[i]=$file
  done
}
complete -F _notes -o nospace n
complete -F _notes -o nospace nr
complete -F _notes -o nospace nv

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
