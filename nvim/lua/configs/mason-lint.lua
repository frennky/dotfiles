-- Linters to install
local linters = {
  "markdownlint",
  -- "golangci-lint",
}

require("mason-nvim-lint").setup({
  ensure_installed = linters,
  automatic_installation = false,
})
