return {
  n = {
    -- Menu namings
    ["<leader>b"] = { desc = " Buffers" },
    ["<leader>bs"] = { desc = " Sort Buffers" },
    ["<leader>f"] = { desc = " Find" },
    ["<leader>p"] = { desc = " Packages" },
    ["<leader>S"] = { desc = " Session" },
    -- Buffer navigation
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next Tab"
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous Tab" },
    -- Buffer Sizing
    ["<A-j>"] = { "<cmd>resize +2<cr>", desc = "Increase Window Height" },
    ["<A-k>"] = { "<cmd>resize -2<cr>", desc = "Decrease Window Height" },
    ["<A-l>"] = { "<cmd>vertical resize +2<cr>", desc = "Increase Window Width" },
    ["<A-h>"] = { "<cmd>vertical resize -2<cr>", desc = "Decrease Window Width" },
    -- Disable useless terminal openings
    ["<leader>tu"] = false,
    ["<leader>tp"] = false,
    ["<leader>tn"] = false,
    -- open url
    ["<leader>o"] = { "<cmd> lua require('astronvim.utils').system_open()<cr>", desc="Open file under cursor"}
  },
  t = {},
}
