require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- move selected lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
