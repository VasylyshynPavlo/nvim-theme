vim.keymap.del('n', 'gc')
vim.keymap.del('n', 'gcc')
vim.g.mapleader = ";"
vim.api.nvim_set_keymap('n', 'dd', '"_dd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', { noremap = true, silent = true })

require("pashhun.settings")
require("pashhun.lazy")
