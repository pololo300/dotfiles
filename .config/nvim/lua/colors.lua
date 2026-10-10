vim.pack.add({
	"https://github.com/zenbones-theme/zenbones.nvim",
	"https://github.com/vague2k/vague.nvim",
	"https://github.com/tribela/transparent.nvim",
	"https://github.com/catppuccin/nvim",
	"https://github.com/ellisonleao/gruvbox.nvim",
	"https://github.com/projekt0n/github-nvim-theme",
})

require("transparent").setup()

-- Apply the given OS appearance ("light" or "dark") to this nvim instance.
function _G.ApplyOsTheme(mode)
	if mode == "dark" then
		vim.o.background = "dark"
		vim.cmd.colorscheme("github_dark")
	else
		vim.o.background = "light"
		vim.cmd.colorscheme("github_light")
	end
end

-- theme-current.txt is written by ~/.config/kitty/theme-switch.sh and holds
-- either "light" or "dark", so a freshly started nvim matches the current
-- OS appearance even if it starts between switch events.
local theme_file = vim.fn.stdpath("config") .. "/theme-current.txt"
local mode = "light"
local f = io.open(theme_file, "r")
if f then
	local contents = f:read("*l")
	f:close()
	if contents == "dark" or contents == "light" then
		mode = contents
	end
end
_G.ApplyOsTheme(mode)

-- Expose an RPC socket so the external theme-switch script can update this
-- running instance live, the same way it does for kitty/tmux.
local sock_dir = "/tmp/nvim-theme-sockets"
vim.fn.mkdir(sock_dir, "p")
local sock = sock_dir .. "/" .. vim.fn.getpid() .. ".sock"
pcall(vim.fn.serverstart, sock)

vim.api.nvim_create_autocmd("VimLeavePre", {
	callback = function()
		pcall(os.remove, sock)
	end,
})
