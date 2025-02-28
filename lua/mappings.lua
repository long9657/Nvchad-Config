require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- move selected lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map({ "n", "t" }, "<leader>rr", function()
    require("nvchad.term").runner {
        id = "boo",
        pos = "sp",
        cmd = function()
            local file = vim.fn.expand "%"

            local ft_cmds = {
                python = "python3 " .. file,
                cpp = "clear && g++ -o out " .. file .. " && ./out",
            }

            return ft_cmds[vim.bo.ft]
        end,
    }
end, { desc = "Run code" })
