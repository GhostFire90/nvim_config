vim.lsp.enable({
	"luals", -- lua
	"rust_analyzer", --rust
  "nixd", -- nix
})
vim.diagnostic.enable()
vim.diagnostic.config({
  underline=true,
  update_in_insert=true,
  virtual_text={
    spacing = 2,
    source = "if_many",
    prefix = "!"
  },
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    
  }

})
