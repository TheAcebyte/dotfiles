local statuscol = require "statuscol"
local builtin = require "statuscol.builtin"

statuscol.setup {
  relculright = true,
  segments = {
    {
      sign = {
        namespace = { "gitsigns_signs_.*" },
        maxwidth = 1,
        colwidth = 1,
      },
      click = "v:lua.ScSa",
    },
    {
      sign = {
        name = { "Dap" },
        namespace = { "vim%.lsp%..*" },
        maxwidth = 1,
        colwidth = 1,
      },
      click = "v:lua.ScSa",
    },
    { text = { " " } },
    {
      text = { builtin.lnumfunc, " " },
      click = "v:lua.ScLa",
    },
  },
}
