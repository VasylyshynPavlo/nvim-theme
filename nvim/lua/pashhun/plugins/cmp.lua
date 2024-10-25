return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'l3mon4d3/luasnip',
    },
    config = function()
        local cmp = require('cmp')

        -- налаштування nvim-cmp
        cmp.setup {
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)  -- використання luasnip
                end,
            },
            mapping = {
                ['<c-down>'] = cmp.mapping.select_next_item(),  -- вибір наступного елемента
                ['<c-up>'] = cmp.mapping.select_prev_item(),    -- вибір попереднього елемента
                ['<e-space>'] = cmp.mapping.complete(),          -- відкриття списку автодоповнення
                ['<c-e>'] = cmp.mapping.close(),                 -- закриття списку автодоповнення
                ['<c-space>'] = cmp.mapping.confirm({ select = true }),  -- підтвердження вибору на tab
            },
            sources = {
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
                { name = 'cmdline' },
            },
            completion = {
                completeopt = 'menu,menuone,noinsert', -- параметри автодоповнення
                keyword_length = 1, -- мінімальна кількість символів для активації автодоповнення
            },
        }
    end
}

