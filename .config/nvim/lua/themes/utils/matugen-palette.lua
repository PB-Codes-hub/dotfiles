local palette = {
	-- Base Colors (More Contrast)
	fg = "#e7e2d5",
	bg = "#14140c",
	cursorln = "#2b2a21",

	-- Primary & Accent (Harmonized)
	primary = "#d1c973",
	accent = "#d1c973",
	visual = "#4d4800", -- Different from primary

	-- Syntax Colors (Semantic Mapping)
	comment = "#cbc7b5",
	keyword = "#d1c973",
	string = "#b7d085",
	func = "#a6d0b9",
	variable = "#e7e2d5",
	constant = "#ffb595",
	type = "#ccc8a3",
	operator = "#e7e2d5",

	-- Diagnostics (Clear Differentiation)
	error = "#ffb4ab",
	warning = "#ffb595",
	info = "#afc6ff",
	hint = "#4a482c",

	-- Git Integration (Semantic Colors)
	git_add = "#b7d085",
	git_change = "#a6d0b9",
	git_delete = "#ffb595",

	-- UI Elements (Subtle Interactions)
	border = "#949181",
	selection = "#4d4800",
	cursor = "#d1c973",
}

return palette
