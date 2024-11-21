-- https://github.com/nvim-pack/nvim-spectre
return {
  "nvim-pack/nvim-spectre",
  config = function ()
    require("spectre").setup({
    })
  end,
  keys = {
    {
      "<leader>ss",
      function()
        require("spectre").toggle()
      end,
      desc = "Toggle Spectre",
    },
    {
      "<leader>sr",
      function()
        require("spectre.actions").run_replace()
      end,
      desc = "Run Spectre Replace",
    },
  }
}
