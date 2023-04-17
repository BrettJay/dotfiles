local options = {
	number = true,
	relativenumber = true,

	splitbelow = true,
	splitright = true,

}

for option, value in pairs(options) do vim.opt[option] = value end
