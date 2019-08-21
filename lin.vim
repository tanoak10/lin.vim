" ---- lin-vim ----

source $HOME/.vim/settings/vim-plug.vim
source $HOME/.vim/settings/color-scheme.vim
source $HOME/.vim/settings/yank.vim
source $HOME/.vim/settings/indentline.vim
source $HOME/.vim/settings/nerdtree.vim
source $HOME/.vim/settings/ale.vim
source $HOME/.vim/settings/vim-autoformat.vim
source $HOME/.vim/settings/vim-gutentags.vim
source $HOME/.vim/settings/youcompleteme.vim
source $HOME/.vim/settings/ultisnips.vim
source $HOME/.vim/settings/ctrlp.vim
source $HOME/.vim/settings/ag.vim
source $HOME/.vim/settings/vim-easymotion.vim
source $HOME/.vim/settings/vim-cpp-enhanced-highlight.vim
source $HOME/.vim/settings/emmet-vim.vim
source $HOME/.vim/settings/python-syntax.vim
source $HOME/.vim/settings/haskell-vim.vim
source $HOME/.vim/settings/vim-rust.vim
source $HOME/.vim/settings/vim-go.vim
source $HOME/.vim/settings/fzf.vim
source $HOME/.vim/settings/basic.vim
source $HOME/.vim/settings/file-setting.vim
source $HOME/.vim/settings/key-mapping.vim

" user config
if filereadable(expand('~/.vim/user.vim'))
    source $HOME/.vim/user.vim
endif
