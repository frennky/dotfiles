require("nvchad.autocmds")

local autocmd = vim.api.nvim_create_autocmd

local yankSettings = vim.api.nvim_create_augroup("Yank Text", { clear = true })

autocmd("TextYankPost", {
  desc = "Hightlight when yanking text",
  group = yankSettings,
  callback = function()
    vim.highlight.on_yank()
  end,
})

local terraformCommands = vim.api.nvim_create_augroup("Terraform commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  desc = "Format terraform file",
  group = terraformCommands,
  pattern = { "*.tf", "*.tfvars", "*.tfbackend" },
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- local goSettings = vim.api.nvim_create_augroup("Go Settings", { clear = true })
--
-- autocmd("BufWritePost", {
--   pattern = { "*test*.go" },
--   command = ":silent! GoTestFile", -- requires go plugin
--   group = goSettings,
-- })
