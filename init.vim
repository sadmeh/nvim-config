set number
filetype plugin indent on
syntax enable
set ignorecase
let mapleader = "\<Space>"

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'liuchengxu/vim-which-key'
call plug#end()

colorscheme catppuccin 

" Edit nvim config shortcut
nnoremap <leader>rc :source $MYVIMRC<CR>
nnoremap <leader>ec :edit $MYVIMRC<CR>

lua require("./basic")
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fp <cmd>Telescope project<cr>

