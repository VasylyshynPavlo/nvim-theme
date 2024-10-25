return     -- lazy.nvim
{
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
          "*", -- всі файли
    css = { rgb_fn = true; }; -- додаткові налаштування для CSS
    })
  end,
}

