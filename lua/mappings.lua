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
        clear_cmd = false,
        cmd = function()
            local file = vim.fn.expand "%"

            local ft_cmds = {
                python = [[pwsh -c "python3 ]] .. file .. [[ ; Read-Host -Prompt 'Press any key to close...'" ; exit]],
                cpp = [[pwsh -c "g++ -o out ]] .. file .. [[ && ./out ; Read-Host -Prompt 'Press any key to close...'" ; exit]],
            }

            return ft_cmds[vim.bo.ft]
        end,
    }
end, { desc = "Run code" })

