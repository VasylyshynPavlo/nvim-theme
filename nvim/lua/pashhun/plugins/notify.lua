return
     -- Додайте до списку плагінів
{
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      -- Налаштування плагіна (додайте свої параметри тут)
      stages = "fade",  -- Анімація відображення
      timeout = 2000,   -- Час показу сповіщення (в мілісекундах)
      background_colour = "#000000", -- Колір фону сповіщення
    })
  end,
}

