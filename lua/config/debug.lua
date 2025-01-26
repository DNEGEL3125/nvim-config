local dap = require("dap")
-- local dapui = require('dapui')
--
-- dapui.setup()

-- Automatically open/close the UI when debugging starts/stops
-- dap.listeners.after.event_initialized['dapui_config'] = function()
--   dapui.open()
-- end
-- dap.listeners.before.event_terminated['dapui_config'] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited['dapui_config'] = function()
--   dapui.close()
-- end

-- keybindings
vim.keymap.set("n", "<F5>", dap.continue, { desc = "Start/Continue debugging" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<Leader>dc", dap.clear_breakpoints, { desc = "Clear all breakpoints" })
vim.keymap.set("n", "<Leader>dr", dap.repl.open, { desc = "Open REPL" })
vim.keymap.set("n", "<Leader>dl", function()
	dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end, { desc = "Set log point" })

dap.defaults.fallback.external_terminal = {
	command = "/opt/homebrew/bin/kitty",
	args = {},
}

dap.adapters.lldb = {
	type = "executable",
	command = "/Library/Developer/CommandLineTools/usr/bin/lldb-dap", -- Path to lldb
	name = "lldb",
}

dap.configurations.c = {
	{
		name = "Launch",
		type = "lldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
		--        runInTerminal = true, -- Run in an external terminal to enable input
		console = "integratedTerminal",
	},
}
