-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>H", function()
  vim.cmd("Alpha")
end, { noremap = true, silent = true, desc = "Home Screen" })

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true, desc = "Previous Buffer" })
vim.keymap.set("v", "<Tab>", ":bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
vim.keymap.set("v", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true, desc = "Previous Buffer" })
