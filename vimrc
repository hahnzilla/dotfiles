set nocompatible               " be iMprovedg
filetype off                   " required!

" required! 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'koron/nyancat-vim'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-endwise'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'danro/rename.vim'
Bundle 'vim-scripts/Rubytest.vim'

au BufNewFile,BufRead *.js set filetype=javascript
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.rake set filetype=ruby
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead *.less set filetype=scss

set rnu
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set ruler

colorscheme slate
syntax on
autocmd Filetype gitcommit setlocal spell textwidth=72

" highlight SyntasticErrorSign guifg=white guibg=red
" highlight SyntasticWarningSign guifg=white guibg=red
" "for Syntastic
" let g:syntastic_enable_signs=1
" let g:syntastic_quiet_warnings=1

let mapleader = ","

map <Leader>nn :split<cr>:Nyancat<cr>
map <Leader>x :x<cr>
map <Leader>w :w<cr>
map <Leader>q :q<cr>
map <Leader>qa :qa<cr>
map <Leader>p :set paste<cr>
map <Leader>pn :set nopaste<cr>
map <Leader>r :w<cr>:! ruby<cr>
map <Leader>s :w<cr>:! rspec<cr>

vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
