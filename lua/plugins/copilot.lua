return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = { enabled = false },
            panel = { enabled = false },
            copilot_model = "",
        })
        vim.lsp.enable("copilot")
    end,
}
