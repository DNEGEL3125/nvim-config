require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		javascript = { "prettierd", "prettier", stop_after_first = true },
		cpp = { "clang_format" },
		c = { "clang_format" },
	},
	formatters = {
		clang_format = {
			command = "clang-format",
			args = '--style="{BasedOnStyle: webkit}"',
		},
	},
	format_on_save = function(bufnr)
		-- Define the list of languages for which you want to enable format-on-save
		local enabled_languages = {
			"javascript",
			"typescript",
			"lua",
			"rust",
			"go",
			"python",
		}

		-- Get the file type of the current file
		local filetype = vim.bo[bufnr].filetype

		-- Check if the current file type is in the `enabled_languages`
		if vim.tbl_contains(enabled_languages, filetype) then
			return { timeout_ms = 2000, lsp_fallback = true } -- Enable formatting
		else
			return false -- Disable formatting
		end
	end,
})
