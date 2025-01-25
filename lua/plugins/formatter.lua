return {
	{
		"stevearc/conform.nvim",
		opts = {},
		keys = {
			{
				"<leader>fb",
				function()
					require("conform").format({ async = true, lsp_format = "fallback" })
				end,
				mode = "",
				desc = "[F]ormat [b]uffer",
			},
		},
	},
}
