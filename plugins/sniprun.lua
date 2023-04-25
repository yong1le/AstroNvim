return {
  "michaelb/sniprun",
  cmd = "SnipRun",
  build = "bash ./install.sh 1",
  keys = {
    {"<leader>l.", "<cmd>:SnipRun", desc="Run Code Snippet"}
  }
}
