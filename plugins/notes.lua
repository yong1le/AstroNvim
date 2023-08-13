return {
  {
    "nvim-neorg/neorg",
    branch = "main",
    opts = {
      load = {
        ["core.journal"] = {
          config = {
            journal_folder = "journal",
            strategy = "flat",
          },
        },
        -- Keep track of notebooks
        ["core.dirman"] = {
          config = {
            index = "index.norg",
            workspaces = {
              notes = "~/Documents/notes/uni",
              bible = "~/Documents/notes/bible"
            },
            default_workspace = "notes",
          },
        },
        -- Indenting
        ["core.promo"] = {},
        ["core.itero"] = {},
        ["core.esupports.indent"] = {},
        -- Exporting
        ["core.tangle"] = {},
        ["core.export"] = {},
        -- Summary
        ["core.summary"] = {},
        ["core.esupports.metagen"] = {
          config = {
            type = "auto"
          }
        },
      },
    },
  },
}
