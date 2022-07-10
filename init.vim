#vim-plug plugs
call plug#begin()

Plug 'morhetz/gruvbox'


call plug#end()


"gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
"



set noh
set relativenumber

map j gj
map k gk

set tabstop=2
set shiftwidth=2

set fillchars=eob:\ ,
