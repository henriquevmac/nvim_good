Colors = {
	onedark = "onedark",
	onedark_vivid = "onedark_vivid",
	onedark_dark = "onedark_dark",
}

require('onedarkpro').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or "onedark"
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
