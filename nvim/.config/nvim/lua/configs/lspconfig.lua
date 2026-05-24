require("nvchad.configs.lspconfig").defaults()

-- add your LSP servers here
local servers = {
  "arduino_language_server",
  "asm_lsp",
  "bashls",
  "clangd",
  "cssls",
  "html",
  "jdtls",
  "jsonls",
  "pyright",
  "vtsls",
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
