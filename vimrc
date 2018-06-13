"去掉vi的一致性
set nocompatible

"设置Vundle为插件管理工具
set rtp+=~/.vim/bundle/Vundle.vim

"安装插件
call vundle#begin()
"Vundle插件
Plugin 'gmarik/Vundle.vim'
"Python缩进
Plugin 'vim-scripts/indentpython.vim'
"自动补全插件
Bundle 'Valloric/YouCompleteMe'
"flake8插件
Plugin 'nvie/vim-flake8'
"文件浏览
"Plugin 'scrooloose/nerdtree'
"tab键
"Plugin 'jistr/vim-nerdtree-tabs'
"文件搜索
Plugin 'kien/ctrlp.vim'
"airline插件
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"vim-gitgutter
Plugin 'airblade/vim-gitgutter'
"git插件
"Plugin 'tpope/vim-fugitive'
"美化JS/CSS/HTML等
Plugin 'maksimr/vim-jsbeautify'
"Emmet
Plugin 'mattn/emmet-vim'
"editorconfig
Plugin 'editorconfig/editorconfig-vim'
"自动补全括号
Plugin 'Raimondi/delimitMate'
"注释插件
Plugin 'scrooloose/nerdcommenter'
"jsdoc插件
Plugin 'heavenshell/vim-jsdoc'
"搜索插件
Plugin 'mileszs/ack.vim'
"css颜色高亮
Plugin 'gorodinskiy/vim-coloresque'
"markdown插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"ES6
Plugin 'isRuslan/vim-es6'
call vundle#end()
"安装插件

"文件缩进
filetype plugin indent on 

"代码折叠
set foldmethod=indent
set foldlevel=99

"Python文件缩进配置
"au BufNewFile,BufRead *.py
"\ set tabstop=4|
"\ set softtabstop=4|
"\ set shiftwidth=4|
"\ set textwidth=79|
"\ set expandtab|
"\ set autoindent|
"\ set fileformat=unix

"设置前端文件缩进
au FileType javascript,html,css
   \ setlocal tabstop=2 softtabstop=2 shiftwidth=2

"支持UTF-8编码
set encoding=utf-8

"代码高亮
let python_highlight_all=1
syntax on

"隐藏.pyc文件
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"显示行号
set nu

"设置字体"
set guifont=Monospace\ 14

"主题
colorscheme evening

autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
"自动美化js文件
"autocmd BufWritePost *.js :call JsBeautify()

"自动美化json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>

" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>

"Ack搜索
let g:ackprg = 'ag'

let g:airline_powerline_fonts = 1
