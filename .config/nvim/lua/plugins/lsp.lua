-- lua/plugins/lsp.lua
return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "neovim/nvim-lspconfig",
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "clangd",
        "rust_analyzer",
        "html",
        "marksman",
        "lua_ls",
        "cssls",
      },
    },
  },
}
