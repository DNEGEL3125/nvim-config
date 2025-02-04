-- Ensure nvim-lspconfig is required
local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
require("mason").setup()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Rename the variable under your cursor.
-- Most Language Servers support renaming across files, etc.
vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })

-- Configure pyright
mason_lspconfig.setup({
	ensure_installed = { "pyright" },
})
lspconfig.pyright.setup({
	capabilities = capabilities,
})

-- Configure clangd
lspconfig.clangd.setup({
	cmd = { "clangd" }, -- Adjust the path if clangd isn't in your PATH
	filetypes = { "c", "cpp", "objc", "objcpp" },
	root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
	capabilities = capabilities, -- if using nvim-cmp
})

-- Configure rust-analyzer
lspconfig.rust_analyzer.setup({
	on_attach = function(client, bufnr)
		-- You can add additional configuration here if needed
	end,
	capabilities = capabilities,
})
