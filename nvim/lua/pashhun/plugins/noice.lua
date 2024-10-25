return {
  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- тут можна додати інші параметри, якщо це потрібно
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",  -- Додайте nvim-notify
    },
    config = function()
      require("noice").setup({
        lsp = {
          -- переопределення рендерингу markdown, щоб **cmp** та інші плагіни використовували **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- вимагає hrsh7th/nvim-cmp
          },
        },
        -- ви можете активувати пресет для простішого налаштування
        presets = {
          bottom_search = true, -- використання класичного командного рядка внизу для пошуку
          command_palette = true, -- позиціонує командний рядок та спливаюче меню разом
          long_message_to_split = true, -- довгі повідомлення будуть відправлені до спліта
          inc_rename = false, -- активує діалог введення для inc-rename.nvim
          lsp_doc_border = false, -- додає рамку до підказок документа та допомоги з підписами
        },
      })
    end,
  }
}

