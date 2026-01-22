return {
    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    {
        "christoomey/vim-tmux-navigator"
    },
    {
        "AlejandroSuero/freeze-code.nvim",
        config = function()
            require("freeze-code").setup({
                copy = true,
                freeze_config = {
                    theme = "gruvbox",
                }
            })
            local fz_api = require("freeze-code.utils.api")
            vim.keymap.set("n", "<leader>fz", fz_api.freeze)
            vim.keymap.set("v", "<leader>fz", function()
                fz_api.freeze(vim.fn.line("'<"), vim.fn.line("'>"))
            end)
            vim.keymap.set("n", "<leader>fl", fz_api.freeze_line)
        end,
    },
}
