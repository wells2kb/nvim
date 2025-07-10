vim.g.mapleader = " "

-- Ctrl+C == esc
vim.keymap.set("n", "<C-c>", "<ESC>")

-- Paste & maintain register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Seriously, quit terminal mode
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]])

-- chmod +x
vim.keymap.set("n", "<leader>X",
  "<CMD>!chmod +x %<CR>", { silent = true }
)

-- Substitute word
vim.keymap.set("n", "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

-- Insert newline
vim.keymap.set("v", "<leader>lf",
  [[:s/\%V/\r/]]
)

-- No highlight search
vim.keymap.set("n", "<leader>n", "<CMD>nohl<CR>")

-- Delete buffer, keep split
vim.keymap.set("n", "<leader>q", "<CMD>bp|bd#<CR>")

-- Cursor to middle for pgup/pgdown
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Cursor to middle for search next/previous
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Jump splits with arrows
vim.keymap.set("n", "<S-Left>",  "<C-w><Left>")
vim.keymap.set("n", "<S-Down>",  "<C-w><Down>")
vim.keymap.set("n", "<S-Up>",    "<C-w><Up>")
vim.keymap.set("n", "<S-Right>", "<C-w><Right>")

-- Resize splits with arrows
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Down>",  ":resize -2<CR>")
vim.keymap.set("n", "<C-Up>",    ":resize +2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Move splits with arrows
vim.keymap.set("n", "<C-S-Left>",  "<C-w><S-h>")
vim.keymap.set("n", "<C-S-Down>",  "<C-w><S-j>")
vim.keymap.set("n", "<C-S-Up>",    "<C-w><S-k>")
vim.keymap.set("n", "<C-S-Right>", "<C-w><S-l>")

-- Go to file at line number
vim.keymap.set("n", "gf",  "gF")

-- Go to file at line number under cursor in vertical split
vim.keymap.set("n", "gF",  "<C-w>v<C-w>wgF")

-- Surround visual selection
vim.keymap.set("v", "s ",  "c <C-r>\" <C-c>")
vim.keymap.set("v", "s(",  "c(<C-r>\")<C-c>")
vim.keymap.set("v", "s-",  "c-<C-r>\"-<C-c>")
vim.keymap.set("v", "s<",  "c<<C-r>\"><C-c>")
vim.keymap.set("v", "s[",  "c[<C-r>\"]<C-c>")
vim.keymap.set("v", "s\"",  "c\"<C-r>\"\"<C-c>")
vim.keymap.set("v", "s\'",  "c\'<C-r>\"\'<C-c>")
vim.keymap.set("v", "s_",  "c_<C-r>\"_<C-c>")
vim.keymap.set("v", "s`",  "c`<C-r>\"`<C-c>")
vim.keymap.set("v", "s{",  "c{<C-r>\"}<C-c>")

-- Don't grab the newline in visual
vim.keymap.set("v", "$",  "<End><Left>")

-- Jump to paragraph start backwards
local jump_to_paragraph_start_backwards = function()
  local paragraph_start = vim.fn.line("'{")
  if vim.fn.line(".") == (paragraph_start + 1) then
    if paragraph_start == 1 then
      vim.fn.cursor(1, 1)
      return
    else
      vim.fn.cursor(paragraph_start - 1, 1)
    end
  end

  paragraph_start = vim.fn.line("'{")
  if paragraph_start == 1 and vim.fn.getline("'{") ~= "" then
    vim.fn.cursor(1, 1)
  else
    vim.fn.cursor(paragraph_start + 1, 1)
  end

  vim.fn.feedkeys("^")
end
vim.keymap.set({"n", "v"}, "(", jump_to_paragraph_start_backwards)

-- Jump to paragraph start forwards
local jump_to_paragraph_start_forwards = function()
  if vim.fn.line("'}") ~= vim.fn.line("$") then
    vim.fn.cursor(vim.fn.line("'{"), 1)
    vim.fn.cursor(vim.fn.line("'}"), 1)
    vim.fn.cursor(vim.fn.line("')"), 1)
    vim.fn.feedkeys("^")
  else
    vim.fn.cursor(vim.fn.line("'}"), 1)
    vim.fn.feedkeys("$")
  end
end
vim.keymap.set({"n", "v"}, ")", jump_to_paragraph_start_forwards)

-- TODO doesn't work outside of a paragraph
-- Jump to paragraph end backwards
local jump_to_paragraph_end_backwards = function()
  if vim.fn.line("'{") ~= vim.fn.line("1") then
    vim.fn.cursor(vim.fn.line("'{") - 1, 1)
    vim.fn.cursor(vim.fn.line("'}") - 1, 1)
    vim.fn.feedkeys("^")
  end
end
vim.keymap.set({"n", "v"}, "[)", jump_to_paragraph_end_backwards)

-- Jump to paragraph end forwards
local jump_to_paragraph_end_forwards = function()
  if vim.fn.line(".") == (vim.fn.line("'}") - 1) then
    vim.fn.cursor(vim.fn.line(".") + 1, 1)
  end

  local paragraph_end = vim.fn.line("'}")
  if paragraph_end == vim.fn.line("$") then
    vim.fn.cursor(vim.fn.line("$"), 1)
  else
    vim.fn.cursor(paragraph_end - 1, 1)
  end

  vim.fn.feedkeys("^")
end
vim.keymap.set({"n", "v"}, "])", jump_to_paragraph_end_forwards)

-- TODO make jump bettween indents make sense
local jump_to_indentation_end = function()
  local _, col = vim.fn.getline("."):find("^ +")
  local line = vim.fn.line(".")

  if col then
    local next_line_in_indent = function(line, col)
      return vim.fn.getline(line + 1):sub(col, col) == " "
    end

    if next_line_in_indent(line, col) then
      line = line + 1
      while next_line_in_indent(line, col)
        do line = line + 1
      end
    else
      line = line + 1
    end

    vim.fn.cursor(line, col + 1)
  else
    jump_to_paragraph_start_forwards()
  end
end
vim.keymap.set({"n", "v"}, "]i", jump_to_indentation_end)

-- TODO make jump bettween indents make sense
local jump_to_indentation_start = function()
  local _, col = vim.fn.getline("."):find("^ +")
  local line = vim.fn.line(".")

  if col then
    local prev_line_in_indent = function(line, col)
      return vim.fn.getline(line - 1):sub(col, col) == " "
    end

    if prev_line_in_indent(line, col) then
      line = line - 1
      while prev_line_in_indent(line, col)
        do line = line - 1
      end
    else
      line = line - 1
    end

    vim.fn.cursor(line, col + 1)
  else
    jump_to_paragraph_end_backwards()
  end
end
vim.keymap.set({"n", "v"}, "[i", jump_to_indentation_start)
