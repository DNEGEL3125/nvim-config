require("cyberdream").setup({
	-- Enable transparent background
	transparent = true,

	-- Enable italics comments
	italic_comments = false,

	-- Replace all fillchars with ' ' for the ultimate clean look
	hide_fillchars = false,

	-- Modern borderless telescope theme - also applies to fzf-lua
	borderless_telescope = true,

	-- Set terminal colors used in `:terminal`
	terminal_colors = true,

	-- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
	cache = false,
})
