"" lin-vim
source $HOME/.vim/settings/vim-plug.vim

source $HOME/.vim/settings/ag.vim
source $HOME/.vim/settings/ale.vim
source $HOME/.vim/settings/color_scheme.vim
source $HOME/.vim/settings/ctags.vim
source $HOME/.vim/settings/emmet.vim
source $HOME/.vim/settings/haskell-vim.vim
source $HOME/.vim/settings/indentline.vim
source $HOME/.vim/settings/python-syntax.vim
source $HOME/.vim/settings/ultisnips.vim
source $HOME/.vim/settings/vim-easymotion.vim
source $HOME/.vim/settings/vim-go.vim
source $HOME/.vim/settings/nerdtree.vim
source $HOME/.vim/settings/supertab.vim
source $HOME/.vim/settings/vim-gutentags.vim
source $HOME/.vim/settings/vim-autoformat.vim
source $HOME/.vim/settings/vim-ctrlp.vim
source $HOME/.vim/settings/vim-cpp-highlight.vim
source $HOME/.vim/settings/vim-rust.vim
source $HOME/.vim/settings/vim-signify.vim
source $HOME/.vim/settings/yank.vim
source $HOME/.vim/settings/youcompleteme.vim

source $HOME/.vim/settings/basic.vim

if filereadable(expand('~/.vim/user.vimrc'))
    source $HOME/.vim/user.vimrc
endif
