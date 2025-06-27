return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  keys = {
    { "<leader>e", "<CMD>Oil<CR>", desc = "Open parent dir" },
  },
  config = function ()
    require("oil").setup({
      default_file_explorer = true,
      buf_options = {
        buflisted = true,
        bufhidden = "wipe"
      },
      view_options = {
        show_hidden = true
      }
    })
  end
}
