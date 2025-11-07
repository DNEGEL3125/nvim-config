-- Find references
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", {
	desc = "Find references",
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
