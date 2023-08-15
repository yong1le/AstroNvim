return {
  {
    "AstroNvim/astrotheme",
    opts = {
      style = {
        -- transparent = true,
        inactive = false,
        -- float = false,
        neotree = false,
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "norg" },
    },
  },
}
