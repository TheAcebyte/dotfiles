require "nvchad.mappings"

local map = vim.keymap.set

map("n", "K", function()
  vim.lsp.buf.hover {
    border = "single",
    max_width = 80,
    max_height = 20,
    focusable = true,
  }
end, { desc = "LSP Hover Docs" })

-- DAP mappings
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "DAP Toggle Breakpoint" })
map("n", "<leader>dr", "<cmd>DapContinue<cr>", { desc = "DAP Continue/Start" })
map("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "DAP Step Into" })
map("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "DAP Step Over" })
map("n", "<leader>dx", "<cmd>DapTerminate<cr>", { desc = "DAP Stop/Terminate" })

-- Snap mappings
map("n", "<leader>ss", "<cmd>Snap<cr>", { desc = "Snap Screenshot whole buffer" })
map("v", "<leader>ss", ":Snap<cr>", { desc = "Snap Screenshot selection" })
