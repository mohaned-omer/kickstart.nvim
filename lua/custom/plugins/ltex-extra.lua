return {
  'barreiroleo/ltex_extra.nvim',
  ft = { 'tex', 'markdown', 'bib' },
  config = function()
    -- We use an autocommand to wait until the server is fully connected
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == 'ltex' then
          -- Safely schedule the setup so there are no race conditions
          vim.schedule(function()
            require('ltex_extra').setup {
              load_langs = { 'en-US' },
              init_check = true,
              path = '.ltex', -- Your offline project dictionary
            }
          end)
        end
      end,
    })
  end,
}
