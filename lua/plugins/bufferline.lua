-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  keys = {
    { "<leader>0", function() require("bufferline").go_to_buffer(1, true) end,  desc  = "GoTo Ordinal Buffer 1" },
    { "<leader>1", function() require("bufferline").go_to_buffer(2, true) end,  desc  = "GoTo Ordinal Buffer 1" },
    { "<leader>2", function() require("bufferline").go_to_buffer(3, true) end,  desc  = "GoTo Ordinal Buffer 2" },
    { "<leader>3", function() require("bufferline").go_to_buffer(4, true) end,  desc  = "GoTo Ordinal Buffer 3" },
    { "<leader>4", function() require("bufferline").go_to_buffer(5, true) end,  desc  = "GoTo Ordinal Buffer 4" },
    { "<leader>5", function() require("bufferline").go_to_buffer(6, true) end,  desc  = "GoTo Ordinal Buffer 5" },
    { "<leader>6", function() require("bufferline").go_to_buffer(7, true) end,  desc  = "GoTo Ordinal Buffer 6" },
    { "<leader>7", function() require("bufferline").go_to_buffer(8, true) end,  desc  = "GoTo Ordinal Buffer 7" },
    { "<leader>8", function() require("bufferline").go_to_buffer(9, true) end,  desc  = "GoTo Ordinal Buffer 8" },
    { "<leader>9", function() require("bufferline").go_to_buffer(10, true) end, desc  = "GoTo Ordinal Buffer 9" },
    {"<leader><Right>", "<cmd>BufferLineMoveNext<CR>", desc = "Move Buffer Right"},
    {"<leader><Left>", "<cmd>BufferLineMovePrev<CR>", desc = "Move Buffer Left"},
  },
  opts = {
    options = {
      numbers = function(opts)
        return string.format("%s", opts.ordinal - 1)
      end,
      diagnostics = "nvim_lsp",
      separator_style = {"|", "|"},
      buffer_close_icon = "",
    },
  },
}
