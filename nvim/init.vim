" ----------------------------------------------------
" key bind
" ----------------------------------------------------

" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存

" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>:" InsertMode抜けて保存
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

:
" エディタ
set number " 行番号表示

" カーソル
set ruler
set cursorline

" タブ
set expandtab
set tabstop=2
set shiftwidth=2


" ====================================================
" plug in
" ====================================================
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'vim-denops/denops.vim'
  Plug 'kat0h/bufpreview.vim', { 'do': 'deno task prepare' }
  Plug 'mattn/vim-maketable'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'ryanoasis/nerd-fonts'
call plug#end()
