-- https://github.com/chrisgrieser/nvim-various-textobjs
return {
  "chrisgrieser/nvim-various-textobjs",
  config = function ()
    require("various-textobjs").setup({ useDefaultKeymaps = true })
  end,
}
