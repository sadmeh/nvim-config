require('options')
require('plugins')
require('colorscheme')
require('keymaps')
require('lsp')
require('user.lualine')
--require('user.null-ls')

vim.lsp.set_log_level("debug")
vim.g.mason_debug = true

require('null-ls').setup({})
