require("rose-pine").setup({})
function ColorMyPencils(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
