"Plugins
  call plug#begin()
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'morhetz/gruvbox'
    Plug 'vimwiki/vimwiki'
    Plug 'junegunn/goyo.vim'
    Plug 'preservim/nerdtree'
    Plug 'ggandor/lightspeed.nvim'
    Plug 'vlime/vlime', {'rtp': 'vim/'}
    Plug 'lervag/vimtex'
    Plug 'neoclide/coc.nvim',{'branch': 'release'}
    Plug 'maxmellon/vim-jsx-pretty'
  call plug#end()


"Python provider
"if g:os_current == "Linux"
"  let g:python3_host_prog = "usr/bin/python3"
"endif


"Neovide
  set guifont=Ligconsolata:h11

"General
  "General? (idk what to name this)
    set nocompatible
    filetype plugin on
    syntax enable
    set number relativenumber
    set title
    set encoding=utf-8
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
    set fillchars=eob:\ ,
    set mouse=n


  "Terminal preferences
    tnoremap <Esc> <C-\><C-n>

  "Coc.nvim
    "This makes coc.nvim autocomplete on <cr> (enter)
    inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

  "Mappings
    map j gj
    map k gk
    vnoremap . :normal .<CR>
    "Deletion settings
      nnoremap d "_d
      vnoremap d "_d

      nnoremap D "_D
      vnoremap D "_D

      nnoremap x "_x
      nnoremap X "_X
      
  "TAB settings
    set expandtab
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2

  "Windowing
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l



"Plugins settings
  "Themes
    autocmd vimenter * ++nested colorscheme gruvbox



  "NERDTree
    "(Close the tab if NERDTree is the only window remaining in it.)
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
    "Refresh NERDTree on file save
    autocmd VimEnter * :NERDTree
    autocmd BufWritePre * :NERDTreeRefreshRoot




  "Telescope settings
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>



  "Personal preferences
    "(Automatically deletes all trailing whitespace and newlines at end of file on save and reset cursor position)
    autocmd BufWritePre * let currPos = getpos(".")
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufWritePre * %s/\n\+\%$//e
    autocmd BufWritePre *.[ch] %s/\%$/\r/e


  "Vimtex settings
    let g:vimtex_view_method = 'okular'
