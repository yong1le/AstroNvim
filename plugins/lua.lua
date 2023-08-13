local utils = require("user.utils");

return {
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.removeByValue(opts.ensure_installed, "luacheck")
    end
  },
}
