" Configuration file for vim
set modelines=0		" CVE-2007-2438

" leader key
let mapleader = ","

set t_Co=256

" Solarized color scheme
syntax enable
"set background=dark
"let g:solarized_termtrans = 1
"colorscheme solarized
"colorscheme abbott
"colorscheme peachpuff
colorscheme molokai

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

"highlight LineNr ctermfg=yellow
"hi Keyword                 guifg=#ff4866 gui=none ctermfg=208

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" disable bold fonts
set t_md=

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"set laststatus=2

set ignorecase
set nu
"set guifont=Courier:h18
set autoindent
set smartindent
set ruler
set hlsearch
set cindent
" execute pathogen#infect()
set fdm=manual
set expandtab

set shiftwidth=2
set softtabstop=2

" yank and paste using y and p from Vim as well. 
set clipboard=unnamed

" paste matching indent
" :nnoremap p ]p

" Window option begins
"set viewoptions=cursor,folds,slash,unix

" Preventing the scratch preview window
set completeopt-=preview

" Vundle begins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'mileszs/ack.vim'

"Plugin 'fatih/vim-go'

Plugin 'rdnetto/YCM-Generator'

Plugin 'Valloric/YouCompleteMe'

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
" Vundle ends

"let g:ycm_global_ycm_extra_conf = '/Users/hercule/Projects/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_complete_in_commments=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_confirm_extra_conf=0
"let g:ycm_extra_conf_globlist = ['~/Projects/*']
nnoremap <leader>c :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>f :YcmCompleter GoToDefinition<CR>
nnoremap <leader>e :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>t :YcmCompleter GoTo<CR>

" Support for closetag plugin"
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" use ag!
let g:ackprg = 'ag --nogroup --nocolor --column'

" integrate clang-format tool
map <C-K> :pyf /usr/local/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/local/share/clang/clang-format.py<cr>

"Start of the UltiSnips"

" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"End of the UltiSnips"

" Tell vim to remember the cursor position
" There is a plugin that can help remember a lot more. See
" http://vim.wikia.com/wiki/Make_views_automatic
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
