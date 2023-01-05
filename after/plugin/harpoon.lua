local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- Keymaps for first seven buffers
vim.keymap.set("n", "<C-y>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-x>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-c>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-v>", function() ui.nav_file(4) end)
vim.keymap.set("n", "<C-b>", function() ui.nav_file(5) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(6) end)
vim.keymap.set("n", "<C-m>", function() ui.nav_file(7) end)

-- Keymaps for terminal
vim.keymap.set("n", "<C-w>" , function() term.gotoTerminal(1) end)
