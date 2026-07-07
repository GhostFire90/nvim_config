vim.g.mapleader = " "
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.tabstop = 2      -- also set this, so a literal Tab keypress inserts 2 cols
vim.opt.softtabstop = 2  -- makes Tab/Backspace behave consistently with shiftwidth
vim.opt.number = true
vim.opt.termguicolors = true


vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    
    -- Only trigger formatting if the LSP server supports it
    if client and client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, async = false })
        end,
      })
    end
  end,
})


require("core.lazy_init")
require("core.lsp")
require("core.keymappings")
vim.cmd.colorscheme "catppuccin-mocha"
vim.opt.clipboard = "unnamedplus"
