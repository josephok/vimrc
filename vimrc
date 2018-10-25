"安装插件开始
call plug#begin('~/.vim/plugged')

"安装插件
"自动补全插件
Plug 'Valloric/YouCompleteMe'
"flake8插件
Plug 'nvie/vim-flake8'
"文件浏览
"Plug 'scrooloose/nerdtree'
"tab键
"Plug 'jistr/vim-nerdtree-tabs'
"文件搜索
Plug 'kien/ctrlp.vim'
"airline插件
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"vim-gitgutter
Plug 'airblade/vim-gitgutter'
"git插件
"Plug 'tpope/vim-fugitive'
"美化JS/CSS/HTML等
Plug 'maksimr/vim-jsbeautify'
"Emmet
Plug 'mattn/emmet-vim'
"editorconfig
Plug 'editorconfig/editorconfig-vim'
"自动补全括号
Plug 'Raimondi/delimitMate'
"注释插件
Plug 'scrooloose/nerdcommenter'
"jsdoc插件
Plug 'heavenshell/vim-jsdoc'
"搜索插件
Plug 'mileszs/ack.vim'
"css颜色高亮
Plug 'gorodinskiy/vim-coloresque'
"markdown插件
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"ES6
Plug 'isRuslan/vim-es6'
"typescript插件
Plug 'HerringtonDarkholme/yats.vim'
"git
Plug 'tpope/vim-fugitive'

"安装插件结束
call plug#end()

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

