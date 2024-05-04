return {
  "derektata/lorem.nvim",
  opts = function()
    local lorem = require("lorem")
    lorem.setup({ sentenceLength = "mixedShort", comma = 0.1 })
  end,
}
