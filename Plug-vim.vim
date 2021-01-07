"--------------------------------------------------------------------------
"===========	PLUGIN FOR VIM && NOEVIM	==========================

" Lineas verticales o de guia
" https://github.com/Yggdroot/indentLine


" Busacar en google -- plug vim --
" Instalar complemento 
" https://github.com/junegunn/vim-plug
" Installation
" Download plug.vim and put it in the "autoload" directory.

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
 
" Temas
Plug 'morhetz/gruvbox'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-python/python-syntax'
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'
" Autocompletado
" Use release branch (recommend)
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}



" Initialize plugin system
call plug#end()

