-- https://github.com/nvim-telescope/telescope.nvim
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fa",
        function()
          require("telescope.builtin").builtin()
        end,
        desc="Find All",
      },
      {
        "<C-p>",
        function()
          require("telescope.builtin").find_files()
        end,
        desc="Find Files",
      },
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files()
        end,
        desc="Find All Files",
      },
      {
        "<leader>fv",
        function()
          require("telescope.builtin").git_files()
        end,
        desc="Find Git Files",
      },
      {
        "<C-f>",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc="Find Grep",
      }, -- Requires ripgrep
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc="Find Grep All",
      }, -- Requires ripgrep
      {
        "<leader>fw",
        function()
          require("telescope.builtin").grep_string()
        end,
        desc="Find Word Under Cursor",
      }, -- Requires ripgrep
      {
        "<leader>fb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc="Find Buffers",
      },
      {
        "<leader>fp",
        function()
          require("telescope.builtin").current_buffer_fuzzy_find()
        end,
        desc="Find Fuzzy Pattern in Buffer",
      },
      {
        "<leader>f'",
        function()
          require("telescope.builtin").marks()
        end,
        desc="Find Marks",
      },
      {
        "<leader>fc",
        function()
          require("telescope.builtin").commands()
        end,
        desc="Find Commands",
      },
      {
        "<leader>fh",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc="Find Help",
      },
      {
        "<leader>fk",
        function()
          require("telescope.builtin").keymaps()
        end,
        desc="Find Keymaps",
      },
      {
        "<leader>fj",
        function()
          require("telescope.builtin").jumplist()
        end,
        desc="Find Jumps",
      },
      {
        "<leader>lr",
        function()
          require("telescope.builtin").lsp_references()
        end,
        desc="Find References",
      },
      {
        "<leader>li",
        function()
          require("telescope.builtin").lsp_incoming_calls()
        end,
        desc="Find Incoming Calls",
      },
      {
        "<leader>lo",
        function()
          require("telescope.builtin").lsp_outgoing_calls()
        end,
        desc="Find Outgoing Calls",
      },
      {
        "<leader>ly",
        function()
          require("telescope.builtin").lsp_document_symbols()
        end,
        desc="Find Symbols",
      },
      {
        "<leader>lm",
        function()
          require("telescope.builtin").lsp_workspace_symbols()
        end,
        desc="Find Global Symbols",
      },
      {
        "<leader>ld",
        function()
          require("telescope.builtin").diagnostics({bufnr=0})
        end,
        desc="Find Warnings/Diagnostics",
      },
      {
        "<leader>lw",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc="Find Global Warnings/Diagnostics",
      },
      {
        "<leader>gs",
        function()
          require("telescope.builtin").git_status()
        end,
        desc="Git Status",
      },
      {
        "<leader>gl",
        function()
          require("telescope.builtin").git_commits()
        end,
        desc="Git Log",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    config = function()
      require("telescope").setup({
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
          },
          file_ignore_patterns = {
            ".git/",
          },
      })
    end,
  },
}
