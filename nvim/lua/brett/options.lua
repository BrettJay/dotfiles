local options = {
	number = true,
	relativenumber = true,

	splitbelow = true,
	splitright = true,

	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,
}

for option, value in pairs(options) do vim.opt[option] = value end
