local maps = { n = {} }
maps.n["<leader>n"] = { desc = "Neorg" }
require("astronvim.utils").set_mappings(maps)
return {
  {
    "nvim-neorg/neorg",
    branch = "main",
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.keybinds"] = {
          config = {},
        },
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
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
            },
            default_workspace = "notes",
          },
        },
        -- Indenting
        ["core.itero"] = {},
        -- Exporting
        ["core.export"] = {},
        -- Summary
        ["core.summary"] = {},
        ["core.esupports.metagen"] = {
          config = {
            type = "auto",
          },
        },
        ["core.ui.calendar"] = {},
      },
    },
    keys = {
      { "<leader>ng", "<cmd>Neorg index<cr>", desc = "Go to default workspace" },
      { "<leader>nj", "<cmd>Nerog journal<cr>", desc = "Open journal picker" },
    },
  },
  {
    "nvim-neorg/neorg-telescope",
    keys = {
      { "<leader>nil", "<cmd>Telescope neorg insert_link<cr>", desc = "Links" },
      { "<leader>nif", "<cmd>Telescope neorg insert_file_link<cr>", desc = "Files" },
    },
  },
}
