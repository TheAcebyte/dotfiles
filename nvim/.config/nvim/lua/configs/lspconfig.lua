require("nvchad.configs.lspconfig").defaults()

-- add your LSP servers here
local servers = { "clangd", "cssls", "html", "ts_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
