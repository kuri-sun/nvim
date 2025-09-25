return {
  {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    lazy = false,

    -- Override a highlight group entirely using the built-in colour palette
    overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
      -- Example:
      return {
        Comment = { fg = colors.green, bg = "NONE", italic = true },
        ["@property"] = { fg = colors.magenta, bold = true },
      }
    end,

    -- Override a color entirely
    colors = {
      bg = "#ffffff",
      green = "#00ff00",
      magenta = "#ff00ff",
    },

    -- Disable or enable colorscheme extensions
    extensions = {
      telescope = true,
      notify = false,
      mini = false,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
      defaults = {
        autocmds = false,
        keymaps = false,
      },
    },
  },
}
