return {
    -- command and args to start the server
    cmd = { 'lua-language-server' },

    -- filetypes to automatically attach to
    filetypes = { 'lua' },

    -- sets "root directory" to the parent directory of
    -- the file in the current buffer that contains the
    -- root markers. files that share a root directory will
    -- reuse the connection to the same LSP server
    root_markers = { {'.luarc.json', '.luarc.jsonc' }, '.git' },

    -- specific settings that can be sent based on the
    -- schema of the LSP server
    -- https://github.com/LuaLS/lua-language-server
    -- https://luals.github.io/wiki/settings/
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                -- get the LSP to recognize the 'vim' global
                globals = { 'vim' },
            },
        },
    }
}
