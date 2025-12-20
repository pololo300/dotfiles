return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --
  {
    'tribela/transparent.nvim',
    event = 'VimEnter',
    config = true,
  },

  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'morhetz/gruvbox',
    priority = 1000,
  },
  {
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },

  {
    'olimorris/onedarkpro.nvim',
    priority = 1000,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'
    end,
  },
}
