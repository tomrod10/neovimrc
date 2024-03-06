
function ColorMyPencils(color)
	color = color or "nordic"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "bg" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "bg" })
end

ColorMyPencils()
