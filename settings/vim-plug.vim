"" ---- vim-plug.vim ----

if has('win32') || has('win64')
    " Make windows use ~/.vim too, I don't want to use _vimfiles
    set runtimepath^=~/.vim
endif

source ~/.vim/autoload/plug.vim
call plug#begin('~/.vim/plugged')

" UI Manager
Plug 'godlygeek/tabular'
Plug 'Yggdroot/indentLine'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim', { 'on': [] } | call plug#load('vimfiler.vim')

" Color Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }

" Format Synatax
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'

" Complete Engine
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Keyboard Operation
Plug 'tpope/vim-repeat'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'vim-scripts/Mark--Karkat'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

" Coding Util
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Json
Plug 'elzr/vim-json'
" C++ Python Java
Plug 'vim-scripts/a.vim', { 'for': ['c', 'cc', 'CC', 'cxx', 'cpp', 'h', 'hpp', 'HH', 'hxx', 'hh'] }
Plug 'hdima/python-syntax', { 'for': ['py'] }
" html/css/js
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'js', 'xml', 'xhtml', 'json', 'less'] }
Plug 'ap/vim-css-color', { 'for': ['html', 'css', 'js', 'xml', 'xhtml', 'json', 'less'] }
Plug 'groenewege/vim-less', { 'for': ['html', 'css', 'js', 'xml', 'xhtml', 'json', 'less'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'js', 'xml', 'xhtml', 'json'] }
Plug 'pangloss/vim-javascript', { 'for': ['html', 'css', 'js', 'xml', 'xhtml', 'json'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['html', 'css', 'js', 'xml', 'xhtml', 'json'] }
Plug 'mxw/vim-jsx', { 'for': ['js', 'html', 'xml', 'css', 'xhtml', 'json'] }
Plug 'maksimr/vim-jsbeautify', { 'for': ['js', 'html', 'xml', 'css', 'xhtml', 'json'] }
" Golang
Plug 'fatih/vim-go', { 'for': ['go'] }
" Thrift
Plug 'solarnz/thrift.vim', { 'for': ['thrift'] }
" haskell
Plug 'neovimhaskell/haskell-vim', { 'for': ['hs']}
" rust
Plug 'rust-lang/rust.vim', { 'for': ['rs'] }
Plug 'phildawes/racer', { 'for': ['rs'] }
" ruby
Plug 'vim-ruby/vim-ruby', { 'for': ['rb', 'ruby'] }
Plug 'tpope/vim-rails', { 'for': ['rb', 'ruby'] }
" scala
Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }


call plug#end()
