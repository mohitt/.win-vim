cmd /c mklink C:\users\mohit.thakral\.vimrc C:\users\mohit.thakral\.win-vim\vimrc
cd ~\.win-vim
mkdir bkp
mkdir swp
mkdir autoload
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
vim +PlugUpdate +qa
