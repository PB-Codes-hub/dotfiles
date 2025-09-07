-- Catppuccin Theme
--

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000, -- load before other plugins
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { light = "latte", dark = "mocha" },
      transparent_background = true, -- fully transparent
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
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = { enabled = true },
      },
    },
    config = function(_, opts)
      -- setup plugin
      require("catppuccin").setup(opts)

      -- safely apply colorscheme
      local ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
      if not ok then
        vim.notify("Failed to load colorscheme 'catppuccin'", vim.log.levels.WARN)
      end
    end,
  },
}
