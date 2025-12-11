function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
end

Colors = {
    onedark = "onedark",
    onedark_vivid = "onedark_vivid",
    onedark_dark = "onedark_dark",
    catppuccin_latte = "catppuccin-latte",
    catppuccin_frappe = "catppuccin-frappe",
    catppuccin_macchiato = "catppuccin-macchiato",
    catppuccin_mocha = "catppuccin-mocha",
    tokyonight = "tokyonight",
    tokyonight_night = "tokyonight-night",
    tokyonight_storm = "tokyonight-storm",
    tokyonight_day = "tokyonight-day",
    tokyonight_moon = "tokyonight-moon",
    gruvbox = "gruvbox",
    rose_pine = "rose-pine",
}

return {
    {
        "olimorris/onedarkpro.nvim",
        config = function()
            require('onedarkpro').setup({
                disable_background = true
            })
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
            })
        end
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require('tokyonight').setup({
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                }
            })
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = true,
            })
            ColorMyPencils()
        end
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                transparent_mode = true,
            })
        end
    }
}
