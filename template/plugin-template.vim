"" ---- vim-plug.vim ----

if has('win32') || has('win64')
  set runtimepath^=~/.vim
endif

source ~/.vim/autoload/plug.vim
call plug#begin('~/.vim/plugged')

" Color Theme
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'KeitaNakamura/neodark.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'Rigellute/rigel'
Plug 'romainl/Apprentice'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sainnhe/edge'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'EdenEast/nightfox.nvim'
Plug 'kaicataldo/material.vim'
if has('nvim-0.5')
  Plug 'folke/tokyonight.nvim', {'branch': 'main'}
  Plug 'projekt0n/github-nvim-theme'
endif
if has('nvim-0.6')
  Plug 'rebelot/kanagawa.nvim'
endif

" UI
if has('nvim')
  Plug 'kyazdani42/nvim-web-devicons'
else
  Plug 'ryanoasis/vim-devicons'
endif
if has('nvim-0.5')
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
else
  Plug 'bagrat/vim-buffet'
  Plug 'itchyny/lightline.vim'
  Plug 'Yggdroot/indentLine'
endif
if has('nvim-0.6')
  Plug 'kyazdani42/nvim-tree.lua'
else
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/glyph-palette.vim'
  Plug 'lambdalisue/fern.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/fern-git-status.vim'
  Plug 'lambdalisue/fern-hijack.vim'
endif
Plug 'jlanzarotta/bufexplorer'

" Highlight
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'RRethy/vim-illuminate'
Plug 'RRethy/vim-hexokinase', {'do': has('make') ? 'make hexokinase' : 'git submodule init && git submodule update && cd hexokinase/ && go build'}

" Tags
Plug 'liuchengxu/vista.vim'
Plug 'ludovicchabant/vim-gutentags'

" Language Server and Search Engine
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }
Plug 'vn-ki/coc-clap'

" Other Language Support
" Flex, Bison
Plug 'justinmk/vim-syntax-extra', {'for': ['lex', 'flex', 'yacc', 'bison']}
" LLVM
Plug 'rhysd/vim-llvm'
" PowerShell
Plug 'PProvost/vim-ps1'
" Protobuf
Plug 'uarun/vim-protobuf'
" Hive
Plug 'zebradil/hive.vim'
" Haskell
Plug 'neovimhaskell/haskell-vim'
" HTML Tag
Plug 'andymass/vim-matchup'
Plug 'alvan/vim-closetag'
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Comment
Plug 'tomtom/tcomment_vim'

" Editing Support
if has('nvim-0.5')
  Plug 'phaazon/hop.nvim'
  Plug 'windwp/nvim-autopairs'
else
  Plug 'easymotion/vim-easymotion'
  Plug 'jiangmiao/auto-pairs'
endif
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/vim-easy-align'

call plug#end()