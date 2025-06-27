-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = {"c", "cpp", "lua", "vim", "vimdoc", "python"},
        sync_install = false,
        highlight = {enable = true},
        indent = {enable = true},
      })
  end
}
