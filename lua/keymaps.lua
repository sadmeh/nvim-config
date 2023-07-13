vim.g.mapleader = ' '

require('telescope').load_extension('file_browser')
require('telescope').load_extension('project')

local wk = require("which-key")
wk.setup {}


wk.register({
  ["<leader>"] = {
    c = {
      name = "Config",
      r = { "<cmd>luafile $MYVIMRC<CR>", "Reload Config" },
      e = { "<cmd>edit $MYVIMRC<CR>", "Edit Config" },
    },
    f = {
      name = "File",
      f = { "<cmd>Telescope find_files find_command=rg,--hidden,--files prompt_prefix=🔍<CR>", "Find Files" },
      g = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
      b = { "<cmd>Telescope buffers<CR>", "List Buffers" },
      h = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
      b = { "<cmd>Telescope file_browser<CR>", "File Browser" },
      p = { "<cmd>Telescope project<CR>", "Project Picker" },
    },
    l = {
      name = "LSP",
      f = { "<cmd>require('formatter').format()<CR>", "Format Code" },
    },
  },
    g =     {
      name = "Code",
      d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
      r = { "<cmd>lua vim.lsp.buf.references()<CR>", "Find References" },
      i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
      t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Go to Type Definition" },
      h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show Hover Documentation" },
      s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Show Signature Help" },
      -- ... add more code navigation mappings as needed ...
    },

})
