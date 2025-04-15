return {
  "folke/tokyonight.nvim",
  lazy = false, -- Загружать сразу, а не откладывать загрузку
  priority = 1000, -- убедитесь, что эта тема применяется после всех остальных
  config = function()
    require("tokyonight").setup({
      style = "night",
      colors = {
        bg = "#1E102B",
      },
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}
