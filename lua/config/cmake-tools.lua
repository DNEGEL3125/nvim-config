require("cmake-tools").setup({
	cmake_dap_configuration = { -- debug settings for cmake
		name = "cpp",
		type = "lldb",
		request = "launch",
		stopOnEntry = false,
		runInTerminal = false,
		console = "integratedTerminal",
	},
})
