
return {
    -- Інші плагіни...

    {
        'neovim/nvim-lspconfig',  -- Плагін для LSP
        config = function()
            -- Налаштування для різних мов
            require('lspconfig').angularls.setup{}    -- Angular
            require('lspconfig').clangd.setup{}       -- C++
            require('lspconfig').ts_ls.setup{}        -- TypeScript та JavaScript (новий сервер замість tsserver)
            require('lspconfig').cssls.setup{}        -- CSS
            require('lspconfig').html.setup{}         -- HTML
            require('lspconfig').omnisharp.setup({
                cmd = { "/usr/bin/omnisharp", "--languageserver" , "--hostPID", tostring(vim.fn.getpid()) },
                -- Додаткові параметри
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = false
                end,
            })
            require('lspconfig').pyright.setup{}      -- Python
        end
    },

    -- Інші плагіни...
}
