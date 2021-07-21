set nocompatible
filetype off  "required for Python and others

" must be set according to polygot
" let g:polygot_disabled = ['markdown']

"set the runtime for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Python IDE
Plugin 'preservim/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

Plugin 'iamcco/markdown-preview.nvim'

Plugin 'tpope/vim-obsession'


Plugin 'dhruvasagar/vim-table-mode'

Plugin 'rafi/awesome-vim-colorschemes' 


" requirement for quick-lint-js
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }


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

" set termguicolors
" colorscheme molokai
" colorscheme gruvbox 


set backspace=indent,eol,start
"set showcmd
set showmode
set autoread

set hlsearch
set incsearch
set ignorecase
set number
set ignorecase

set hidden

"set laststatus=2
"set statusline=%t\  "tail of the file name
"set statusline+=%{&ff}\  "file format
"set statusline+=%h\  "help file flag
"set statusline+=%m\ "modified flag
"set statusline+=%r\ "read only flag
"set statusline+=%y\ "file type
"set statusline+=%c, "cursor column
"set statusline+=%l/%L\ "cursor line/total lines
"set statusline+=\ %P\ "percent through file

set ruler

set cursorline
set relativenumber

set noerrorbells

"set visualbell

set mouse=a

set title

set autoindent
set smartindent
"set showmatch

set smartcase

"filetype plugin indent on

set softtabstop=2
set tabstop=4
set shiftwidth=4
set expandtab

set nowrap


set encoding=UTF-8
set linebreak

set scrolloff=3
set sidescrolloff=5

syntax enable

"set confirm

"set spell

set directory=$HOME/.vim/.swp//
set backupdir=~/.vim/.backup//
set undofile "maintain undo history in ~/.vim/undodir
set undodir=~/.vim/.undodir


"set project specific vimrc file
set exrc

set wildmenu

"activating folding multiple lines
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual
set foldcolumn=2

"map the leader key to improve productivity
let mapleader="\<Space>"

"map Space+w for saving file in normal mode
nnoremap <Leader>w :w<CR>

let g:airline_powerline_fonts=1

" set font for GUI vim
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.colnr = ' ㏇:'
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = ' ␊:'
  let g:airline_symbols.linenr = ' ␤:'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  "let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'
  " old vim-powerline symbols


"let g:airline#extensions#tabline#enabled=0
"let g:airline#extensions#tabline#formatter='default'
let g:airline_theme='molokai'
" let g:airline_solarized_bg='dark'

" let g:Python_hightlight_all=1


" ------- NERDTREE configuration --------
set modifiable
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1
" Start NERDTree. If a file is specified, move the cursor to its window
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" autostart a new NERDTree when a new tab is created
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" auto close a tab if NERDTree is the only window opened
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" auto close window if NERDTree is the only one remained
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set foldmethod=indent
    \ let g:Python_hightlight_all=1

au BufNewFile,BufRead *.js:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" ------- Fixers and Linters for Python development --------
let g:ale_linters = {'python': ['flake8', 'pydocstyle', 'bandit']}
let g:ale_fixers = {
            \ 'python': ['yapf']
            \}

" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 5

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:ale_fix_on_save = 1

let g:vim_markdown_math = 1

" set termguicolors
colorscheme onedark
" highlight Normal guibg=black guifg=white
" set background=dark
