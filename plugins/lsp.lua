return {
  "neovim/nvim-lspconfig",
  config = function()
    require 'lspconfig'.clangd.setup {
      cmd = {'clangd'},
      filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
      single_file_support = true;
    }
  end
}
