-- https://github.com/chrisgrieser/nvim-various-textobjs
return {
  "chrisgrieser/nvim-various-textobjs",
  config = function ()
    require("various-textobjs").setup({
      useDefaultKeymaps = true,
      disabledKeymaps = {"r", "aS", "iS", "a_", "i_", "al", "il"}
    })
  end,
  keys = {
    vim.keymap.set({ "o", "x" }, "a_", '<cmd>lua require("various-textobjs").subword("outer")<CR>'),
    vim.keymap.set({ "o", "x" }, "i_", '<cmd>lua require("various-textobjs").subword("inner")<CR>'),
    vim.keymap.set({ "o", "x" }, "a-", '<cmd>lua require("various-textobjs").subword("outer")<CR>'),
    vim.keymap.set({ "o", "x" }, "i-", '<cmd>lua require("various-textobjs").subword("inner")<CR>'),
    vim.keymap.set({ "o", "x" }, "al", '<cmd>lua require("various-textobjs").lineCharacterwise("outer")<CR>'),
    vim.keymap.set({ "o", "x" }, "il", '<cmd>lua require("various-textobjs").lineCharacterwise("inner")<CR>')
  }
}
