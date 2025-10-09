return {
  -- amongst your other plugins
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
    keys = {
      {
        '<leader>tv',
        '<cmd>ToggleTerm size=70 direction=vertical<CR>',
        desc = 'Vertical Terminal',
      },
      {
        '<leader>tf',
        '<cmd>ToggleTerm direction=float<CR>',
        desc = 'Floating Terminal',
      },
      {
        '<leader>th',
        '<Cmd>ToggleTerm size=10 direction=horizontal<CR>',
        desc = 'Horizontal Terminal',
      },
      {
        '<leader>ts',
        '<Cmd>ToggleTermSendVisualSelection<CR>',
        desc = 'Send selectd to Terminal',
        mode = 'v',
      },
    },
  },
}
