return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
      },
    }

    -- Enable format on save
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

    vim.api.nvim_create_autocmd('BufWritePre', {
      group = augroup,
      pattern = '*',
      callback = function()
        vim.lsp.buf.format { async = false }
      end,
    })
  end,
}
