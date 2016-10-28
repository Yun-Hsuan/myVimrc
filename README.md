=======================================
My vimrc  -- Yun-Hsuan Chou
=======================================

This vimrc is designed for editting c/c++, python and Latex.

-----------------------------------------


#Syntastic checker list 

syntastic_python_checkers = ['pyflakes']

syntastic_tex_checkers = ['lacheck']

#Color Scheme    

colorscheme jellybeans

%%for transparent terminal

hi Normal ctermbg=none 

#NerdTree    

%% open nerdtree automatically when excuting vim with no files

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

-----------------------------------------
