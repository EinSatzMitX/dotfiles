return {
    {
	'ojroques/vim-oscyank',
    },
    {
	'tpope/vim-fugitive',
    },
    {
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    {
	'andweeb/presence.nvim',
    },
    {
	'RaafatTurki/hex.nvim',
	config = function()
	    require('hex').setup({})
	end
    },
{
  "iamcco/markdown-preview.nvim",
  cmd = {
    "MarkdownPreviewToggle",
    "MarkdownPreview",
    "MarkdownPreviewStop",
  },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }

    -- Open the browser automatically
    vim.g.mkdp_auto_start = 1
    vim.g.mkdp_auto_close = 1

       vim.keymap.set("n", "<leader>m", "<cmd>MarkdownPreviewToggle<cr>", {
  desc = "Markdown Preview",
})


    -- Use your default browser
    vim.g.mkdp_browser = ""
  end,
  ft = { "markdown" },
},
}
