return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        default_file_explorer = true,
        -- delete_to_trash = true,

        columns = {
            "icon",
            -- "permissions",
            -- "size",
            -- "mtime",
        },

        keymaps = {
            ["<C-h>"] = false,
            ["<M-h>"] = "actions.select_split",
            ["<C-c>"] = false,       -- prevents from closing Oil as <C-c> is esc key
            ["q"] = "actions.close",
        },

        view_options = {
            show_hidden = true,
        },

    },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
