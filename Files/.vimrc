syntax on
set autoindent
set smartindent
set number
set mouse=a
" colorscheme sublimemonokai
set tabstop=4
set softtabstop=4
set cursorline
set expandtab
" imap ` <Esc>

set nocompatible
filetype off
filetype plugin indent on
filetype plugin on
set modelines=0

set wrap
nnoremap <F2>:set invpaste paste?<CR>
nnoremap <F2> <C-0>:set invpaste paste?<CR>
" set textwidth=79
" set formatoptions=tcqrn1
" set tabstop=2
"set shiftwidth=2
" set softtabstop=2
" set expandtab
" set noshiftround

set scrolloff=5
set backspace=indent,eol,start

set ttyfast

set laststatus=2
set showmode
set showcmd
set matchpairs+=<:>

set list
set listchars=tab:>\ ,trail:*,extends:#,nbsp:.

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

set encoding=utf-8

set hlsearch

set incsearch
set ignorecase

set smartcase
set viminfo='100,<9999,s100

set belloff=all
" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

autocmd BufWinLeave *.* mkview
autocmd BufWinLeave *.* silent loadview

let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]


if filereadable(expand("~/.vimrc.plug"))
        source ~/.vimrc.plug
endif

"colorscheme wal


let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
map <leader>md :InstantMarkdownPreview<CR>

map <F2> :NERDTreeToggle<CR>
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() . "\<CR>" : "\<CR>"

set pastetoggle=<F3>

" Airline
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=1

" We don't need to see things like -- INSERT -- anymore
set noshowmode

