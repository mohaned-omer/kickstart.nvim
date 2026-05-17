return {
  {
    'sainnhe/gruvbox-material',
    lazy = false, -- Must load on startup for colorschemes
    priority = 1000, -- Load before other plugins
    config = function()
      -- Set options BEFORE the colorscheme command
      vim.g.gruvbox_material_background = 'Warm'
      vim.cmd.colorscheme 'gruvbox-material'
      local hid = function() vim.api.nvim_set_hl(0, 'Comment', { fg = '#707074', ctermfg = 245, bold = false, italic = false }) end
      hid()
      local show = function() vim.api.nvim_set_hl(0, 'Comment', { fg = '#b2b8b0', ctermfg = 245, bold = false, italic = false }) end
      vim.keymap.set({ 'n', 'v' }, '<leader>ch', hid, { desc = 'change comment color to be more hidden' })
      vim.keymap.set({ 'n', 'v' }, '<leader>cs', show, { desc = 'change comment color to be more visable' })
    end,
  },
}
