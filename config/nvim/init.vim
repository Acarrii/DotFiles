"==========================================
"  _   _ ______ ______      _______ __  __ 
" | \ | |  ____/ __ \ \    / /_   _|  \/  |
" |  \| | |__ | |  | \ \  / /  | | | \  / |
" | . ` |  __|| |  | |\ \/ /   | | | |\/| |
" | |\  | |___| |__| | \  /   _| |_| |  | |
" |_| \_|______\____/   \/   |_____|_|  |_|
"                                          
"==========================================


syntax on
set nu

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'

call plug#end()

let g:deoplete#enable_at_startup = 1

let g:airline_theme='gruvbox'

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:neomake_python_enabled_makers = ['pylint']

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

" set the colorscheme
colorscheme gruvbox
