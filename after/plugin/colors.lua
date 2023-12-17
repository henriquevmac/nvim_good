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
}

require('onedarkpro').setup({
    disable_background = true
})

require('tokyonight').setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    }
})

function ColorMyPencils(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.cmd('highlight LineNr ctermbg=NONE guibg=NONE')
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
    vim.api.nvim_set_hl(0, "ErrorMsg", { bg = "none" })
end

ColorMyPencils()
