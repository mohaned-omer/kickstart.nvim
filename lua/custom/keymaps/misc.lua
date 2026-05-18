-- Change PWD to the current file's directory
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { desc = 'CD to current file' })

-- Buffer navigation
-- vim.keymap.set({ 'n', 'v' }, '<leader>t', '<cmd>tabnew<cr>', { desc = 'Make a new tab' })
vim.keymap.set({ 'n', 'v' }, '<tab>', '<cmd>bn<cr>', { desc = 'Move to the next Buffer' })
vim.keymap.set({ 'n', 'v' }, '<s-tab>', '<cmd>bp<cr>', { desc = 'Move to the previous Buffer' })
vim.keymap.set({ 'n', 'v' }, '<leader>w', '<cmd>bd<cr>', { desc = 'Close the current Buffer' })
-- Save with Ctrl + S using 'update'
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<cmd>up<cr>', { desc = 'Update file' })

-- Normal mode: Move current line
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })

-- Visual mode: Move selected block
vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move selection up' })

vim.keymap.set('n', '<leader>rp', ':!python3 %<cr>', { desc = '[R]un current file with py' })
vim.keymap.set('n', '<leader>rcc', ':!clang++ % -std=c++20 -o out && ./out', { desc = '[R]un current file with clang++' })
vim.keymap.set('n', '<leader>rcg', ':!g++ % -std=c++20 -o out && ./out', { desc = '[R]un current file with g++' })

return {}
