local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    -- go = { "gofumpt", "goimports-reviser", "golines" },
    -- go = { "gofmt" },
  },

  -- formatters = {
  --   ["goimports-reviser"] = {
  --     prepend_args = { "-rm-unused" },
  --   },
  --   ["golines"] = {
  --     prepend_args = { "--max-len=80" },
  --   },
  -- },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
