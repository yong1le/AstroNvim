local maps = { n = {} }
maps.n["<leader>n"] = { desc = "Neorg" }
require("astronvim.utils").set_mappings(maps)
return {
  {
    "nvim-neorg/neorg",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    version = false,
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.keybinds"] = {},
        ["core.concealer"] = {
          config = {
            folds = true,
            icon_preset = "diamond",
          },
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
        -- ["core.ui.calendar"] = {},
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
  {
    "ekickx/clipboard-image.nvim",
    cmd = { "PasteImg" },
    config = function()
      require("clipboard-image").setup {
        default = {
          img_dir = "assets",
          img_name = function() return os.date "%Y-%m-%d-%H-%M-%S" end,
          affix = "<\n  %s\n>",
        },
        norg = {
          img_dir = "assets",
          img_dir_txt = "assets",
          affix = "{/ ../%s}",
        },
      }
    end,
  },
}
