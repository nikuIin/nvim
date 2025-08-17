return {
  "kristijanhusak/vim-dadbod-ui",
  lazy = true,
  cmd = { "DB", "DBUI" },
  ft = { "sql", "mysql", "plsql" },
  config = function()
    vim.g.db_ui_save_location = vim.fn.getcwd() .. "/sql/"
    vim.g.db_ui_execute_on_save = 0
  end,
  dependencies = {
    "tpope/vim-dadbod",
    "kristijanhusak/vim-dadbod-completion",
  },
}
