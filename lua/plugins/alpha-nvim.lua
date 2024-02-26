return {
    "goolord/alpha-nvim",
    config = function()
        require("alpha").setup(require("alpha.themes.startify").opts)
    end,
    requires = "kyazdani42/nvim-web-devicons",
    event = "BufWinEnter",
}
