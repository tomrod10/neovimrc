vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- These two allow to move highlighted text up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Save & Save and Quit
vim.keymap.set("n", "<leader>w", ":update<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true })

-- Appends line below to end of line where cursor is without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- The two below jump half page up/down while keeping cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- The two below keeps cursor centered while searching for terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allows to cut and paste without losing our copies term in the buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- Allows to copy from nvim to device clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Something about deleting the clipboard buffer
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- Prevents me from going to the worst place in the universe
vim.keymap.set("n", "Q", "<nop>")

-- These two to move between next and previous quickfix list item
vim.keymap.set("n", "<leader>;", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>h", "<cmd>cprev<CR>zz")

-- Replaces word cursor is on with whatever I type
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Creates the file I'm in an executable
vim.keymap.set("n", "<leader>s", "<cmd>!chmod +x %<CR>", { silent = true })
