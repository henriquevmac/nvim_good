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
end

ColorMyPencils()
