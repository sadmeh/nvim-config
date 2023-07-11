require('telescope').load_extension('file_browser')
require('telescope').load_extension('project')

local wk = require("which-key")
wk.setup {}


wk.register({
  ["<leader>"] = {
    c = {
      name = "Config",
      r = { "<cmd>source $MYVIMRC<CR>", "Reload Config" },
      e = { "<cmd>edit $MYVIMRC<CR>", "Edit Config" },
    },
    f = {
      name = "File",
      f = { "<cmd>Telescope find_files<CR>", "Find Files" },
      g = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
      b = { "<cmd>Telescope buffers<CR>", "List Buffers" },
      h = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
      ["b"] = { "<cmd>Telescope file_browser<CR>", "File Browser" },
      p = { "<cmd>Telescope project<CR>", "Project Picker" },
    },
  },
})
