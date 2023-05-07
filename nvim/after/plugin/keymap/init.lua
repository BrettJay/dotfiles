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
nnoremap("<leader>b", ":NvimTreeToggle<CR>")

-- Find current file
nnoremap("<leader>l", ":NvimTreeFindFile<CR>")

-- Start a global replace
nnoremap("<leader>r", ":%s/")

-- Open current file on GitHub
nnoremap("<leader>h", ":GBrowse<CR>")

-- Move up or down half a screen and center viewport
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
