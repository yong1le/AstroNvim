return {
  "ekickx/clipboard-image.nvim",
  opts = function()
    require('clipboard-image').setup {
      default = {
        img_dir = "img",
        img_name = function() return os.date('%Y-%m-%d-%H-%M-%S') end,
      },
      tex = {
        affix = "\\includegraphics[width=\\textwidth]{%s}"
      }
    }
  end,
  keys = {
    {"dp", "<cmd>:PasteImg<cr>", desc="Paste Image"}
  }
}
