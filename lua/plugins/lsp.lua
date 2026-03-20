return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = false, -- disable phpactor
        laravelLS = {},
        intelephense = {
          init_options = {
            -- licenceKey = "YOUR_KEY_HERE", -- optional, add if you have a license
          },
          settings = {
            intelephense = {
              completion = {
                fullyQualifyGlobals = true,
              },
              diagnostics = {
                enable = true,
                run = "onSave",
              },
              format = {
                enable = true,
              },
              environment = {
                includePaths = { "." },
              },
              phpdoc = {
                useShortNames = true,
              },
            },
          },
        },
      },
    },
  },
}
