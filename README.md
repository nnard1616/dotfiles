# dotfiles
Collection of hidden configuration files for, primarily, linux systems.

## Notes

### .vimrc
* Most of .vimrc comes from various versions posted [here](https://github.com/amix/vimrc)
* Vundle is required in the ~/.vim/bundle/ directory
* I made manual changes to the LineNr highlight colors in the "atomified.vim" colorscheme
* The youcompleteme has extra installation steps (compiling YCM), see installation notes [here](https://vimawesome.com/plugin/youcompleteme#ubuntu-linux-x64)
* YouCompleteMe has a lot of tweaking stuff, see this [blog](http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/) post on how to setup the .ycm_extra_conf.py for autocompleting source code for C family.  YCM needs these files to provide compile flags in order to autocomplete C-like code, as YCM compiles your active project using the libclang library (llvm).
* 'stty -ixon' is needed in .bashrc for the ctrl-s save mapping to work, on kubuntu 18.04
