-- Find references
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", {
	desc = "Find references",
})
-- Find buffer
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {
	desc = "Find buffer",
})
-- Find files
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope fd<cr>", {
	desc = "Find files",
})
-- Go to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
	noremap = true,
	silent = true,
	desc = "Go to definition",
})
-- Rename the symbol under cursor.
vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, {
	desc = "[R]e[n]ame",
})
