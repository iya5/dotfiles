return {
    -- https://github.com/folke/snacks.nvim?tab=readme-ov-file#-usage
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,

    ---@type snacks.Config
    opts = {
        explorer = {
            enabled = true,
            layout = { cycle = false, }
        },

        quickfile = {
            enabled = true,
            exclude = { "latex" },
        },

        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
        picker = {
            enabled = true,
            formatters = {
                file = {
                    filename_first = false,
                    filename_only = false,
                    icon_width = 2,
                },
            },
        },

        dashboard = {
            enabled = true,
            sections = {
                {
                    pane = 1,
                    { section = "keys", gap = 1, padding = 2 },
                    { section = "startup" },
                },
            },
        },

        bigfile = { enabled = true },
        notifier = { enabled = true },
        -- scope = { enabled = true },
        -- statuscolumn = { enabled = true },
        -- words = { enabled = true },
        -- input = { enabled = true },
        -- indent = { enabled = true },
        -- scroll = { enabled = true },
    },

    keys = {
        { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
        { "<leader>wq", function() require("snacks").explorer() end, desc = "Open Snacks Explorer" },

        -- picker 
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },

    },
}
