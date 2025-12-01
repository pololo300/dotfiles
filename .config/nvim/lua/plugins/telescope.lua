return { -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-bibtex.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
        bibtex = {
          depth = 1,
          -- Depth for the *.bib file
          global_files = { '~/texmf/bibtex/bib/Zotero.bib' },
          -- Path to global bibliographies (placed outside of the project)
          search_keys = { 'author', 'year', 'title' },
          -- Define the search keys to use in the picker
          citation_format = '{{author}} ({{year}}), {{title}}.',
          -- Template for the formatted citation
          citation_trim_firstname = true,
          -- Only use initials for the authors first name
          citation_max_auth = 2,
          -- Max number of authors to write in the formatted citation
          -- following authors will be replaced by "et al."
          custom_formats = {
            { id = 'citet', cite_maker = '\\citet{%s}' },
          },
          -- Custom format for citation label
          format = 'citet',
          -- Format to use for citation label.
          -- Try to match the filetype by default, or use 'plain'
          context = true,
          -- Context awareness disabled by default
          context_fallback = true,
          -- Fallback to global/directory .bib files if context not found
          -- This setting has no effect if context = false
          wrap = false,
          -- Wrapping in the preview window is disabled by default
        },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
    pcall(require('telescope').load_extension, 'bibtex')

    -- See `:help telescope.builtin`
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help' })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Find Keymaps' })
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
    vim.keymap.set('n', '<leader>ft', builtin.colorscheme, { desc = 'Find Themes' })
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Find Word' })
    vim.keymap.set('n', '<leader>fW', function()
      require('telescope.builtin').live_grep {
        additional_args = function(args)
          return vim.list_extend(args, { '--hidden', '--no-ignore' })
        end,
      }
    end, { desc = 'Find words in all files' })
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Find Diagnostics' })
    vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = 'Find Resume' })
    vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = 'Find Recent Files ("." for repeat)' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Find existing buffers' })
  end,
}
