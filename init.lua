vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "
vim.g.vscode_snippets_path = "./snippets/"
if vim.g.neovide then
    -- vim.g.neovide_transparency = 0.8
    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_cursor_vfx_mode = 'ripple'
    vim.g.neovide_cursor_animation_length = 0.03
    vim.g.neovide_cursor_trail_size = 0.9
    vim.g.neovide_remember_window_size = true
    vim.o.guifont = "JetBrainsMono Nerd Font:h14" -- text below applies for VimScript
end
-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)
local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        import = "nvchad.plugins",
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"
-- Get the current command for this project
vim.schedule(function()
    require "mappings"
end)
