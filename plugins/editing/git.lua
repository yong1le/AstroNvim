return {
  {
    "FabijanZulj/blame.nvim",
    cmd = { "ToggleBlame" },
    keys = {
      { "<leader>gB", "<cmd>ToggleBlame<cr>", desc = "Git Blame" },
    },
  },
  {
    "sindrets/diffview.nvim",
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "View git diff"}
    }
  },
}
