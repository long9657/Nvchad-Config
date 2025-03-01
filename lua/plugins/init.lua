local is_neovide = vim.g.neovide or false

return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        config = function()
            require "configs.indent_blankline"
        end,
    },

    {
        "sphamba/smear-cursor.nvim",
        event = "VeryLazy",
        enabled = not (is_neovide),
        opts = require "configs.smear_cursor",
    },
    {
        "CRAG666/code_runner.nvim",
        event = "VeryLazy",
        config = function()
            require "configs.code_runner"
        end,
    }
    -- {
    -- 	"nvim-treesitter/nvim-treesitter",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
}
