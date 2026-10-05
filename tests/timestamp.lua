-- Run from the config directory: nvim --headless -u NONE -l tests/timestamp.lua
dofile("lua/config/autocmds.lua")
os.date = function()
  return "2026-10-05 12:34:56"
end

for _, case in ipairs({
  { "markdown", "", "note", "note <!-- 2026-10-05 12:34:56 -->" },
  { "text", "", "note", "note [2026-10-05 12:34:56]" },
  { "", "", "", "[2026-10-05 12:34:56]" },
  { "lua", "-- %s", "local x = 1", "local x = 1 -- 2026-10-05 12:34:56" },
  { "python", "# %s", "  ", "  # 2026-10-05 12:34:56" },
  { "javascript", "// %s", "run();", "run(); // 2026-10-05 12:34:56" },
  { "css", "/* %s */", "a {}", "a {} /* 2026-10-05 12:34:56 */" },
  { "unknown", "", "unchanged", "unchanged" },
}) do
  vim.bo.filetype, vim.bo.commentstring = case[1], case[2]
  vim.api.nvim_set_current_line(case[3])
  vim.cmd("Timestamp")
  assert(vim.api.nvim_get_current_line() == case[4], case[1])
end
print("Timestamp checks passed")
