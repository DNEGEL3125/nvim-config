-- Ensure nvim-lspconfig is required
local lspconfig = require('lspconfig')

-- Configure clangd
lspconfig.clangd.setup({
  cmd = { "clangd" }, -- Adjust the path if clangd isn't in your PATH
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- if using nvim-cmp
})

-- Rust
lspconfig.rust_analyzer.setup({
  on_attach = function(client, bufnr)
    -- You can add additional configuration here if needed
  end,
  -- Optionally, specify the path to `rust-analyzer` if it's not in PATH:
  -- cmd = { "/path/to/rust-analyzer" },
})
