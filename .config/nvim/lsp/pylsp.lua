---@type vim.lsp.Config
return {
	cmd = { 'pylsp' },
	filetypes = { 'python' },
	settings = {
		pylsp = {
			plugins = {
				ruff = {
					enabled = true,
					lint = true, -- always lint
					formatEnabled = true, -- Ruff can apply fixes if needed
					extendSelect = nil, -- do not override project.toml
					extendIgnore = nil, -- do not override project.toml
					lineLength = nil, -- use pyproject.toml
				},
				black = { enabled = false }, -- formatting
				isort = { enabled = false }, -- import sorting
				pycodestyle = { enabled = false },
				pyflakes = { enabled = true },
				mccabe = { enabled = false },
				jedi = {
					enabled = true,
				},
				jedi_symbols = {
					enabled = true,
					all_scopes = true,
				},
			},
		},
	},
}
