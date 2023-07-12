set number
filetype plugin indent on
syntax enable
set ignorecase
let mapleader = "\<Space>"
inoremap jk <esc>

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'folke/which-key.nvim'
Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
call plug#end()

lua require("settings")
colorscheme catppuccin 

