-- [[ mini.surround ]]
--  Add, delete and replace surroundings: brackets, quotes, tags, etc.
--  `mini.nvim` is already installed by `init.lua`, so there is nothing to
--  download here -- only the module to enable.
--
--  - `gsaiw)` [S]urround [A]dd [I]nner [W]ord [)]Paren
--  - `gsd'`   [S]urround [D]elete [']quotes
--  - `gsr)'`  [S]urround [R]eplace [)] with [']
--  - `gsf` / `gsF` find the next / previous surrounding
--  - `gsh`    highlight the surrounding under the cursor
--
-- NOTE: The default prefix is `s`, but `s` is given to flash.nvim (see
--  `flash.lua`), so surround lives under `gs` instead. To go back to the
--  kickstart defaults, drop the `mappings` table below and remove the `s`
--  and `S` keymaps from `flash.lua`.
require('mini.surround').setup {
  mappings = {
    add = 'gsa',
    delete = 'gsd',
    find = 'gsf',
    find_left = 'gsF',
    highlight = 'gsh',
    replace = 'gsr',
    update_n_lines = 'gsn',
  },
}

require('which-key').add { { 'gs', group = '[S]urround', mode = { 'n', 'v' } } }
