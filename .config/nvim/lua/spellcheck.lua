vim.pack.add({
	{ src = "https://github.com/barreiroleo/ltex_extra.nvim" },
})
-- Neovim 0.11+ style
vim.lsp.config.ltex = {
	cmd = { "ltex-ls" }, -- make sure ltex-ls is in PATH
	filetypes = { "markdown", "tex", "plaintex", "bib", "org", "rst" },
	on_attach = function()
		require("ltex_extra").reload()
	end,
	settings = {
		ltex = {
			language = "es",
		},
	},
}
if vim.lsp.enable then
	vim.lsp.enable("ltex")
end

require("ltex_extra").setup({
	load_langs = { "es-ES" }, -- en-US as default
	init_check = true,
	-- project root or current working directory
	path = vim.fn.expand("~") .. "/.local/share/ltex",
	log_level = "none",
	server_opts = nil,
})
