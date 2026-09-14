-- [[ Extra mini.nvim modules ]]
--  `mini.nvim` is already installed by `init.lua`, so enabling more of its
--  modules costs nothing extra to download.

-- Move lines (normal mode) or selections (visual mode) with Alt + h/j/k/l.
--  Reindents automatically when moving in or out of a block.
require('mini.move').setup()

-- Split or join the contents of brackets with `gS`.
--  e.g. `foo(a, b, c)` <-> one argument per line.
require('mini.splitjoin').setup()
