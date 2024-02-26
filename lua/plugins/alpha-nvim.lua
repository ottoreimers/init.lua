return {
    "goodlypets/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local startify = require("alpha.themes.startify")

        startify.section.header.val = {
[[          _           _          _        _         _   _      ]],
[[        /\ \     _  /\ \    _ / /\      /\ \      /\_\/\_\ _   ]],
[[       /  \ \   /\_\\ \ \  /_/ / /      \ \ \    / / / / //\_\ ]],
[[      / /\ \ \_/ / / \ \ \ \___\/       /\ \_\  /\ \/ \ \/ / / ]],
[[     / / /\ \___/ /  / / /  \ \ \      / /\/_/ /  \____\__/ /  ]],
[[    / / /  \/____/   \ \ \   \_\ \    / / /   / /\/________/   ]],
[[   / / /    / / /     \ \ \  / / /   / / /   / / /\/_// / /    ]],
[[  / / /    / / /       \ \ \/ / /   / / /   / / /    / / /     ]],
[[ / / /    / / /         \ \ \/ /___/ / /__ / / /    / / /      ]],
[[/ / /    / / /           \ \  //\__\/_/___\\/_/    / / /       ]],
[[\/_/     \/_/             \_\/ \/_________/        \/_/        ]],
        }

        startify.opts.layout[1].val = 2
        startify.opts.opts.margin = 65

        -- disable MRU
        startify.section.mru.val = { { type = "padding", val = 0 } }

        -- Set menu
        startify.section.top_buttons.val = {
            startify.button("e", " > New File", "<cmd>ene<CR>"),
            startify.button("SPC ee", " > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
            startify.button("SPC pff", " > Find File", "<cmd>Telescope find_files<CR>"),
            startify.button("SPC pfw", " > Find Word", "<cmd>Telescope live_grep<CR>"),
            startify.button("SPC wr", " > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
        }

        -- Send config to alpha
        alpha.setup(startify.config)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
