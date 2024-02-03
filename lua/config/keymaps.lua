-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>fs", ":w<cr>", { desc = "Write" })

-- Plugins - Focus
map("n", "<leader>wj", "<cmd>FocusSplitDown<cr>", { desc = "FocusSplitDown" })
map("n", "<leader>wk", "<cmd>FocusSplitUp<cr>", { desc = "FocusSplitUp" })
map("n", "<leader>wh", "<cmd>FocusSplitLeft<cr>", { desc = "FocusSplitLeft" })
map("n", "<leader>wl", "<cmd>FocusSplitRight<cr>", { desc = "FocusSplitRight" })
