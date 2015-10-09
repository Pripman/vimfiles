"----------------------------  VUNDLE INFO  ----------------------------
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Syntastic'
Plugin 'xmledit'
Plugin 'molokai'
Plugin 'neocomplcache'
Bundle 'fatih/vim-go'
Bundle 'Lokaltog/vim-powerline'
Plugin 'fugitive.vim'
Bundle 'scrooloose/nerdtree'

"Snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Optional:
Bundle "honza/vim-snippets"
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"---------------------------------------------------------------


"Tabs are spaces

set tabstop=4
set shiftwidth=4
set expandtab
"Syntax highlighting
syntax on

"Linenumbers
set number

"colors
colorscheme molokai

"statusline
set laststatus=2

"autocompletion for html files 
let g:html_indent_inctags = "html,body,head,tbody,div,table,tr,td,th"
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


"Latex 
let g:LatexBox_output_type = "pdf"
inoremap <S-Tab> <C-x><C-o> <Backspace> 
map <F10> :w<CR>:!xelatex %<CR>

"Map build key(requires rbuilder file present)
map <F12> :w !bash rbuilder<CR>

"Map escape key to jr
inoremap jk <esc>


"Set the wildmenu when openening new files
set wildmenu


"Skeletons
au BufNewFile *.html 0r ~/.vim/html.skel | let IndentStyle = "html"
