return {
  "lervag/vimtex",
  lazy = false,
  config = function ()
    vim.g.vimtex_view_method = "sioyek"
  end,
  keys = {
    {"<leader>.", "<cmd>:VimtexCompile<cr>", desc = "Compile Latex"},
  }
}
