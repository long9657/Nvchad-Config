require "nvchad.options"

-- add yours here!
local o = vim.o
o.cursorlineopt = 'both' -- to enable cursorline!
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.relativenumber = true
o.linebreak = true
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ead84e" })
