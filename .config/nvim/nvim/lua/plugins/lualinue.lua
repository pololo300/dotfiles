return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    options = {
      theme = 'tokyonight',
    }
  end,
  specs = {
    {
      'rebelot/heirline.nvim',
      optional = true,
      opts = function(_, opts)
        opts.statusline = nil
      end,
    },
  },
}
