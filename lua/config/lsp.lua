local mason_lspconfig = require("mason-lspconfig")
require("mason").setup()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Configure pyright
mason_lspconfig.setup({
	ensure_installed = { "pyright" },
})
vim.lsp.config("pyright", {
	capabilities = capabilities,
})

-- Configure clangd
vim.lsp.config("clangd", {
	cmd = { "clangd" }, -- Adjust the path if clangd isn't in your PATH
	filetypes = { "c", "cpp", "objc", "objcpp" },
	capabilities = capabilities, -- if using nvim-cmp
})

-- Configure rust-analyzer
vim.lsp.config("rust_analyzer", {
	on_attach = function(client, bufnr)
		-- You can add additional configuration here if needed
	end,
	capabilities = capabilities,
	settings = {
		["rust-analyzer"] = {
			-- Enable automatic linting using Clippy when saving a Rust file
			checkOnSave = {
				command = "clippy",
			},
		},
	},
})

-- Configure lua-language-server
vim.lsp.enable("lua_ls")

-- Configure typescript-language-server
vim.lsp.config("ts_ls", {
	capabilities = capabilities,
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = "/Users/dnegel3125/Library/pnpm/global/5/node_modules/@vue/typescript-plugin/",
				languages = { "vue" },
			},
		},
	},
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})
vim.lsp.enable("ts_ls")

-- Configure gopls (Go language)
vim.lsp.enable("gopls")

-- Configure vue-language-server
vim.lsp.enable("vue_ls")
