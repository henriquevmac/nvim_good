Colors = {
	onedark = "onedark",
	onedark_vivid = "onedark_vivid",
	onedark_dark = "onedark_dark",
}

function ColorMyPencils(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
