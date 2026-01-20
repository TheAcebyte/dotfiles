require("nvchad.configs.lspconfig").defaults()

-- add your LSP servers here
local servers = { "clangd", "cssls", "html", "jdtls", "vtsls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
