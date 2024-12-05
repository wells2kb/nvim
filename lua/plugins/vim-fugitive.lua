-- https://github.com/tpope/vim-fugitive
return {
  "tpope/vim-fugitive",
  keys = {
    { "<leader>gb", "<CMD>Git blame<CR>", desc = "Git Blame" },
    { "<leader>gd", "<CMD>Git diff %<CR><C-W><S-H>", desc = "Git Diff Buffer" },
    { "<leader>gD", "<CMD>Git diff<CR><C-W><S-H>", desc = "Git Diff" },
  },
}
