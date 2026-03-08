return {
  'benlubas/molten-nvim',
  build = ':UpdateRemotePlugins',
  init = function() vim.g.molten_image_provider = 'image.nvim' end,
}
