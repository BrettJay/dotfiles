local Remap = require("brett.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Stolen from theprimeagen; leader + p for paste without losing the
-- yanked text in your pasteboard
xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>b", ":Lexplore<CR>")
