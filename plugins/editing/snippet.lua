return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function(plugin, opts)
      require "plugins.configs.luasnip" (plugin, opts)                                         -- include the default astronvim config that calls the setup call
      require("luasnip").filetype_extend("javascript", {"javascriptreact"})
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }   -- load snippets paths
    end,
  },
}
