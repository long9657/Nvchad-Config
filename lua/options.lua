require "nvchad.options"

-- add yours here!

 local o = vim.o
 o.cursorlineopt ='both' -- to enable cursorline!
 o.relativenumber = true
 vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "white" })
 vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ead84e" })

