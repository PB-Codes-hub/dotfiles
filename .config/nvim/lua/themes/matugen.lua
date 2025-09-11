-- matugen
return {
  {
    "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local lush = require("lush")
      local hsl = lush.hsl

      -- Load matugen palette (raw hex strings)
      local palette = require("themes.utils.matugen-palette")

      -- Convert hex to hsl objects for lush operations
      local colors = {
        fg = hsl(palette.fg),
        bg = hsl(palette.bg),
        accent = hsl(palette.accent),
        comment = hsl(palette.comment),
        string = hsl(palette.string),
        keyword = hsl(palette.keyword),
        visual = hsl(palette.visual).da(40),
        cursorln = hsl(palette.cursorln).da(30),
      }

      -- Define the theme
      local theme = lush(function()
        return {
          -- Core editor
          Normal({ fg = colors.fg, bg = "NONE" }),
          Comment({ fg = colors.comment, gui = "italic" }),
          String({ fg = colors.string }),
          Keyword({ fg = colors.keyword, gui = "bold" }),
          Identifier({ fg = colors.accent }),
          Function({ fg = colors.accent, gui = "bold" }),
          CursorLine({ bg = colors.cursorln }),
          Visual({ bg = colors.visual }),
          LineNr({ fg = colors.comment }),
          CursorLineNr({ fg = colors.accent, gui = "bold" }),
          StatusLine({ fg = colors.fg, bg = colors.cursorln }),
          StatusLineNC({ fg = colors.comment, bg = colors.cursorln }),

          -- Bufferline.nvim
          BufferLineFill({ bg = "NONE" }),
          BufferLineBackground({ fg = colors.comment, bg = "NONE" }),
          BufferLineBufferSelected({ fg = colors.fg, bg = colors.cursorln, gui = "bold" }),
          BufferLineBufferVisible({ fg = colors.fg, bg = "NONE" }),
          BufferLineSeparator({ fg = colors.cursorln, bg = "NONE" }),
          BufferLineSeparatorSelected({ fg = colors.accent, bg = colors.cursorln }),
          BufferLineSeparatorVisible({ fg = colors.cursorln, bg = "NONE" }),
          BufferLineIndicatorSelected({ fg = colors.accent, bg = colors.cursorln }),
          BufferLineModified({ fg = colors.accent }),
          BufferLineModifiedSelected({ fg = colors.accent, gui = "bold" }),

          -- Telescope
          TelescopePromptNormal({ fg = colors.fg, bg = colors.cursorln }),
          TelescopePromptBorder({ fg = colors.accent, bg = colors.cursorln }),
          TelescopeResultsNormal({ fg = colors.fg, bg = "NONE" }),
          TelescopeResultsBorder({ fg = colors.cursorln, bg = "NONE" }),
          TelescopePreviewNormal({ fg = colors.fg, bg = "NONE" }),
          TelescopePreviewBorder({ fg = colors.cursorln, bg = "NONE" }),

          -- NvimTree
          NvimTreeNormal({ fg = colors.fg, bg = "NONE" }),
          NvimTreeVertSplit({ fg = colors.cursorln, bg = "NONE" }),
          NvimTreeEndOfBuffer({ fg = colors.comment, bg = "NONE" }),
          NvimTreeRootFolder({ fg = colors.accent, gui = "bold" }),
        }
      end)

      -- Apply theme and expose `.get_theme()` for LazyVim compatibility
      local applied_theme = lush(theme) -- Note: If this doesn't apply highlights, replace with lush.ify(theme)
      vim.g.colors_name = "custom_lush" -- Set this to ensure LazyVim recognizes a non-Catppuccin theme
      applied_theme.get_theme = function()
        return applied_theme
      end
      _G._LUSH_THEME = applied_theme -- optional global reference
    end,
  },
  {
    "catppuccin/nvim",
    enabled = false,
  },
  {
    "folke/tokyonight.nvim", -- Also disable TokyoNight if present as a default fallback
    enabled = false,
  },
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      opts.colorscheme = function() end -- No-op with merge function for safety
      return opts
    end,
  },
}
