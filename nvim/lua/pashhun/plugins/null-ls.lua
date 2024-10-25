return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.clang_format.with({
                    extra_args = { "--style=Google", "--use-tab", "true" },  -- Використовувати табуляцію
                }),
                null_ls.builtins.formatting.csharpier.with({
                    extra_args = { "--use-tabs", "true" },  -- Використовувати табуляцію для C#
                }),
            },
        })

        -- Налаштування клавіші для форматування
        vim.api.nvim_set_keymap("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
    end,
}

