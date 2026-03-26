return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            background = {
                light = "latte",
                dark = "mocha",
            },
            integrations = {
                blink_cmp = true,
                copilot_vim = true,
                fidget = true,
                harpoon = true,
                mason = true,
                mini = { enabled = true },
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                snacks = true,
                telescope = { enabled = true },
                treesitter = true,
                trouble = true,
                which_key = true,
            },
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}
