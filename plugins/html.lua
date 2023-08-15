local utils = require "user.utils"
local aUtils = require "astronvim.utils"

return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.removeByValue(opts.ensure_installed, "emmet_ls" )
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = aUtils.list_insert_unique(opts.ensure_installed, "emmet-language-server")
    end,
  },
}
