-- Rust
require('lspconfig').rust_analyzer.setup({
  on_attach = function(client, bufnr)
    -- You can add additional configuration here if needed
  end,
  -- Optionally, specify the path to `rust-analyzer` if it's not in PATH:
  -- cmd = { "/path/to/rust-analyzer" },
})
