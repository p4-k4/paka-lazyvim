vim.diagnostic.config({
  float = { border = "rounded" },
})

return {
  "neovim/nvim-lspconfig",
  opts = {
    window = {
      completion = {
        border = "rounded",
      },
    },
  },
}
