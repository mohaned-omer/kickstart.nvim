return {
  'kevinhwang91/nvim-bqf',
  ft = 'qf', -- Lazy loads specifically when a quickfix engine triggers
  opts = {
    auto_enable = true,
    preview = {
      win_height = 12,
      win_vheight = 12,
      delay_syntax = 80,
      border = 'rounded', -- Gives your floating frame clean, rounded visual corners
      show_title = false,
    },
    func_map = {
      vsplit = 'v',
      ptogglemode = 'z,',
      stoggleup = '',
    },
  },
}
