vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted blocks up/down with capital JK
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste the buffer over highlighted text, without replacing buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- allow yanking to system clipboard (can use both)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register, so the yank register is unaffected
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- disable recording (bc it's annoying? maybe i like it?!)
--vim.keymap.set("n", "Q", "<nop>")

-- switching sessions? seems powerful, but not now
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick Fix. learn about it.
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- start global replace for the word you're on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod+x the current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- shortcut to source the file
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)
