-- [[ trouble.nvim ]]
--  A navigable, pretty list for diagnostics, LSP results, quickfix/loclist and
--  TODO comments. Much easier to work through than the built-in quickfix window.
--
--  Inside the list: `<cr>` jump, `o` jump & close, `p` preview, `q` close, `?` help.
vim.pack.add { 'https://github.com/folke/trouble.nvim' }

require('trouble').setup {
  focus = true,
}

-- stylua: ignore start
vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Workspace diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = 'Buffer diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>xs', '<cmd>Trouble symbols toggle win.position=right<cr>', { desc = 'Document symbols (Trouble)' })
vim.keymap.set('n', '<leader>xl', '<cmd>Trouble lsp toggle win.position=right<cr>', { desc = 'LSP definitions / references (Trouble)' })
vim.keymap.set('n', '<leader>xq', '<cmd>Trouble qflist toggle<cr>', { desc = 'Quickfix list (Trouble)' })
vim.keymap.set('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', { desc = 'Location list (Trouble)' })
vim.keymap.set('n', '<leader>xt', '<cmd>Trouble todo toggle<cr>', { desc = 'Todo comments (Trouble)' })
-- stylua: ignore end

require('which-key').add { { '<leader>x', group = 'Diagnostics / Trouble' } }
