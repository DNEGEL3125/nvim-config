require("config.lazy")
require "config.treesitter-config" -- Added this line to initial file
require "config.nvim-tree-config"
require "config.md-preview"
require "config.statusline"
require "config.colorscheme"
require "config.lspconfig"
require "config.autoclose"

-- Use `:Diag` to show warnings/errors
vim.api.nvim_create_user_command('Diag', function()
    vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
end, {})

-- Use `K` to show type info
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- Go to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
