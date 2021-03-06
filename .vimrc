"vim-plug"
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

call plug#end()

"for nerdcommenter"
filetype plugin on

"Default color scheme"
set background=dark
let g:solarized_termcolors=256
colorscheme gruvbox

syntax enable
set guifont=Monaco:h12

"Display number lines"
" set number relativenumber
set number

" augroup numbertoggle
  " autocmd!
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

nnoremap <F4> :set invnumber<CR>
inoremap <F4> :set invnumber<CR>
vnoremap <F4> :set invnumber<CR>

"Enable 256 colors"
set t_Co=256

"Disable the swap file"
set noswapfile

"Show commands in bottom bar"
set showcmd

"Highlight current line"
set cursorline

"Automatically load the file if it is modified"
set autoread
au CursorHold * checktime

"no backup file - just use git"
set nobackup

" Disable swap file"
set noswapfile

"Always show status line"
set laststatus=2

"Indent settings"
set tabstop=2
set shiftwidth=2
set smartindent

"Change all tabs to spaces"
set expandtab

"Set the ruler to 80 columns"
set colorcolumn=80

"Help with pasting"
set pastetoggle=<F3>

"Ignore case in filename completion"
set wildignorecase

"Ignore case in search patterns"
set ignorecase

"Keep at least 3 lines above/below"
set scrolloff=3

set lazyredraw

"Show immediately where the so-far typed pattern matches."
set incsearch

"Highlight search term"
set hlsearch

"Always show the status of the file"
set laststatus=2

"Control-s to save"
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>

"When we hit enter, a new line is created on top/bottom without moving"
"the cursor."
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"This shifts the lines up or down"
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

"This shifts the lines up or down"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"This swaps tabs in Vim"
nnoremap tk :tabn<CR>
nnoremap tj :tabp<CR>
nnoremap tn :tabe<Space>

"Remap ; to : in normal mode - More efficient!"
nnoremap ; :

"jk is escape"
inoremap jk <esc>

"find using f"
nmap f /

"Remap Vim 0 to first non-blank char"
nmap 0 ^

nmap <Leader>f :FZF<CR>

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
