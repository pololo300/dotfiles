vim.pack.add({
	{ src = "https://github.com/barreiroleo/ltex_extra.nvim" },
})

-- Neovim 0.11+ style
vim.lsp.config.ltex = {
	cmd = { vim.fn.stdpath("data") .. "/mason/bin/ltex-ls" },
	filetypes = { "markdown", "tex", "plaintex", "bib", "org", "rst" },
	on_attach = function(client, bufnr)
		if client.name ~= "ltex" then
			return
		end
		require("ltex_extra").setup({
			load_langs = { "es-ES" }, -- en-US as default
			init_check = true,
			-- project root or current working directory
			path = vim.fn.expand("~") .. "/.local/share/ltex",
			log_level = "none",
			server_opts = nil,
		})
	end,
	settings = {
		ltex = {
			language = "es",
			dictionary = {
				["es-ES"] = {},
			},
			disabledRules = {
				["es-ES"] = {},
			},
			hiddenFalsePositives = {
				["es-ES"] = {},
			},
		},
	},
}
if vim.lsp.enable then
	vim.lsp.enable("ltex")
end
