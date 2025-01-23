local options = {
  ensure_installed = {
    "bash",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "vim",
    "vimdoc",
    "html",
    "css",
    "yaml",
    "json",
    "make",
    "terraform",
    "dockerfile", -- issue with highlighting
    "helm",
    "go",
    "gomod",
    "gosum",
    "gotmpl",
    "gowork",
    "c_sharp",
    "sql",
    "vhs",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
