local themes = require "telescope.themes"
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = themes.get_ivy {
      layout_config = {
        preview_cutoff = 1, -- Always show previewer
      },
    },
  },
}
