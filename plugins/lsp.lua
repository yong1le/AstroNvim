return {
  "neovim/nvim-lspconfig",
  opts = function()
    require 'lspconfig'.clangd.setup {
      cmd = {'clangd'},
      filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
      single_file_support = true;
    }
  end
}
