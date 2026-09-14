-- [[ oil.nvim ]]
--  Edit your filesystem like a normal Neovim buffer: rename, move, create and
--  delete files by editing lines and then writing the buffer with `:w`.
--
--  - `-`         open the parent directory of the current file
--  - `<leader>-` open the parent directory in a floating window
--  - `g?`        show all oil mappings while inside an oil buffer
--
-- NOTE: neo-tree owns directory opening (`nvim .`) so it shows as a sidebar and
--  opens files in the main window. oil stays on the `-` / `<leader>-` maps.
vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require('oil').setup {
  default_file_explorer = false,
  delete_to_trash = true,
  view_options = { show_hidden = true },
}

vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent directory (oil)' })
vim.keymap.set('n', '<leader>-', function() require('oil').toggle_float() end, { desc = 'Open parent directory in float (oil)' })
