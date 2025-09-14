local palette = {
	-- Base Colors (More Contrast)
	fg = "#e2e3d8",
	bg = "#12140e",
	cursorln = "#282b24",

	-- Primary & Accent (Harmonized)
	primary = "#b1d18a",
	accent = "#b1d18a",
	visual = "#344e16", -- Different from primary

	-- Syntax Colors (Semantic Mapping)
	comment = "#c5c8ba",
	keyword = "#b1d18a",
	string = "#abd290",
	func = "#a0d0cc",
	variable = "#e2e3d8",
	constant = "#ffb595",
	type = "#bfcbad",
	operator = "#e2e3d8",

	-- Diagnostics (Clear Differentiation)
	error = "#ffb4ab",
	warning = "#ffb595",
	info = "#afc6ff",
	hint = "#404a33",

	-- Git Integration (Semantic Colors)
	git_add = "#abd290",
	git_change = "#a0d0cc",
	git_delete = "#ffb595",

	-- UI Elements (Subtle Interactions)
	border = "#8e9285",
	selection = "#344e16",
	cursor = "#b1d18a",
}

return palette
