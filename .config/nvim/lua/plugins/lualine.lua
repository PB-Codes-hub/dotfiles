return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = false, -- Keep this for startup load
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"lewis6991/gitsigns.nvim", -- Add explicit dep
		},
		config = function()
			require("lualine").setup({
				-- Your existing options/sections unchanged
				options = {
					theme = "auto",
					globalstatus = true,
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" }, -- This now safely uses gitsigns
					lualine_c = {
						{
							"filename",
							path = 0,
							file_status = true,
							symbols = {
								modified = "󰷥",
								readonly = "󰈅",
							},
						},
					},
					lualine_x = { "diagnostics", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},
}
