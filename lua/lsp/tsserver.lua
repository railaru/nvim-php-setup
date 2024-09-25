require 'lspconfig'.tsserver.setup {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx"
  },
  root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
  settings = {
    documentFormatting = false
  },
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = {
        spacing = 0,
        prefix = "",
        signs = true,
        underline = true
      },
      signs = true,
      underline = true,
      update_in_insert = true
    })
  },
  on_attach = function(client, bufnr)
    -- Disable tsserver formatting if you want to use prettier
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
    
    -- ... (other on_attach code)
    
    -- Enable formatting on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
}
