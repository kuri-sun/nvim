return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      -- Other custom mappings
      { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!.git/" },
          theme = "dropdown",
        },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          initial_mode = "normal",
          hijack_netrw = false,
          layout_config = { height = 40 },
        },
      },
    },
  },
}
