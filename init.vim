let g:python3_host_prog = expand('~/.pyenv/shims/python')

" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>" InsertMode抜けて保存
inoremap <silent> っｊ <ESC>
inoremap <silent> っj  <ESC>
inoremap <silent> ｊｊ <ESC>

" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

" encode setting
set encoding=utf-8

" edita setting
set title
set number                                                      " 行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完
set virtualedit=onemore                                         " 行末の1文字先までカーソルを移動可

" search setting
set wrapscan                                                    " 検索時に最後まで行ったら最初に戻る
set ignorecase                                                  " 大文字小文字を区別しない
set incsearch                                                   " 順次対象文字列にヒットさせる

" cursorl setting
set ruler                                                       " カーソルの位置表示
set cursorline                                                  " カーソルハイライト

" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=2                                                   " tabは半角2文字
set shiftwidth=2                                                " tabの幅

" 不可視文字を表示
set clipboard+=unnamed
set clipboard=unnamed

" シンタックスハイライト
syntax enable

" 括弧補完
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
