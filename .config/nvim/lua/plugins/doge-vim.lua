return {
  'kkoomen/vim-doge',
  build = function()
    vim.cmd 'call doge#install()'
  end,
  lazy = false,

  init = function()
    vim.g.doge_enable_mappings = 0
    vim.g.doge_doc_standard_python = 'google'
    vim.g.doge_python_settings = {
      single_quotes = 0,
      omit_redundant_param_types = 0,
    }
  end,

  config = function()
    vim.keymap.set('n', '<leader>a', '<Plug>(doge-generate)', { desc = 'Generate annotation' })
  end,
}
