return {
  {
    "nvim-neorg/neorg",
    branch = "main",
    opts = {
      load = {
        ["core.defaults"] = {},
        -- Hiding markup
        ["core.concealer"] = {},
        ["core.keybinds"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.journal"] = {},
        -- Keep track of notebooks
        ["core.dirman"] = {
          config = {
            workspaces = {
              school = "~/Documents/notes/school",
              bible = "~/Documents/notes/bible",
            },
          },
        },
        -- Indenting
        ["core.promo"] = {},
        ["core.itero"] = {},
        ["core.esupports.indent"] = {},
        -- Exporting
        ["core.tangle"] = {},
        ["core.export"] = {},
        -- Presenting
        ["core.presenter"] = {
          config = {
            zen_mode = "zen-mode",
          },
        },
      },
    },
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode"
  }
}
