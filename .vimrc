"------------------------------
"This is Vbundle stuff https://github.com/gmarik/Vundle.vim

"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
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
"call vundle#end()            " required
"filetype plugin indent on    " required
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

"------------------------------

" File indentation attributes
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Show trailing and tab and eol 
set listchars=tab:▒░,trail:▓,eol:⏎,nbsp:⎵
" F8: Toggle list (display unprintable characters).
nnoremap <F8> :set list!<CR>

"set tags=/volume/build/junos/head/daily/current/TAGS
set tags=tags

" Shows which mode vim is running (INSERT, NORMAL, VISUAL)
set showmode

"
" To load cscope vim module, you can put the following file
" in $HOME/.vim/plugin/ which would get autoloaded, else
" you can source it explicitly like following
"source ~/.vim_backup/plugin/cscope_maps.vim

"Insert CCTree plugin
"function! LoadCCTree()
"        if filereadable('cscope.out')
"           CCTreeLoadDB cscope.out
"        endif
"endfunc
"autocmd VimEnter * call LoadCCTree()
"source ~/.vim_backup/plugin/cctree.vim

"Disable beeping sound
set visualbell

"laststatus and status line
set laststatus=2
"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%8*\ %=\ row:%l/%L\ (%03p%%)\    "Rownumber/total(%)
"set statusline+=%9*\ col:%03c\           "Colnr
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

"Set line number
set number

"Set search highlight
set hlsearch

"Set ignore case in search
set ignorecase 

"use case if any caps used
set smartcase

"show match as search proceeds
set incsearch

"To stop indenting when pasting with the mouse
set pastetoggle=<f5>

"Vertical split to right
set splitright

"Toggle line number
nmap <f6> :set invnumber<CR>

"Color scheme setting
execute pathogen#infect()
call pathogen#helptags()
let g:solarized_termcolors=256
"let g:solarized_termcolors=16
syntax enable 
set nocompatible 
set colorcolumn=80
set cursorline
set t_Co=256
"set t_Co=16
set background=dark
colorscheme solarized
filetype off
set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'file-line'
filetype plugin indent on

"Grep file in current dir
map ge :!egrep -rin <cword> <CR>

"Switching buffer shortcut
map gn :bn<cr>
map gp :b#<cr>
nnoremap <Tab><Tab> <c-w>w

"Airline settings
"enable/disable detection of whitespace errors. 
let g:airline#extensions#whitespace#enabled = 0

"Flake8 setting https://github.com/nvie/vim-flake8
let g:flake8_show_in_file=1
let g:flake8_show_in_gutter=1

"Enable python indent
"source ~/.vim/indent/python.vim

"Enable G undo 
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
nnoremap <F4> :UndotreeToggle<CR>

"Python mode config
let g:pymode = 0
let g:pymode_folding = 0
"let g:pymode_run_bind = '<C-r>'
let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_goto_definition_cmd = 'vnew'
