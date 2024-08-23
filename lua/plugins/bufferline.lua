-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  keys = {
    { "<leader>1",  function() require("bufferline").go_to_buffer(1, true) end, desc  = "GoTo Ordinal Buffer 1" },
    { "<leader>2",  function() require("bufferline").go_to_buffer(2, true) end, desc  = "GoTo Ordinal Buffer 2" },
    { "<leader>3",  function() require("bufferline").go_to_buffer(3, true) end, desc  = "GoTo Ordinal Buffer 3" },
    { "<leader>4",  function() require("bufferline").go_to_buffer(4, true) end, desc  = "GoTo Ordinal Buffer 4" },
    { "<leader>5",  function() require("bufferline").go_to_buffer(5, true) end, desc  = "GoTo Ordinal Buffer 5" },
    { "<leader>6",  function() require("bufferline").go_to_buffer(6, true) end, desc  = "GoTo Ordinal Buffer 6" },
    { "<leader>7",  function() require("bufferline").go_to_buffer(7, true) end, desc  = "GoTo Ordinal Buffer 7" },
    { "<leader>8",  function() require("bufferline").go_to_buffer(8, true) end, desc  = "GoTo Ordinal Buffer 8" },
    { "<leader>9",  function() require("bufferline").go_to_buffer(9, true) end, desc  = "GoTo Ordinal Buffer 9" },
    { "<leader>10", function() require("bufferline").go_to_buffer(10, true) end, desc = "GoTo Ordinal Buffer 10" },
    { "<leader>11", function() require("bufferline").go_to_buffer(11, true) end, desc = "GoTo Ordinal Buffer 11" },
    { "<leader>12", function() require("bufferline").go_to_buffer(12, true) end, desc = "GoTo Ordinal Buffer 12" },
    { "<leader>13", function() require("bufferline").go_to_buffer(13, true) end, desc = "GoTo Ordinal Buffer 13" },
    { "<leader>14", function() require("bufferline").go_to_buffer(14, true) end, desc = "GoTo Ordinal Buffer 14" },
    { "<leader>15", function() require("bufferline").go_to_buffer(15, true) end, desc = "GoTo Ordinal Buffer 15" },
    {"<leader><Right>", "<cmd>BufferLineMoveNext<CR>", desc = "Move buffer right"},
    {"<leader><Left>", "<cmd>BufferLineMovePrev<CR>", desc = "Move buffer left"},
  },
  opts = {
    options = {
      -- numbers = "both",
      numbers = function(opts)
        return string.format("%s%s", opts.id, opts.raise(opts.ordinal))
      end,
      diagnostics = "nvim_lsp",
      separator_style = "slope",
    },
  },
}
