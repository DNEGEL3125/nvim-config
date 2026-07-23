local M = {
	"nvim-treesitter/nvim-treesitter",
	branch = "main", -- 關鍵：從 master 改為 main
	build = ":TSUpdate",
	--	build = function()
	--		require("nvim-treesitter.install").update({ with_sync = true })()
	--	end,
	config = function()
		require("nvim-treesitter").setup({
			-- Add a language of your choice
			ensure_installed = { "cpp", "python", "lua", "java", "javascript", "go", "rust" },
			sync_install = false,
			ignore_install = { "" }, -- List of parsers to ignore installing
			highlight = {
				enable = true, -- false will disable the whole extension
				disable = { "" }, -- list of language that will be disabled
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true, disable = { "yaml" } },
			rainbow = {
				enable = true,
				-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
				extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
				max_file_lines = nil, -- Do not enable for files with more than n lines, int
				-- colors = {}, -- table of hex strings
				-- termcolors = {} -- table of colour name strings
			},
		})
	end,
}

return { M }
