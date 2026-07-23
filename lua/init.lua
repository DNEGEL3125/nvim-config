-- Netrw is Neovim's built-in file explorer
-- Disable it to avoid conflicts
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.nvim-tree")
require("config.statusline")
require("config.lsp")
require("config.debug")
require("config.formatter")
require("config.keymaps")

-- Use `:Diag` to show warnings/errors
vim.api.nvim_create_user_command("Diag", function()
	vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
end, {})

-- Use `:Format` to format code
vim.api.nvim_create_user_command("Format", function(args)
	require("conform").format({ bufnr = args.buf })
end, {})
