set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set expandtab
set softtabstop=2
set autoindent
set smartindent


if has('vim_starting')
    " 初回起動時のみruntimepathにNeoBundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    " NeoBundleが未インストールであればgit cloneする・・・・・・①
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
"----------------------------------------------------------
" ここに追加したいVimプラグインを記述する
NeoBundle 'tomasr/molokai'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
" インデントの可視化
NeoBundle 'Yggdroot/indentLine'
"----------------------------------------------------------
call neobundle#end()

" ファイルタイプ別のVimプラグイン/インデントを有効にする
filetype plugin indent on

"----------------------------------------------------------
" molokaiの設定
"----------------------------------------------------------
if neobundle#is_installed('molokai')
    colorscheme molokai
endif

set t_Co=256
syntax enable

"----------------------------------------------------------
" ステータスラインの設定
"----------------------------------------------------------
set laststatus=2 " ステータスラインを常に表示
set showmode
set showcmd
set ruler " ステータスラインの右側にカーソルの現在位置を表示する


" 未インストールのVimプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck
CBN0052noMacBook-Pro:ktownPlatform cbn0052$ vim
CBN0052noMacBook-Pro:ktownPlatform cbn0052$ cat ~/.vimrc
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set expandtab
set softtabstop=2
set autoindent
set smartindent


if has('vim_starting')
    " 初回起動時のみruntimepathにNeoBundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    " NeoBundleが未インストールであればgit cloneする・・・・・・①
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
"----------------------------------------------------------
" ここに追加したいVimプラグインを記述する
NeoBundle 'tomasr/molokai'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
" インデントの可視化
NeoBundle 'Yggdroot/indentLine'
"----------------------------------------------------------
call neobundle#end()

" ファイルタイプ別のVimプラグイン/インデントを有効にする
filetype plugin indent on

"----------------------------------------------------------
" molokaiの設定
"----------------------------------------------------------
if neobundle#is_installed('molokai')
    colorscheme molokai
endif

set t_Co=256
syntax enable

"----------------------------------------------------------
" ステータスラインの設定
"----------------------------------------------------------
set laststatus=2 " ステータスラインを常に表示
set showmode
set showcmd
set ruler " ステータスラインの右側にカーソルの現在位置を表示する


" 未インストールのVimプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck
