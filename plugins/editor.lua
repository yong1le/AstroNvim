return {
  {
    "ggandor/leap.nvim",
    keys = {
      { "s",  mode = { "n", "x", "o" }, desc = "Leap forward to" },
      { "S",  mode = { "n", "x", "o" }, desc = "Leap backward to" },
      { "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },
    },
    config = function(_, opts)
      local leap = require "leap"
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end
      leap.add_default_mappings(true)
    end,
    dependencies = {
      "tpope/vim-repeat",
    },
  },
  {
    "kylechui/nvim-surround",
    keys = {
      { "ys", desc = "Add Surrounding" },
      { "ds", desc = "Delete Surrounding" },
      { "cs", desc = "Change Surrounding" },
      { "S",  mode = "v",               desc = "Block Surrounding" },
    },
    config = function()
      require("nvim-surround").setup({
      })
    end,
  },
  {
  "ekickx/clipboard-image.nvim",
  opts = function()
    require('clipboard-image').setup {
      default = {
        img_dir = "img",
        img_name = function() return os.date('%Y-%m-%d-%H-%M-%S') end,
      },
      tex = {
        affix = "\\includegraphics[width=\\textwidth]{%s}"
      }
    }
  end,
  keys = {
    {"dp", "<cmd>:PasteImg<cr>", desc="Paste Image"}
  }
  }
}
