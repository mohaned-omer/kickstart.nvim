vim.keymap.set('n', '<leader>mi', ':MoltenInit<CR>')
vim.keymap.set('n', '<leader>mr', ':MoltenEvaluateOperator<CR>')
vim.keymap.set('n', '<leader>ml', ':MoltenEvaluateLine<CR>')
vim.keymap.set('n', '<leader>mc', ':MoltenReevaluateCell<CR>')
vim.keymap.set('v', '<leader>mr', ':MoltenEvaluateVisual<CR>')
vim.keymap.set('v', '<leader>mr', ':<C-u>MoltenEvaluateVisual<CR>')

return {}
