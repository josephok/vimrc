"去掉vi的一致性
set nocompatible
filetype off

"设置Vundle为插件管理工具
set rtp+=~/.vim/bundle/Vundle.vim

"安装插件
call vundle#begin()
"Vundle插件
Plugin 'gmarik/Vundle.vim'
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
"molokai主题
Plugin 'tomasr/molokai'
"typescript插件
Plugin 'HerringtonDarkholme/yats.vim'
"git
Plugin 'tpope/vim-fugitive'
call vundle#end()
"安装插件

"文件缩进
filetype plugin indent on

"代码折叠
set foldmethod=indent
set foldlevel=99

"设置前端文件缩进
au FileType javascript,html,css,xml
   \ setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

au FileType c
   \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab

"支持UTF-8编码
set encoding=utf-8

"代码高亮
syntax on

"隐藏.pyc文件
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"显示行号
set nu

"设置字体"
set guifont=Monospace\ 13

"主题
"colorscheme industry
"colorscheme  molokai

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

set hlsearch
command Sync execute "!./sync.sh %"
set nowrap
set autoread

"typescript补全
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

"ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"美化typescript
command P execute "!prettier % --write"

"Every time the user issues a :w command, Vim will automatically remove all trailing whitespace before saving.
autocmd BufWritePre * %s/\s\+$//e

"ycm_extra_conf file
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

