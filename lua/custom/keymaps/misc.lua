-- Save with Ctrl + S using 'update'
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<cmd>up<cr>', { desc = 'Update file' })

-- Normal mode: Move current line
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })

-- Visual mode: Move selected block
vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move selection up' })
