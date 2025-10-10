return {
  'barreiroleo/ltex_extra.nvim',
  ft = { 'markdown', 'tex' },
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('ltex_extra').setup {
      -- optional ltex_extra options
      load_langs = { 'en-US' }, -- languages to load dictionaries for
      path = vim.fn.stdpath 'config' .. '/spell', -- path to store dictionaries
      -- optional: table of filetypes to spellcheck
      filetypes = { 'markdown', 'tex' },

      -- now provide the LSP config
      server_opts = {
        settings = {
          ltex = {
            language = 'en-US',
          },
        },
      },
    }
  end,
}
