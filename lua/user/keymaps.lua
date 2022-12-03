-- Space as leader key
vim.g.mapleader = " "

-- Shortcuts
vim.keymap.set({"n", "x", "o"}, "<leader>h", "^")
vim.keymap.set({"n", "x", "o"}, "<leader>l", "g_")
vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")

-- Basic cllipboard interaction
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Delete text
vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>Lexplore<cr>')

-- Disable Arrows Keys
vim.keymap.set('n', '<UP>', '<Nop>')
vim.keymap.set('n', '<DOWN>', '<Nop>')
vim.keymap.set('n', '<LEFT>', '<Nop>')
vim.keymap.set('n', '<RIGHT>', '<Nop>')

vim.keymap.set('i', '<UP>', '<Nop>')
vim.keymap.set('i', '<DOWN>', '<Nop>')
vim.keymap.set('i', '<LEFT>', '<Nop>')
vim.keymap.set('i', '<RIGHT>', '<Nop>')

-- Disable escap to Normal mode
vim.keymap.set('i', '<ESC>', '<Nop>')
vim.keymap.set('i', '<C-c>', '<Nop>')

-- Keys to escap Insert mode
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('i', 'kj', '<ESC>')
