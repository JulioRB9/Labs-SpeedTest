set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

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
" -------------------------------------------------------------------------
" Autocompletado
" Use release branch (recommend)
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:airline_theme = "github"
let g:lightline = { 'colorscheme': 'github' }
" -------------------------------------------------------------------------
" ================== colorscheme gruvbox =================================
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let mapleader=" "
let g:python_highlight_all = 1

" ------------------------------------------------------------------------
"let g:coc_disable_startup_warning = 1
" ================ SETTING  KITE   =====================
" https://github.com/kiteco/vim-plugin

" Python, JavaScript, Go
let g:kite_supported_languages = ['python', 'javascript']

" -----------------------------------------------------------------------
"  =============== SETTING COC =========================
"
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1 
autocmd FileType scss setl iskeyword+=@-@


"------------------------------------------------------------------------
" ========= Navegation file ============================================
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

"-----------------------------------------------------------------------
" Atajos de guardado y salida
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" ---------------------------------------------------------------------
"  ==================== ATAJO DE TECLADO COC   ========================
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"  ---------------------------------------------------------------------
"  ==================== CONDICION DE LOS AUTOCOMPLETADO ================
" Us <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif








