vim.pack.add({
        { src = 'https://github.com/Saghen/blink.cmp', version = vim.version.range'*' }
})

require("blink.cmp").setup({
  fuzzy = { implementation = "lua" },
  signature = { enabled = true },
	keymap = {
		["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-e>"] = { "hide", "fallback" },
		["<cr>"] = { "select_and_accept", "fallback" },
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<C-p>"] = { "select_prev", "fallback_to_mappings" },
		["<C-n>"] = { "select_next", "fallback_to_mappings" },
		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },
		["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		preset = "default",
	},

	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},

	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
	},

	cmdline = {
		enabled = true,
		keymap = {
			preset = "inherit",
			["<CR>"] = { "accept_and_enter", "fallback" },
		},
		completion = {
			menu = {
				auto_show = function(_)
					-- only auto-show for ':' commands, not '/' or '?' search
					return vim.fn.getcmdtype() == ":"
				end,
			},
			list = { selection = { preselect = false, auto_insert = true } },
			ghost_text = { enabled = true },
		},
	},

	sources = {
		default = { "lsp", "path" },
	},
})
