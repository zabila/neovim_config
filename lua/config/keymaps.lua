-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--  Esc -> jj keys
keymap.set("i", "jj", "<Esc>", opts)
--Slecet all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Plugins:
--Symbols Outline
keymap.set("n", "<leader>uS", ":SymbolsOutline<CR>", { desc = "SymbolsOutline Toggle" })

--ChatGPT
keymap.set("n", "<leader>Gg", "<cmd>ChatGPT<CR>", { desc = "ChatGPT Toggle" })
keymap.set("n", "<leader>Ge", "<cmd>ChatGPTEditWithInstruction<CR>", { desc = "ChatGPT Edit with instruction" })
