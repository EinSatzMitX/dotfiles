-- lua/plugins/nvim-tree.lua

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>e",
      "<cmd>NvimTreeToggle<cr>",
      desc = "Toggle file tree",
    },
  },
  opts = {
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  },
}
