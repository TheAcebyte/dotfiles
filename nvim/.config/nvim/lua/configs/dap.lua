local dap = require "dap"
local dapui = require "dapui"

dofile(vim.g.base46_cache .. "dap")

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

local adapters = { "codelldb" }
local mason_dap = require "mason-nvim-dap"
mason_dap.setup { ensure_installed = adapters, handlers = {} }
