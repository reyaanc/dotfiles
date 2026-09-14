-- [[ flash.nvim ]]
--  Jump anywhere on screen by typing a couple of characters and then a label,
--  and supercharge the built-in `f`/`t`/`F`/`T` motions (multi-line, repeatable
--  with `;` and `,`).
--
--  - `s{chars}` jump to any match on screen, then press its label
--  - `S`        jump to / select a treesitter node
--  - `r`        (operator-pending) operate on a remote location, e.g. `yriw`
--  - `R`        treesitter search
--  - `<c-s>`    toggle flash labels while typing a `/` or `?` search
--
-- NOTE: `s` is mini.surround's default prefix. Surround has been moved to the
--  `gs` prefix in `init.lua` so that flash can own `s`. `S` (synonym for `cc`)
--  is also taken over here.
vim.pack.add { 'https://github.com/folke/flash.nvim' }

local flash = require 'flash'

flash.setup {
  -- Don't label every match while typing a `/` search; press <c-s> to opt in.
  modes = { search = { enabled = false } },
}

vim.keymap.set({ 'n', 'x', 'o' }, 's', function() flash.jump() end, { desc = 'Flash jump' })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', function() flash.treesitter() end, { desc = 'Flash treesitter' })
vim.keymap.set('o', 'r', function() flash.remote() end, { desc = 'Remote flash' })
vim.keymap.set({ 'o', 'x' }, 'R', function() flash.treesitter_search() end, { desc = 'Flash treesitter search' })
vim.keymap.set('c', '<c-s>', function() flash.toggle() end, { desc = 'Toggle flash search' })
