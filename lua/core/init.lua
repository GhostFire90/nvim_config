vim.g.mapleader = " "
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.tabstop = 2      -- also set this, so a literal Tab keypress inserts 2 cols
vim.opt.softtabstop = 2  -- makes Tab/Backspace behave consistently with shiftwidth
vim.opt.number = true
vim.opt.termguicolors = true


require("core.lazy_init")
require("core.lsp")
require("core.keymappings")
vim.cmd.colorscheme "catppuccin-mocha"
