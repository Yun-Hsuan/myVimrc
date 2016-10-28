set nu
set nocompatible              
syntax on
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'gmarik/Vundle.vim'
"Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
"Plugin 'SirVer/ultisnips'
"Plugin 'edsono/vim-matchit'
"Plugin 'elzr/vim-json'
"Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-sneak'
"Plugin 'kien/ctrlp.vim'
"Plugin 'ludovicchabant/vim-lawrencium'
"Plugin 'majutsushi/tagbar'
"Plugin 'mhinz/vim-signify'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'sjl/gundo.vim'
"Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
"Plugin 'tyru/open-browser.vim'
"Plugin 'vim-scripts/a.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
Plugin 'Yggdroot/indentLine'
"Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            
filetype plugin indent on    

"Open NerdTree Automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd vimenter * NERDTree

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:sneak#streak=1

"let g:LatexBox_split_type="new"

let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:AutoPairsMapBS=0


"Setting python syntastic-checker 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_tex_checkers = ['lacheck']


set t_Co=256
colorscheme jellybeans
hi Normal ctermbg=none

set conceallevel=1
set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set list lcs=tab:\|\

let g:indentLine_enable=1 
let g:indentLine_conceallevel=2
let g:indentLine_char='|'
let g:indentLine_setConceal=0
let g:indentLine_first_char='|'
let g:indentLine_showFirstIndentLevel=1
let g:indentLine_color_term=11
"let g:indentLine_color_tty_dark = 0

