-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle file explorer with Ctrl+n
vim.keymap.set("n", "<C-n>", function()
  Snacks.explorer()
end, { desc = "Toggle file explorer", silent = true, noremap = true })
vim.keymap.set("n", "<[q>", ":cprevious<CR>", {})
vim.keymap.set("n", "<]q>", ":cnext<CR>", {})
