vim.g.mapleader = " "

vim.keymap.set("v", "<up>",  "<esc><up><S-V><esc>v")
vim.keymap.set("v", "<down>",  "<esc><down><S-V><esc>v")
vim.keymap.set("v", "<left>",  "<esc><left><S-V><esc>v")
vim.keymap.set("v", "<right>",  "<esc><right><S-V><esc>v")

vim.keymap.set("v", "<S-CR>",  "0<S-V><CR><S-V>") -- why not work
vim.keymap.set("v", "<CR>",  "<esc>0v$o")
vim.keymap.set("v", "<C-CR>",  "0<down>$o")

vim.keymap.set("v", "tw",  "<esc>veo")
vim.keymap.set("v", "tew",  "<esc>vw<left>o")
vim.keymap.set("v", "Tw",  "<esc>vb")
vim.keymap.set("v", "Tew",  "<esc>vge<right>")
vim.keymap.set("v", "w",  "<esc>wvaw<esc>wbviwo")
vim.keymap.set("v", "b",  "<esc>bvawo<esc>wbviwo")
vim.keymap.set("v", "cw",  "<esc>vaw<esc>wbviwo")
vim.keymap.set("v", "ew",  "<esc>vaw<esc>wbvawo")

vim.keymap.set("v", "z", "<nop>") -- remove all fold stuff
vim.keymap.set("v", "Z", "<nop>") -- remove all fold stuff
vim.keymap.set("v", "z",  "<esc>{}<down>vap<esc>{<down>vipv$o")
vim.keymap.set("v", "tz",  "<S-V>}<up><esc>gvv$o")
vim.keymap.set("v", "Z",  "<esc>}{<up>vapo<esc>vipv$o")
vim.keymap.set("v", "cz",  "<esc>vap<esc>{<down>vipv$o")

vim.keymap.set("v", "\"", "<nop>") -- remove stuff
vim.keymap.set("v", "\"",  "<esc>f\";vi\"o")
vim.keymap.set("v", "c\"",  "<esc>f\"vi\"o")
vim.keymap.set("v", "e\"",  "<esc>f\"va\"o")
vim.keymap.set("v", "C\"",  "<esc>F\";vi\"o")
vim.keymap.set("v", "H\"", "<esc>`>a\"<esc>`<i\"<esc>vf\"o") -- 10x dont use qwert

vim.keymap.set("v", "(", "<nop>") -- remove stuff
vim.keymap.set("v", ")", "<nop>") -- remove stuff
vim.keymap.set("v", "(",  "<esc>F(vi(o")
vim.keymap.set("v", ")",  "<esc>f(vi)o")
vim.keymap.set("v", "c(",  "<esc>vi(o")
vim.keymap.set("v", "c)",  "<esc>vi(o")
vim.keymap.set("v", "e(",  "<esc>va(o")
vim.keymap.set("v", "e)",  "<esc>va(o")

vim.keymap.set("v", "{", "<nop>") -- remove stuff
vim.keymap.set("v", "}", "<nop>") -- remove stuff
vim.keymap.set("v", "{",  "<esc>F{vi{o")
vim.keymap.set("v", "}",  "<esc>f{vi{o")
vim.keymap.set("v", "c{",  "<esc>vi{o")
vim.keymap.set("v", "c}",  "<esc>vi{o")
vim.keymap.set("v", "e{",  "<esc>va{o")
vim.keymap.set("v", "e}",  "<esc>va{o")

vim.keymap.set("v", "[", "<nop>") -- remove stuff
vim.keymap.set("v", "]", "<nop>") -- remove stuff
vim.keymap.set("v", "[",  "<esc>F[vi[o")
vim.keymap.set("v", "]",  "<esc>f[vi[o")
vim.keymap.set("v", "c[",  "<esc>vi[o")
vim.keymap.set("v", "c]",  "<esc>vi[o")
vim.keymap.set("v", "e[",  "<esc>va[o")
vim.keymap.set("v", "e]",  "<esc>va[o")

vim.keymap.set("v", "<", "<nop>") -- remove stuff
vim.keymap.set("v", ">", "<nop>") -- remove stuff
vim.keymap.set("v", "<",  "<esc>F<vi<o")
vim.keymap.set("v", ">",  "<esc>f<vi<o")
vim.keymap.set("v", "c<",  "<esc>vi<o")
vim.keymap.set("v", "c>",  "<esc>vi<o")
vim.keymap.set("v", "e<",  "<esc>va<o")
vim.keymap.set("v", "e>",  "<esc>va<o")

vim.keymap.set("v", "i",  "<nop>")
vim.keymap.set("v", "a",  "<nop>")
vim.keymap.set("v", "i",  "<esc>i")
vim.keymap.set("v", "I",  "`<<esc>i")
vim.keymap.set("v", "a",  "o<esc>a")
vim.keymap.set("v", "A",  "`><esc>a")

-- stay in visual
vim.keymap.set("v", "u", "<esc>ugv")
vim.keymap.set("v", "U", "<esc><C-r>gv")
vim.keymap.set("v", "p",  "<esc>v`>o`>p`[Pgvo") -- this leaves a shit selection and no work visual line fix plzzzz
vim.keymap.set("v", "P",  "<esc>P`]v`[")
vim.keymap.set("v", "y",  "ygv")
vim.keymap.set("v", "Y",  "`>o`<ygv")
vim.keymap.set("v", "d",  "dv")
vim.keymap.set("v", "D",  "`>o`<dv")
vim.keymap.set("v", "m",  "s")
vim.keymap.set("v", "M",  "`>o`<s")
vim.keymap.set("v", "~",  "~gv")
vim.keymap.set("v", "f", "<esc>vf")
vim.keymap.set("v", "F", "<esc>vF")

vim.keymap.set("v", ":", ":<del><del><del><del><del>")

vim.keymap.set("v", "r", "pgvo")
vim.keymap.set("v", "R", "r")

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- this should probably set the around/big to grab the newline
vim.keymap.set("v", "$", "<esc>v$<left>o")
vim.keymap.set("v", "^", "<esc>v^<left>o")

vim.keymap.set("v", "o", "<esc>o<esc>v")
vim.keymap.set("v", "o", "<esc>o<esc>v")

vim.keymap.set("v", "L", "^<esc>v$<left>o") -- 10x dont use qwert

vim.keymap.set("v", "<esc>", "<esc>v")
vim.keymap.set("i", "<esc>", "<esc>v")
vim.keymap.set("v", "c", "<nop>")
vim.keymap.set("v", "C", "<nop>")
