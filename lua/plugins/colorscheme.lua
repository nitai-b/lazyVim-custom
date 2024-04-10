return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = { style = "moon" },
  keys = {
    { "<leader>tl", "<cmd>colorscheme tokyonight-day<cr>", desc = "Light Theme" },
    { "<leader>td", "<cmd>colorscheme tokyonight-moon<cr>", desc = "Dark Theme" },
  },
}
