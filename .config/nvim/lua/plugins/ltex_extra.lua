return {
  "barreiroleo/ltex_extra.nvim",
  ft = { "markdown", "tex" },
  dependencies = { "neovim/nvim-lspconfig" },
  -- yes, you can use the opts field, just I'm showing the setup explicitly
  config = function()
    require("ltex_extra").setup {
      load_langs = { "en-US" },
      init_check = true,
      path = ".ltex", -- project root or current working directory
      log_level = "none",
      server_opts = nil,
    }
  end,
}
