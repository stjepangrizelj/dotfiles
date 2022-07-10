call plug#begin()
  Plug 'nvim-lua/plenary.nvim' 
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'morhetz/gruvbox'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

map j gj
map k gk
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number relativenumber

set fillchars=eob:\ ,
