## Installation:

Clone from github:

`git clone git://github.com/DouglasCook/dotvim ~/.vim`

Create symlinks:

- `ln -s ~/.vim/vimrc ~/.vimrc`
- `ln -s ~/.vim/gvimrc ~/.gvimrc`

Switch to the `~/.vim` directory, and fetch submodules:

- `cd ~/.vim`
- `git submodule init`
- `git submodule update`

YouCompleteMe needs to be compiled before it can be used, this requires the submodules to be pulled first:

- `git submodule update --init --recursive`
- `./install.sh --clang-completer --system-clang`

More comprehensive instructions can be found at http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/

## Updating submodules

`git submodule foreach git pull origin master`
