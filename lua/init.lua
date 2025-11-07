require("config.lazy")
require("config.highlight")
require("config.nvim-tree")
require("config.statusline")
require("config.colorscheme")
require("config.lsp")
require("config.debug")
require("config.formatter")

-- Use `:Diag` to show warnings/errors
vim.api.nvim_create_user_command("Diag", function()
	vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
end, {})
