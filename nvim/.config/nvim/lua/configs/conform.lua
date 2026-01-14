local options = {
  -- add your formatters here
  -- NvChad falls back to LSP formatting if configuration is incorrect or missing
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    lua = { "stylua" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
  },

  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
