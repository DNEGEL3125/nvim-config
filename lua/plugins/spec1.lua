return {
	-- Alpha (Dashboard)
	{
		"goolord/alpha-nvim",
		lazy = true,
	},

	-- Hop (Better Navigation)
	{
		"phaazon/hop.nvim",
		lazy = true,
	},

	-- Telescope (Fuzzy Finder)
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
	},
}
