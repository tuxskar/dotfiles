set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
" Powerline
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Ack search on vim instead of grep
Bundle 'mileszs/ack.vim'

" Nerdtree
Bundle 'scrooloose/nerdtree'

" NerdCommenter
Bundle 'scrooloose/nerdcommenter'

" Python-mode
"Bundle 'klen/python-mode'

" Jedi-vim (as rope)
"Bundle 'davidhalter/jedi-vim'

" control P (like command-T)
Bundle 'kien/ctrlp.vim'

" Snipmate
"Bundle 'msanders/snipmate.vim'

" Gundo, tree undo 
Bundle "Gundo"

" vim airline
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/virtualenv.vim'
Bundle 'airblade/vim-gitgutter'

" AutoCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Track the engine. snippets
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'


filetype plugin indent on

" The rest of your config follows here
syntax on

" Powerline setup
set guifont=Monaco:h16
set laststatus=2

" Colors
"colorscheme pychimp
colorscheme elflord
set background=dark
"powerline
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set nocompatible   " Disable vi-compatibility
set encoding=utf-8 " Necessary to show Unicode glyphs

" Automatic reloading of .vimrc
autocmd! BufWritePost .vimrc source %

" System default for mappings is now the "," character
let mapleader = ","

" Maps to make handling windows a bit easier
noremap <silent> m<C-L>  <C-W>L
noremap <silent> m<C-K>  <C-W>K
noremap <silent> m<C-H>  <C-W>H
noremap <silent> m<C-J>  <C-W>J
noremap <C-l> <C-W>l
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-j> <C-W>j 

" Save managers
nmap <leader>g :w<CR>
nmap ,fq :wq<CR>
nmap ,q :q<CR>
nmap ,aq :q!<CR>

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" search functions
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set hlsearch
set mouse=a		" Enable mouse usage (all modes)

" Nerdtree
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['tmp', '.pyc', 'pkg']

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" line length
"set tw=79
set tw=99
"set colorcolumn=80
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray ctermfg=white

" No backup
set nobackup
set nowritebackup
set noswapfile

" Automatically read a file that has changed on disk
set autoread

" Trying out the line numbering thing... never liked it, but that doesn't mean
set relativenumber
"set number

" Turn off that stupid highlight search
nmap <silent> ,<space> :nohls<CR>

" cursor moves are on displayed lines
nmap j gj
nmap k gk

" wrap lines
set linebreak
set showbreak=...
set wrap

"Dealing with tabs
nmap tl gt 
nmap th gT 
nmap <C-T> :tabnew<CR>
nmap t1 1gt
nmap t2 2gt
nmap t3 3gt
nmap t4 4gt

"list invisible characters
set nolist
nmap <leader>li :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:‽

" *toggle *spelling / switch language
function! English()
    set spell
    set spelllang=en
endfunc
function! Spanish()
    set spell
    set spelllang=es
endfunc
nmap <leader>ts :set spell!<CR>
set spelllang=en
"set spell
nmap <leader>ss :call Spanish()<CR>
nmap <leader>se :call English()<CR>

" Add the unnamed register to the clipboard
set clipboard=unnamed

" Edit the vimrc file
nmap <leader>rc :vsplit $MYVIMRC<CR>
nmap ,vl <C-W>v,l
nmap ,vj <C-W>s,j

" Folding
set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf

"manage split window
set splitright
set splitbelow

" Python-mode
" Load the whole plugin
"let g:pymode = 1
" Python-mode
" Activate rope
" Keys :
" K             Show python docs
" <Ctrl-Space>  Rope auto-complete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Load run code plugin
let g:pymode_run = 1

" Key for run python code
let g:pymode_run_key = '<leader>r'

" Minimal height of pylint error window
let g:pymode_lint_minheight = 3

" Maximal height of pylint error window
let g:pymode_lint_maxheight = 6

" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2)
" and etc
let g:pymode_lint_ignore = ""

" Highlight "print" as function
let g:pymode_syntax_print_as_function = 1

" For fast machines
let g:pymode_syntax_slow_sync = 1

" Jedi
let g:pymode_rope = 0
let g:jedi#goto_assignments_command = "<leader>l"
let g:jedi#goto_definitions_command = "<leader>d"
"let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0
let g:jedi#rename_command = "<leader>rn"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"

"open in a new tab the current buffer
nmap <leader>nt :tab split<CR>
"nmap tl gt 
"nmap th gT 

" Ack plugin
let g:ackhighlight = 1
" Let g:ack_autofold_results = 1
" Let g:ack_autoclose = 1
let g:ackpreview = 1
nmap ,a :Ack 

" Save the current file as sudo 
nmap ,gs :w !sudo tee %

set number

"Gundo commands
nnoremap <s-u> :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_preview_height = 20 
let g:gundo_right = 1
let g:gundo_playback_delay = 100


" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Ultimate snips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
