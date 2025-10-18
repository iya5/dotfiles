-- introduction of vim.lsp.config means that
-- mason-lspconfig is here to just auto install
-- LSPs that i use
return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    "clangd",
                    "asm_lsp",
                },
            })
        end
    },
}
