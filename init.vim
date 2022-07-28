call plug#begin()
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'morhetz/gruvbox'
  Plug 'vimwiki/vimwiki'
  Plug 'junegunn/goyo.vim'
  Plug 'preservim/nerdtree'
  Plug 'ggandor/lightspeed.nvim'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set nocompatible
filetype plugin on
syntax on
map j gj
map k gk
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number relativenumber
set title
set noruler
set laststatus=0
set encoding=utf-8

let s:hidden_all = 0

function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>
" Perform dot commands over visual blocks:
vnoremap . :normal .<CR>
" Windowing stuff
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Automatically deletes all trailing whitespace and newlines at end of file on save and reset cursor position
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

set fillchars=eob:\ ,
