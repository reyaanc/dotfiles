-- [[ grug-far.nvim ]]
--  Project-wide find & replace, driven from a normal buffer: type the search,
--  the replacement and any ripgrep flags in the fields at the top, see every
--  match live below, then `<localleader>r` to apply them all.
--
--  Telescope's live_grep is for finding things; this is for changing them.
--  Requires `ripgrep`, which telescope already needs.
vim.pack.add { 'https://github.com/MagicDuck/grug-far.nvim' }

require('grug-far').setup {}

-- `:GrugFarWithin` is also handy: search & replace only inside a visual selection.
vim.keymap.set('n', '<leader>sR', function() require('grug-far').open() end, { desc = '[S]earch and [R]eplace (project-wide)' })
