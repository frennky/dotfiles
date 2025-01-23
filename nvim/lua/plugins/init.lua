return {

  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.treesitter")
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    depedencies = { "williamboman/mason.nvim" }, -- Already installed with nvchad
    config = function()
      require("configs.mason-lspconfig")
    end,
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.lint")
    end,
  },

  {
    "rshkarin/mason-nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    depedencies = { "mfussenegger/nvim-lint" },
    config = function()
      require("configs.mason-lint")
    end,
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require("configs.conform")
    end,
  },
  --
  -- {
  --   "leoluz/nvim-dap-go",
  --   config = function()
  --     require("dap-go").setup()
  --   end,
  -- },
  --
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   event = { "BufReadPre", "BufNewFile" },
  --   depedencies = { "williamboman/mason.nvim" }, -- Already installed with nvchad
  --   config = function()
  --     require("configs.mason-dap")
  --   end,
  -- },
  {
    "alexghergh/nvim-tmux-navigation",
    event = "VeryLazy",
    config = function()
      local nvim_tmux_nav = require("nvim-tmux-navigation")

      nvim_tmux_nav.setup({
        disable_when_zoomed = true,
      })

      vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
      vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
      vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
      vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
    end,
  },
}
