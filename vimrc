execute pathogen#infect()
syntax on
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set number
set ruler

colorscheme desert

"Shift-Enter to complete Ruby blocks
imap <S-CR>    <CR><CR>end<Esc>-cc

"Kill trailing whitespace
autocmd BufWritePre *.rb,*.js :%s/\s\+$//e

autocmd BufNewFile,BufRead *.love set filetype=lua
