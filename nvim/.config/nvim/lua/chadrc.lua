-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  integrations = { "dap" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    NormalFloat = { link = "Normal" },
    FloatBorder = { link = "BlinkCmpMenuBorder" },
    PmenuSel = { bg = "blue" },
  },
  hl_add = {
    DiagnosticVirtualTextError = { fg = "red", bg = { "black", "red", 10 } },
    DiagnosticVirtualTextWarn = { fg = "yellow", bg = { "black", "yellow", 10 } },
    DiagnosticInfo = { fg = "blue", bg = { "black", "blue", 10 } },
    DiagnosticHint = { fg = "purple", bg = { "black", "purple", 10 } }
  }
}

M.nvdash = { load_on_startup = true }

M.ui = {
  telescope = { style = "bordered" },
}

return M
