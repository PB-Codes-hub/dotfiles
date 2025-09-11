-- Catppuccin Theme with Matugen Palette Integration
local status, palette = pcall(require, "themes.utils.matugen-palette")
if not status then
  vim.notify("Error loading matugen-palette: " .. palette, vim.log.levels.ERROR)
  return {}
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      background = { light = "latte", dark = "mocha" },
      transparent_background = true, -- Keep main editor transparent
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = { enabled = false },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },

      -- Map matugen colors to Catppuccin's palette
      color_overrides = {
        mocha = {
          -- Base colors
          base = palette.bg,
          mantle = palette.cursorln,
          crust = palette.cursorln,

          -- Text colors
          text = palette.fg,
          subtext0 = palette.comment,
          subtext1 = palette.fg,

          -- Primary colors (where the theme shines)
          rosewater = palette.primary, -- Main highlights
          flamingo = palette.accent, -- UI accents
          pink = palette.primary, -- Alternative highlight
          mauve = palette.keyword, -- Keywords

          -- Status colors
          red = palette.error, -- Errors
          maroon = palette.error, -- Alternative error
          peach = palette.warning, -- Warnings
          orange = palette.warning, -- Alternative warning
          yellow = palette.info, -- Info
          green = palette.git_add, -- Success
          teal = palette.info, -- Alternative info
          sky = palette.info, -- Alternative info
          blue = palette.info, -- Alternative info
          lavender = palette.accent, -- UI elements

          -- Syntax colors
          sapphire = palette.type, -- Types

          -- Surface colors
          surface0 = palette.cursorln,
          surface1 = palette.comment,
          surface2 = palette.comment,

          -- Overlay colors
          overlay0 = palette.visual, -- Visual selection
          overlay1 = palette.visual, -- Secondary selection
          overlay2 = palette.comment,
        },
      },

      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = { enabled = true },
        bufferline = {
          enabled = true,
          transparent = true,
        },
      },

      custom_highlights = function(colors)
        return {
          Comment = { fg = colors.flamingo },
          TabLineSel = { bg = colors.pink },
          CmpBorder = { fg = colors.surface2 },
          -- Highlight curly braces and parentheses
          ["@punctuation.bracket"] = { fg = palette.constant, bold = true },

          -- copy code hightlight
          Visual = { bg = palette.visual },

          -- Highlight code element under cursor
          LspReferenceText = { fg = palette.fg, bg = "#3b4261", bold = true },
          LspReferenceRead = { fg = palette.fg, bg = "#3b4261" },
          LspReferenceWrite = { fg = palette.fg, bg = "#3b4261" },
        }
      end,
    },

    config = function(_, opts)
      -- Setup plugin
      require("catppuccin").setup(opts)

      -- Alias for LazyVim compatibility with bufferline
      local bufferline_int = require("catppuccin.groups.integrations.bufferline")
      bufferline_int.get = bufferline_int.get_theme

      -- Apply colorscheme safely
      local ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
      if not ok then
        vim.notify("Failed to load colorscheme 'catppuccin'", vim.log.levels.WARN)
      end
    end,
  },
}
