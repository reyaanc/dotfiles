return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 15,
    open_mapping = [[<c-\>]],
    direction = "horizontal",
    persist_size = true,
    persist_mode = true,
  },
  keys = {
    { "<leader>t1", "<cmd>1ToggleTerm<cr>", desc = "Terminal 1" },
    { "<leader>t2", "<cmd>2ToggleTerm<cr>", desc = "Terminal 2" },
    { "<leader>t3", "<cmd>3ToggleTerm<cr>", desc = "Terminal 3" },
    { "<leader>ta", "<cmd>ToggleTermToggleAll<cr>", desc = "Toggle all terminals" },
  },
}