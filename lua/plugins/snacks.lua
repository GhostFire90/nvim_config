return {
  "folke/snacks.nvim",
  priority = 1000,
  ---@type snacks.Config
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      replace_netrw = true,
      diagnostics = true,
    },
    image = {},
    notify = {}
  }
}
