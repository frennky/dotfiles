require("nvchad.configs.lspconfig").defaults()

local nvlsp = require("nvchad.configs.lspconfig")
local lspconfig = require("lspconfig")

lspconfig.servers = {
  "lua_ls",
  "terraformls",
  "dockerls",
  "gopls",
  "csharp_ls",
  "bashls",
  "yamlls",
  -- "helm_ls",
  -- "ansiblels",
}

local default_servers = {
  "terraformls",
  "dockerls",
  "gopls",
  "csharp_ls",
  "bashls",
  "yamlls",
  -- "helm_ls",
  -- "ansiblels",
}

-- LSPs with default config
for _, lsp in ipairs(default_servers) do
  lspconfig[lsp].setup({
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

require("mason-lspconfig").setup({
  ensure_installed = lspconfig.servers,
  automatic_installation = false,
})

lspconfig.yamlls.setup({
  settings = {
    yaml = {
      schemas = {
        kubernetes = "k8s-*.yaml",
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        ["https://json.schemastore.org/github-action.json"] = ".github/action.{yml,yaml}",
        ["https://raw.githubusercontent.com/docker/compose/master/compose/config/compose_spec.json"] = "docker-compose*.{yml,yaml}",
      },
    },
  },
})
