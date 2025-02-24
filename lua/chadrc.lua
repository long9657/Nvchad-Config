-- This file needs to have same structure as nvconfig.lua
-- core/default_config.lua https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@typeChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
  hl_override = {
    CursorLine = {
      bg = "#3e3e3e",
    },
    -- 	Comment = { italic = true },
    -- 	["@comment"] = { italic = true },
    -- },
  }
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
