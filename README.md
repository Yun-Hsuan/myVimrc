##My vimrc  -- Yun-Hsuan Chou

This vimrc is designed for editting c/c++, python and Latex.

-----------------------------------------
##Usage

1. Set up [Vundle]:

   `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. clone [myVimrc]

   `$ git clone https://github.com/Yun-Hsuan/myVimrc`

3. Copy .vimrc into home director

   `$ cp <path to>/myVimrc/.vimrc ~/.vimrc`

Please backup the original .vimrc berfore you over-write it.

4. Install the plugins

   `$ vim +PluginInstall +qall `

5. Copy .ycm_extra_conf.py into home director

   `$ cp <path to>/myVimrc/.ycm_extra_conf.py ~/.ycm_extra_conf.py`

6. Make sure you have the checkers which are supported by [Syntastic]:

Python: pyflakes, pylint, python, etc...

Latex : lacheck, etc...

You can show the available checkers for [Syntastic] with the comment:

   `:SyntasticInfo`


-----------------------------------------

##Syntastic checker list 

syntastic_python_checkers = ['pyflakes']

syntastic_tex_checkers = ['lacheck']

##Color Scheme    

colorscheme jellybeans

%%for transparent terminal

hi Normal ctermbg=none 

##NerdTree    

%% open nerdtree automatically when excuting vim with no files

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

-----------------------------------------

[Vundle]:http://github.com/VundleVim/Vundle.vim
[myVimrc]:https://github.com/Yun-Hsuan/myVimrc
[Syntastic]:https://github.com/scrooloose/syntastic
[Git]:http://git-scm.com
