#!/bin/bash

create_symlink() {
    if [ -f $1 ] && [ ! -f $2 ]; then
        ln -s $(realpath $1) $2
    fi
}

create_symlink ./.clang-format ~/.clang-format
create_symlink ./.emacs.el ~/.emacs.el
create_symlink ./.gdbinit  ~/.gdbinit
create_symlink ./.gitconfig ~/.gitconfig
create_symlink ./.globalrc ~/.globalrc
create_symlink ./.pythonstartup ~/.pythonstartup
create_symlink ./.PythonYcmd.sh ~/.PythonYcmd.sh
chmod +x ~/.PythonYcmd.sh
create_symlink ./.screenrc ~/.screenrc
create_symlink ./.tmux.conf ~/.tmux.conf
create_symlink ./.zshrc ~/.zshrc