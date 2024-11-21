vim.g.mapleader = " "

-- Misc.
vim.keymap.set("n", "<C-c>", "<ESC>")        -- Ctrl+C == Esc
vim.keymap.set("x", "<leader>p", "\"_dP")    -- Paste & Maintain Register
vim.keymap.set("", "q:", "<NOP>")            -- Useless
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]]) -- Seriously, quit terminal mode
vim.keymap.set("n", "<leader>X",             -- chmod +x
  "<CMD>!chmod +x %<CR>", { silent = true }
)
vim.keymap.set("n", "<leader>s",             -- Substitute word
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)
vim.keymap.set("v", "<leader>lf",            -- Insert newline
  [[:s/\%V/\r/]]
)
vim.keymap.set("n", "<leader>n", "<CMD>nohl<CR>")   -- No Highlight Search
vim.keymap.set("n", "<leader>q", "<CMD>bp|bd#<CR>") -- Delete Buffer, Keep Split

-- Move highlighted text up/down w/ shift JK
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor to Middle for PgUp/PgDown
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Cursor to Middle for Search Next/Previous
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Stay in Indent Mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Tab Through Tabs
vim.keymap.set({ "n", "i" }, "<C-TAB>",   ":tabnext<CR>")
vim.keymap.set({ "n", "i" }, "<C-S-TAB>", ":tabprevious<CR>")
vim.keymap.set("n", "<leader><TAB>", ":tabnew<CR>")
vim.keymap.set("n", "<leader><C-S-TAB>", ":tabm -1<CR>")
vim.keymap.set("n", "<leader><C-TAB>", ":tabm +1<CR>")

-- Resize Splits with Arrows
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Down>",  ":resize -2<CR>")
vim.keymap.set("n", "<C-Up>",    ":resize +2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Move Splits with Shift+Arrows
vim.keymap.set("n", "<S-Left>",  "<C-w><S-h>")
vim.keymap.set("n", "<S-Down>",  "<C-w><S-j>")
vim.keymap.set("n", "<S-Up>",    "<C-w><S-k>")
vim.keymap.set("n", "<S-Right>", "<C-w><S-l>")

-- Go to File At Line Number Under Cursor in Vertical Split
vim.keymap.set("n", "<C-W>gf",  "<C-w>v<C-w>wgF")
