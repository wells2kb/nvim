-- https://github.com/unblevable/quick-scope
return {
  "unblevable/quick-scope",
  config = function ()
    vim.g.qs_highlight_on_keys = {"f", "F", "t", "T"}
    vim.api.nvim_set_hl(0, "QuickScopePrimary", {underline=true, sp="#9ef01a"})
    vim.api.nvim_set_hl(0, "QuickScopeSecondary", {fg="NONE"})
  end
}
