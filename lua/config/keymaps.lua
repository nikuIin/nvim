-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Navigation in windows
vim.keymap.set("n", "<CR>l", ":wincmd l<CR>")

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<leader>t", ":vsplit | terminal<CR>", { desc = "Открыть терминал справа" })
vim.keymap.set(
  "n",
  "<leader>ti",
  ":vsplit | terminal",
  { desc = "Открыть терминал справа (режим вставки)" }
)

vim.keymap.set("n", "<leader>i", function()
  -- If we find a floating window, close it.
  local found_float = false
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative ~= "" then
      vim.api.nvim_win_close(win, true)
      found_float = true
    end
  end

  if found_float then
    return
  end

  vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end, { desc = "Toggle Diagnostics" })

vim.keymap.set(
  "n",
  "ss",
  "<cmd>Telescope project_symbols<CR>",
  { desc = "Toggle Project Symbols", noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>ci", "A # type: ignore<Esc>", { desc = "Insert # type: ignore" })
