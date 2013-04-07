
To setup vim from scratch install pathogen plugin.

Then clone this git and

$ cp vimrc/.vimrc ~
$ cp vimrc/update_plugins.rb ~/.vim/.
$ cd .vim
$ mkdir bundle
$ ruby update_plugins.rb
