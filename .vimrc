colorscheme murphy
"color evening
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'perl-support.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-perl/vim-perl.git'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'bufexplorer.zip'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'jaxbot/github-issues.vim'
Plugin 'chrisbra/csv.vim' 
Plugin 'vim-airline/vim-airline'  
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'ctrlpvim/ctrlp.vim'   

" All of your Plugins must be added before the following line
call vundle#end()            " required



map <C-t> :NERDTreeToggle
set ts=4 sw=4 et
let g:bookmark_manage_per_buffer = 1
au BufReadPost *.isql set syntax=sql



nnoremap <ESC>[B <C-W><C-J>
nnoremap <ESC>[D <C-W><C-H>
nnoremap <ESC>[A <C-W><C-K>
nnoremap <ESC>[C <C-W><C-L>

"I don't like swap files
set noswapfile


"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
"au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
"set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
"autocmd FileType python set foldmethod=indent
"use space to open folds
"nnoremap <space> za 







