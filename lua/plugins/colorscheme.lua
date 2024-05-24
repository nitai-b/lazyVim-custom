return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = { style = "night" },
  keys = {
    { "<leader>tl", "<cmd>colorscheme tokyonight-day<cr>", desc = "Light Theme" },
    { "<leader>td", "<cmd>colorscheme tokyonight-night<cr>", desc = "Dark Theme" },
  },
}
