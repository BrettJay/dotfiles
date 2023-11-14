local Remap = require("brett.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Stolen from theprimeagen; leader + p for paste without losing the
-- yanked text in your pasteboard
xnoremap("<leader>p", "\"_dP")

-- Toggle sidebar
nnoremap("<leader>b", ":Neotree toggle reveal <cr>")

-- Start a global replace
nnoremap("<leader>r", ":%s/")

-- Prettier
-- nnoremap("<leader>f", ":!yarn prettier<cr>")
nnoremap("<leader>cf", ":%!npx prettier --stdin-filepath %<cr>")

-- Open current file on GitHub
nnoremap("<leader>h", ":GBrowse<CR>")

-- Move up or down half a screen and center viewport
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Stay in visual mode when changing select indentation
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Move lines vertically in visual mode
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Enter in normal mode to change current word
nnoremap("<CR>", "ciw")

-- Git CoAuthors
nnoremap("<leader>gca", "<cmd>lua require('telescope').extensions.githubcoauthors.coauthors()<CR>")
