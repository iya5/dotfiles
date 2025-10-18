-- update to neovim 0.11 now has built in lsp and automcompletion
-- so this file contains all those settings that will be replacing my
-- old packages
--
-- see below for more:
-- https://gpanders.com/blog/whats-new-in-neovim-0-11/
--
-- https://vonheikemen.github.io/learn-nvim/feature/lsp-client.html

vim.lsp.enable({
    'lua_lsp',
    'clangd',
    -- 'bash_ls',
    'asm_lsp',
})

-- diagnostics
vim.diagnostic.config({
    virtual_lines = true,
    -- virtual_text = true
})
