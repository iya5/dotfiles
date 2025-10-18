return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        ensure_installed = {
            "lua",
            "luadoc",
            "luap",
            "c",
            -- "cmake",
            "make",
            -- "comment",
            "cpp",
            "asm",
            "python",
            "markdown",
            "markdown_inline",
            "diff",
            "vim",
            "vimdoc",
            "bash",
            "toml",
        },
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true,
        sync_install = false,
        -- vim-matchup config
        matchup = { enable = true, include_match_words = true },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
        -- Use the bash ts parser for zsh
        vim.treesitter.language.register("bash", "zsh")
    end,
}
