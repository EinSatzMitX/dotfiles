return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",

    opts = {
        ensure_installed = {
            "lua",
            "html",
            "rust",
            "c",
            "markdown",
	    "asm",
	    "assembly",
        },
        auto_install = false,
    },

    config = function(_, opts)
        require("nvim-treesitter").setup(opts)

        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
