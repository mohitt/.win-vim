
if(!(Test-Path -Path ~\.vimrc)) {
	cmd /c mklink ~\.vimrc ~\.win-vim\vimrc
}



if(!(Test-Path -Path ~\.vim)) {
    cd ~
    mkdir .vim
}

if(!(Test-Path -Path ~\.vim\autoload)) {
    cd ~\.vim
    mkdir autoload
}

cd ~\.win-vim

if(!(Test-Path -Path bkp)) {
	mkdir bkp
}

if(!(Test-Path -Path swp)) {
	mkdir swp
}


iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
ni $HOME/vimfiles/autoload/plug.vim -Force
vim +PlugUpdate +qa
