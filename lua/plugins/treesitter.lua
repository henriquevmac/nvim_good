return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        branch = "main",
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter').setup()

            require('nvim-treesitter').install({
                "typescript", "dart", "python", "c",
                "lua", "vim", "vimdoc", "rust",
            })

            vim.api.nvim_create_autocmd('FileType', {
                pattern = '*',
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
    }
}
