-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")
local Oil = require("oil")

local map = Util.safe_keymap_set

map("n", "<leader>pf", Util.telescope.telescope("find_files", { no_ignore = true }))
map("n", "<leader>ps", Util.telescope.telescope("live_grep", { no_ignore = true }))
map("n", "<leader>pc", Oil.open)
