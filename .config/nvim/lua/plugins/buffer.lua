return {
	-- Bufferline for buffer tabs (at top)
	{
		"akinsho/bufferline.nvim",
		version = "*",
		lazy = false, -- Add this: Load immediately
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					numbers = "none",
					diagnostics = "nvim_lsp",
					separator_style = "slant",
					show_buffer_close_icons = true,
					show_close_icon = false,
					always_show_bufferline = true,
					offsets = {
						{ filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left" },
					},
					name_formatter = function(buf)
						return vim.fn.fnamemodify(buf.name, ":t")
					end,
				},
			})
			-- Your keymaps unchanged
			vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next Buffer" })
			vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })
			vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close Buffer" })
		end,
	},
}
