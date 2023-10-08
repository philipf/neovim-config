-- set leader key to space, do this before lazy package manager setup
vim.g.mapleader = " "

local km = vim.keymap

--general
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
km.set("n", "x", '"_x') -- delete a single char without copying into register

-- increment/decrement number in Normal mode
km.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
km.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

km.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
km.set("n", "<leader>sh", "<C-w>s", { desc = "split window hortizontally" })
km.set("n", "<leader>se", "<C-w>=", { desc = "make split windows equal width" })
km.set("n", "<leader>sx", ":close<CR>", { desc = "close current split window" })
