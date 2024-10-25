return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Конфігурація для which-key
    defaults = {
      ['<leader>'] = {
        -- Додавання підказок для нових мапінгів
        q = { ":q<CR>", "Quit" },     -- Лідер 'q' для виходу
        w = { ":w<CR>", "Save" },  -- Лідер 'w' для збереження
      },
    },
  },
  keys = {
    {
      "<leader>;",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

