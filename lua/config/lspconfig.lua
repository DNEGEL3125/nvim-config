-- Ensure nvim-lspconfig is required
local lspconfig = require('lspconfig')

-- Enable the following if you want to use the capabilities of language server
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local java_home = os.getenv("JAVA_HOME")

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

-- Java

lspconfig.jdtls.setup({
--   cmd = {
--     "java",
--     "-Declipse.application=org.eclipse.jdt.ls.core.id1",
--     "-Dosgi.bundles.defaultStartLevel=4",
--     "-Declipse.product=org.eclipse.jdt.ls.core.product",
--     "-Dlog.protocol=true",
--     "-Dlog.level=ALL",
--     "-Xms1g",
--     "--add-modules=ALL-SYSTEM",
--     "--add-opens", "java.base/java.util=ALL-UNNAMED",
--     "--add-opens", "java.base/java.lang=ALL-UNNAMED",
--     "-jar", launcher_jar,
--     "-configuration", jdtls_home .. "/config_linux",
--     "-data", vim.fn.getcwd() .. "/.jdtls-workspace",
--   },
  root_dir = require("lspconfig").util.root_pattern("pom.xml", "gradle.build", ".git"),
  settings = {
    java = {
      home = java_home, -- Set this to your JDK home directory
      -- configuration for signature help
      signatureHelp = { enabled = true },
      -- configuration for organize imports on save
      saveActions = { organizeImports = true },
      -- configuration for compiler
      compiler = {
        complianceLevel = "17", -- Set your Java version
      },
    },
  },
})
