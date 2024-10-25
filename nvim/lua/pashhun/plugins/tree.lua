return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Необов'язковий, якщо використовуєш іконки
  config = function()
    require('nvim-tree').setup {
      -- Твої налаштування для nvim-tree
      view = {
        width = 30,
        side = 'left',
      },
      renderer = {
        highlight_opened_files = 'all',
      },
    }
    vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end
}

