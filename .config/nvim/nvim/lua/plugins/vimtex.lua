return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    -- vim.g.vimtex_syntax_enabled = 1 -- Let Treesitter handle syntax highlighting
    vim.g.vimtex_complete_enabled = 1 -- Enable VimTeX completion
    vim.g.vimtex_imaps_enabled = 1
    vim.g.vimtex_compiler_progname = 'nvr'
  end,
}
