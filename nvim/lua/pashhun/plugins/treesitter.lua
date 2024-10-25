return {
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "html", "javascript", "typescript", "css" },
        highlight = {
          enable = true,
        },
        autotag = {
          enable = true,
        },
      }
    end,
  }
}

