#!/bin/bash

echo 
echo The script will install all your repos in ~/repos directory.
echo 
echo TODO do authentication inside the script!?
echo 

echo Check if repos dir exists...
if [ ! -d ~/repos ]
then
    echo "Directory '~/repos' does not exist. Will create."
    mkdir ~/repos
else
    echo "Found ~/repos directory."
fi

# check if deb package git exists
echo Check if git exists...
if [ $(dpkg-query -W -f='${Status}' git 2>/dev/null | grep -c "ok installed") -eq 0 ]
then
    sudo apt-get install git
else
    echo "git package found"
fi


# checkout github settings project
echo Check if repo settings exist
if [ ! -d ~/repos/settings ]
then
    echo "Directory '~/repos/settings' does not exist. Will create."
    echo "Cloning settings from github"
    git clone https://github.com/karask/settings.git ~/repos/
else
    echo "Found ~/repos/settings directory."
fi


# checkout github python-bitcoin-utils project
echo Check if repo python-bitcoin-utils exist
if [ ! -d ~/repos/python-bitcoin-utils ]
then
    echo "Directory '~/repos/python-bitcoin-utils' does not exist. Will create."
    echo "Cloning python-bitcoin-utils from github"
    git clone https://github.com/karask/python-bitcoin-utils.git ~/repos/
else
    echo "Found ~/repos/python-bitcoin-utils directory."
fi


# checkout github bitcoin-textbook project
echo Check if repo bitcoin-textbook exist
if [ ! -d ~/repos/bitcoin-textbook ]
then
    echo "Directory '~/repos/bitcoin-textbook' does not exist. Will create."
    echo "Cloning bitcoin-textbook from github"
    git clone https://github.com/karask/bitcoin-textbook.git ~/repos/
else
    echo "Found ~/repos/bitcoin-textbook directory."
fi


# checkout github karask.github.io project
echo Check if repo karask.github.io exist
if [ ! -d ~/repos/karask.github.io ]
then
    echo "Directory '~/repos/karask.github.io' does not exist. Will create."
    echo "Cloning karask.github.io from github"
    git clone https://github.com/karask/karask.github.io.git ~/repos/
else
    echo "Found ~/repos/karask.github.io directory."
fi


# checkout github satoshi-paper project
echo Check if repo satoshi-paper exist
if [ ! -d ~/repos/satoshi-paper ]
then
    echo "Directory '~/repos/satoshi-paper' does not exist. Will create."
    echo "Cloning satoshi-paper from github"
    git clone https://github.com/karask/satoshi-paper.git ~/repos/
else
    echo "Found ~/repos/satoshi-paper directory."
fi


# checkout github bitcoin-notes project
echo Check if repo bitcoin-notes exist
if [ ! -d ~/repos/bitcoin-notes ]
then
    echo "Directory '~/repos/bitcoin-notes' does not exist. Will create."
    echo "Cloning bitcoin-notes from github"
    git clone https://github.com/karask/bitcoin-notes.git ~/repos/
else
    echo "Found ~/repos/bitcoin-notes directory."
fi


# checkout github bitcoin-notes project
echo Check if repo bitcoin-notes exist
if [ ! -d ~/repos/bitcoin-notes ]
then
    echo "Directory '~/repos/bitcoin-notes' does not exist. Will create."
    echo "Cloning bitcoin-notes from github"
    git clone https://github.com/karask/bitcoin-notes.git ~/repos/
else
    echo "Found ~/repos/bitcoin-notes directory."
fi


# checkout github bitcoin-notes project
echo Check if repo fantasy-d100 exist
if [ ! -d ~/repos/fantasy-d100 ]
then
    echo "Directory '~/repos/fantasy-d100' does not exist. Will create."
    echo "Cloning fantasy-d100 from github"
    git clone https://github.com/karask/fantasy-d100.git ~/repos/
else
    echo "Found ~/repos/fantasy-d100 directory."
fi


# checkout bitbucket programs project
echo Check if repo programs exist
if [ ! -d ~/repos/programs ]
then
    echo "Directory '~/repos/programs' does not exist. Will create."
    echo "Cloning programs from bitbucket"
    git clone https://karask@bitbucket.org/programs.git ~/repos/
else
    echo "Found ~/repos/programs directory."
fi

