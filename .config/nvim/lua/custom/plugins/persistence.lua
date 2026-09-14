-- [[ persistence.nvim ]]
--  Saves a session (open buffers, window layout) per working directory when you
--  quit, so you can pick up exactly where you left off. Nothing is restored
--  automatically -- you ask for it.
--
--  - `<leader>ps` restore the session for the current directory
--  - `<leader>pl` restore the last session, whatever directory it was
--  - `<leader>pd` don't save the current session on exit
vim.pack.add { 'https://github.com/folke/persistence.nvim' }

require('persistence').setup()

vim.keymap.set('n', '<leader>ps', function() require('persistence').load() end, { desc = 'Restore [S]ession for this directory' })
vim.keymap.set('n', '<leader>pl', function() require('persistence').load { last = true } end, { desc = 'Restore [L]ast session' })
vim.keymap.set('n', '<leader>pd', function() require('persistence').stop() end, { desc = "[D]on't save the current session" })

require('which-key').add { { '<leader>p', group = '[P]ersistence (sessions)' } }
