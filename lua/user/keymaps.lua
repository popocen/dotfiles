local opts = { noremap=true, silent=true }

-- Space as leader key
vim.g.mapleader = " "

-- Shortcuts
vim.keymap.set({"n", "x", "o"}, "<leader>h", "^")
vim.keymap.set({"n", "x", "o"}, "<leader>l", "g_")
vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>", opts)

-- Basic cllipboard interaction
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Delete text
vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

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

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Bufferline
vim.keymap.set('n', '<S-l>', ':bnext<CR>')
vim.keymap.set('n', '<S-h>', ':bprevious<CR>')
