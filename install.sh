#!/bin/sh

hasVimrc() {
    if [ -f "$HOME/.vimrc" ]; then
        echo 1
    else
        echo 0
    fi
}

hasSymlink() {
    if [ -L "$HOME/.vimrc" ]; then
        echo 1
    else
        echo 0
    fi
}

howToProceed() {
    if [ $has_vimrc_res ]; then
        case $has_vimrc_res in
            "Y" | "y" ) echo 1; ;;
            "N" | "n" ) echo 0; ;;
            * ) howToProceed ;;
        esac
    fi

    if [ $has_symlink_res ]; then
        case $has_symlink_res in
            "Y" | "y" ) echo 1; ;;
            "N" | "n" ) echo 0; ;;
            * ) howToProceed ;;
        esac
    fi
}

backupVimrc() {
    mkdir $HOME/.vimconf-backup
    mv $HOME/.vimrc $HOME/.vimconf-backup/
    echo 'Backup created at $HOME/.vimconf-backup/.vimrc'
}

removeSymLink() {
    unlink $HOME/.vimrc
    echo 'Removed link for .vimrc'
}

doInstall() {
    # clone the repo
    git clone --depth=1 https://github.com/ferdipret/vimconfig "$HOME/.vimconf"

    # if the config path doesn't exist, we'll create it first
    if [ ! -d "$HOME/.config/vim" ]; then
      echo "Making vim dir"
      mkdir -p $HOME/.config/vim
    fi

    # Make variables of the files we intend to copy
    # and the location we plan to copy it to
    FILES=$HOME/.vimconf/vim-config/*
    LOCATION=$HOME/.config/vim/

    # Now we can symlink our vimrc
    ln -s $HOME/.vimconf/.vimrc $HOME/.vimrc

    # And then link the rest of the config files
    for file in $FILES; do
        ln -s $file $LOCATION
    done

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    vim +PlugInstall +qall

    # Hack to avoid vim complaining about the colorscheme on install
    # Need to look at a better solution for handling this
    echo 'syntax on' >> ~/.config/vim/colors.vim
    echo 'colorscheme onedark' >> ~/.config/vim/colors.vim
    echo 'highlight normal ctermbg=none' >> ~/.config/vim/colors.vim
}

# Check that no vimrc already exists
if [ ! -d "$HOME/.vimconf" ]; then
    # Keep this here to let the user know the script has fired
    echo "Installing vim config..."

    # If a vimrc a exists (or a symlink to a vimrc) handle it apropriately
    if [ $(hasVimrc) == 1 ] || [ $(hasSymlink) == 1 ]; then
        if [ $(hasSymlink) -eq 1 ]; then
            read -p 'Symlink for .vimrc detected, unlink it?(y/n) ' has_symlink_res
            symlink_res=$(howToProceed)

            if [[ $symlink_res && $symlink_res == 1 ]]; then
                removeSymLink
                doInstall
            fi
        else
            read -p '.vimrc detected in $HOME, back it up in ~/.vimconf-backup?(y/n) ' has_vimrc_res
            vimrc_res=$(howToProceed)

            if [[ $vimrc_res && $vimrc_res == 1 ]]; then
                backupVimrc
                doInstall
            fi
        fi
    else
        doInstall
    fi

    # Check to see whether the user didn't want us handling their vimrc or symlink to one
    # Give them a reassuring little message that we didn't break stuff
    if [[ $vimrc_res == 0 || $symlink_res == 0 ]]; then
        echo "Installation cancelled"
    fi

else
    # This will execute if they already have .vimconf
    echo "Your vim-config is already installed."
fi

