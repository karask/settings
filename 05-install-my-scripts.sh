# Copy my scripts from repo 'settings'/scripts that I use: wik and todo.sh

echo Check if wik script exists...
WIK=~/.local/bin/wik
if [ ! -f "$WIK" ]
then
    echo "Downloading my wik script..."
    wget -P ~/.local/bin/ "https://github.com/karask/settings/raw/master/scripts/wik"
else
    echo "Found wik script."
fi

echo Check if wik script exists...
TODO=~/.local/bin/todo.sh
if [ ! -f "$TODO" ]
then
    echo "Downloading my todo.sh script..."
    wget -P ~/.local/bin/ "https://github.com/karask/settings/raw/master/scripts/todo.sh"
else
    echo "Found todo.sh script."
fi

# ALSO INSTALL the restart-nvidia script for tuxedo laptop !? - programs in bitbucket ?
