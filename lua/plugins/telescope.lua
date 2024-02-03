local actions = require("telescope.actions")

return {

  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", "<cmd>Telescope file_browser<cr>" },
    { "<leader>.", "<cmd>Telescope find_files<cr>" },
    { "<leader>,", "<cmd>Telescope buffers<cr>" },
    { "<leader>K", "<cmd>Telescope keymaps<cr>" },
    { "<leader>td", "<cmd>Telescope diagnostics<cr>" },
    { "<leader>tt", "<cmd>Telescope colorscheme<cr>" },
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
        },
      },
    },
  },
}
