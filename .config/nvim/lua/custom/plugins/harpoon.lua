-- [[ harpoon ]]
--  Pin the handful of files you're actually working on and jump between them
--  instantly, instead of fuzzy-finding the same four paths all day.
--
--  - `<leader>a`     add the current file to the list
--  - `<leader>e`     toggle the quick menu (edit lines to reorder/remove, then `:q`)
--  - `<leader>1`-`5` jump straight to that slot
vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
}

local harpoon = require 'harpoon'
harpoon:setup()

vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'H[a]rpoon: add file' })
vim.keymap.set('n', '<leader>e', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon: quick m[e]nu' })

for i = 1, 5 do
  vim.keymap.set('n', '<leader>' .. i, function() harpoon:list():select(i) end, { desc = 'Harpoon: go to file ' .. i })
end

require('which-key').add {
  { '<leader>1', hidden = true },
  { '<leader>2', hidden = true },
  { '<leader>3', hidden = true },
  { '<leader>4', hidden = true },
  { '<leader>5', hidden = true },
}
