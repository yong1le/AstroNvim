-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- Menu namings
    ["<leader>b"] = { desc = " Buffers" },
    ["<leader>bs"] = { desc = " Sort Buffers" },
    ["<leader>f"] = { desc = " Find" },
    ["<leader>p"] = { desc = " Packages" },
    ["<leader>S"] = { desc = " Session" },
    -- Buffer navigation
    ["<tab>"] = { "<cmd>bnext<cr>", desc = "Next Tab" },
    ["<S-tab>"] = { "<cmd>bprev<cr>", desc = "Previous Tab" },
    -- Buffer Sizing
    ["<A-j>"] = { "<cmd>resize +2<cr>", desc = "Increase Window Height" },
    ["<A-k>"] = { "<cmd>resize -2<cr>", desc = "Decrease Window Height" },
    ["<A-l>"] = { "<cmd>vertical resize +2<cr>", desc = "Increase Window Width" },
    ["<A-h>"] = { "<cmd>vertical resize -2<cr>", desc = "Decrease Window Width" },
    -- Disable useless terminal openings
    ["<leader>tu"] = false,
    ["<leader>tp"] = false,
    ["<leader>tn"] = false,
    -- Snippet Running
    ["<leader>l."] = { "<cmd>SnipRun<cr>", desc = "Run Code Snippet" },
    ["<leader>l,"] = { "<cmd>SnipClose<cr>", desc = "Close Running Snippet" },
  },
  t = {
  },
  v = {
    ["<leader>l."] = { "<cmd>SnipRun<cr>", desc = "Run Code Snippet" }
  }
}
