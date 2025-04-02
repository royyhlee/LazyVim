-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>ve", ":e $MYVIMRC<cr>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>vs", ":source $MYVIMRC<cr>", { desc = "Open parent directory" })

vim.keymap.del("n", "<leader>l")

-- Bufferline
vim.keymap.del("n", "[b")
vim.keymap.del("n", "]b")
vim.keymap.set("n", "[b", "<cmd>BufferLineMovePrev<CR>")
vim.keymap.set("n", "]b", "<cmd>BufferLineMoveNext<CR>")
