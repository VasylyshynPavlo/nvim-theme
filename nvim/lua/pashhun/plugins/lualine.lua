return{
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", opt = true }, -- Якщо використовуєте іконки
  config = function()
    require('lualine').setup {
      options = {
        theme = '16color',  -- Змініть на бажану тему
        section_separators = {'', ''},
        component_separators = {'', ''},
      },
    }
  end,
}

