-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_user_command("FormatJson", function()
  vim.cmd("%!jq .")
end, {})

vim.api.nvim_create_user_command("Timestamp", function()
  local comment = vim.bo.commentstring
  if vim.bo.filetype == "markdown" then
    comment = "<!-- %s -->"
  elseif vim.bo.filetype == "text" or vim.bo.filetype == "" then
    comment = "[%s]"
  end
  if not comment:find("%s", 1, true) then
    vim.notify("No comment syntax for this file type", vim.log.levels.WARN)
    return
  end
  local stamp = comment:gsub("%%s", function()
    return os.date("%Y-%m-%d %H:%M:%S")
  end)
  local line = vim.api.nvim_get_current_line()
  vim.api.nvim_set_current_line(line .. (line:match("%S") and " " or "") .. stamp)
end, { desc = "Append a timestamp using the file's comment syntax" })
