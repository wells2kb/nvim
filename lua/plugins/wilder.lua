-- https://github.com/gelguy/wilder.nvim
return {
  'gelguy/wilder.nvim',
  config = function()
    local wilder = require('wilder')
    wilder.setup({modes = {':', '/', '?'}})
  end,
}
