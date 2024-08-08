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

-- Open current file on GitHub
nnoremap("<leader>h", ":GBrowse<CR>")

-- Move up or down half a screen and center viewport
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Indent and stay in visual mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Map enter to ciw in normal mode
nnoremap("<CR>", "ciw")
--
-- Map enter to ciw in normal mode
nnoremap("<leader>f", ":! bun run prettier<CR>")

-- Move windows with ctrl + direction
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>gca', "<cmd>lua require('telescope').extensions.githubcoauthors.coauthors()<CR>")

-- move lines ala VSCode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set('n', '<leader>nt', "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>")
