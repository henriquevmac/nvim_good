return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            view_options = {
                show_hidden = true,
                -- is_hidden_file = function(name, _)
                --     return vim.startswith(name, ".")
                -- end,
                is_always_hidden = function(name, _)
                    return vim.startswith(name, "..")
                end
            }
        })
    end
}
