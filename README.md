wtang-su.vim
============

Backup of my vimrc file and vim plugins


Commands for install [ubuntu14.04 or higher]
``` bash
sudo apt-get build-dep vim-gtk
sudo apt-get install exuberant-ctags
sudo apt-get install python3-pip
sudo pip3 install flake8

wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
sudo tar jxf vim-7.4.tar.bz2 -C /opt/
cd /opt/vim74/

sudo ./configure --with-features=huge --with-x --enable-gui=auto --enable-python3interp=yes
sudo make
sudo make install
```
