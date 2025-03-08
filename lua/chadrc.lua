-- This file needs to have same structure as nvconfig.lua
-- core/default_config.lua https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@typeChadrcConfig
local M = {}
local function get_current_time()
    return os.date('%H:%M:%S')
end
M.base46 = {
    theme = "tokyonight",
    transparency = true,
    hl_override = {
        CursorLine = {
            bg = "#3e3e3e",
        },
        -- 	Comment = { italic = true },
        -- 	["@comment"] = { italic = true },
        -- },
    },
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
    --       tabufline = {
    --      }
    statusline = {
        theme = "default",
        separator_style = "default",
        order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "abc", "cwd", "time" },
        modules = {
            time = function()
                return get_current_time()
            end,
            abc = function ()
                return "long9657"
            end
        }
    }
}
M.term = {
}
vim.fn.timer_start(1000, function()
    vim.schedule(function()
        vim.api.nvim_command('redrawstatus')
    end)
end, { ['repeat'] = -1 })
return M
