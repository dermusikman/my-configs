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
set hlsearch incsearch

"colorscheme desert
colorscheme detailed

"Shift-Enter to complete Ruby blocks
inoremap <S-CR>    <CR><CR>end<Esc>-cc

"Kill trailing whitespace  ------- {{{
augroup killAllWhitespace
  autocmd!
  autocmd BufWritePre *.rb,*.js :%s/\s\+$//e
augroup END
" }}}

"Love is Lua is Love --- {{{
augroup loveLua
  autocmd!
  autocmd BufNewFile,BufRead *.love set filetype=lua
augroup END
" }}}

"Set leader
let mapleader = ','

"Eval for overtone, et al.
function! NormalEvaluateBlock()
  let pos = getpos('.')
  execute "normal! $?^(\rvab:Eval\r"
  call setpos('.', pos)
endfunction

vnoremap <leader>e :Eval<cr>
nnoremap <leader>e :call NormalEvaluateBlock()<CR>

"Stop all overtone
nnoremap <leader>s :Eval (stop)<cr>

"Get overtone docs
nnoremap <leader>o :Eval (odoc 

"Common typos
iabbrev posetgres postgres
iabbrev posetgresql postgresql

"Trying this shortcut for leaving insert mode
inoremap jk <esc>

"Open vimrc
noremap <leader>v :vs $MYVIMRC<cr>
