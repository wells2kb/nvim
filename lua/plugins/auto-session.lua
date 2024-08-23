-- https://github.com/rmagatti/auto-session
return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      log_level = "error",
      auto_session_suppress_dirs = {
        "/",
        "/tmp/*",
        "~/",
        "~/Desktop/*",
        "~/Downloads/*",
        "~/Projects",
      },
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_sesison_use_git_branch = false,
      session_lens = {
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    })
  end,
  keys = {
    { "<leader>fs", function() require("auto-session.session-lens").search_session() end, desc = "Run Nearest" },
  },
}
