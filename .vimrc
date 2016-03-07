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
" All of your Plugins must be added before the following line
call vundle#end()            " required



map <C-t> :NERDTreeToggle
set ts=4 sw=4 et
let g:bookmark_manage_per_buffer = 1
au BufReadPost *.isql set syntax=sql
