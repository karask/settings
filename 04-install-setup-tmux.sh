echo
echo "The script will install and setup tmux."
echo

# check if deb package tmux exists
echo Check if tmux exists...
if [ $(dpkg-query -W -f='${Status}' tmux 2>/dev/null | grep -c "ok installed") -eq 0 ]
then
    sudo apt-get install tmux
else
    echo "tmux package found"
fi


# checkout github tpm (tmux package manager) project
echo Check if tpm programs exist
if [ ! -d ~/.tmux/plugins/tpm ]
then
    echo "Directory '~/.tmux/plugins/tpm' does not exist. Will create."
    echo "Cloning .tmux/plugins/tpm from github"
    git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
else
    echo "Found ~/.tmux/plugins/tpm directory."
fi


echo Check if .tmux.conf exists...
FILE=~/.tmux.conf
if [ ! -f "$FILE" ]
then
    echo "Downloading my .tmux.conf file..."
    wget -P ~/ "https://github.com/karask/settings/raw/master/tmux/.tmux.conf"
else
    echo "Found .tmux.conf file."
fi

echo Sourcing .tmux.conf and we are ready
tmux source ~/.tmux.conf

echo
echo "Now start tmux (maybe with todo.sh script) and when inside do Alt-f + I to"
echo "install plugins and Alt-f + r to refresh tmux with new config."
echo

