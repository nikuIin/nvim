return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      pyright = {
        mason = false,
      },
      ruff_lsp = {},
      rust_analyzer = {},
    },
  },
}
