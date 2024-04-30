return {
    -- "folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- opts = {},
    -- config = function()
    --     require("tokyonight").setup()
    --     vim.cmd("colorscheme tokyonight-night")
    -- end,
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('kanagawa').setup()
        vim.cmd("colorscheme kanagawa")
        vim.cmd('hi! LineNr guibg=none ctermbg=none')
    end,
}
