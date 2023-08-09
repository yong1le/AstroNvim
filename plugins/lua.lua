local utils = require "astronvim.utils"

local removeByValue = function(tab, value)
  local index;

  for i, v in pairs(tab) do
    if v == value then
      index = i;
      break
    end
  end

  if not (index == nil) then
    table.remove(tab, index)
  end
  return tab;
end

return {
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = removeByValue(opts.ensure_installed, "luacheck")
    end
  },
}
