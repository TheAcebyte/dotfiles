return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre',
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    opts = {
      scope = {
        enabled = false,
      },
    },
  },

  {
    "windwp/nvim-autopairs",
    enabled = false,
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "▎" },
        topdelete = { text = "▎" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      signs_staged = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "▎" },
        topdelete = { text = "▎" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
    },
  },

  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "jay-babu/mason-nvim-dap.nvim",
    },
    config = function()
      require "configs.dap"
    end,
  },

  {
    "luukvbaal/statuscol.nvim",
    event = "VeryLazy",
    dependencies = {
      "lewis6991/gitsigns.nvim",
    },
    config = function()
      require "configs.statuscol"
    end,
  },

  {
    "mistweaverco/snap.nvim",
    version = "v1.4.5",
    event = "VeryLazy",
    ---@type SnapUserConfig
    opts = {
      output_dir = "$HOME/Pictures/Screenshots/Snap",
      copy_to_clipboard = {
        html = false,
      },
    },
  },
}
