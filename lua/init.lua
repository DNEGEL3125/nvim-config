require("config.lazy")
require("config.highlight")
require("config.nvim-tree")
require("config.statusline")
require("config.colorscheme")
require("config.lsp")
require("config.telescope")
require("config.debug")
require("config.formatter")
require("config.cmake-tools")

-- Use `:Diag` to show warnings/errors
vim.api.nvim_create_user_command("Diag", function()
	vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
end, {})

-- Go to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to definition" })

vim.diagnostic.config({ virtual_lines = true })
