local palette = {
	-- Base Colors (More Contrast)
	fg = "#e3e1e9",
	bg = "#121318",
	cursorln = "#292a2f",

	-- Primary & Accent (Harmonized)
	primary = "#b7c4ff",
	accent = "#b7c4ff",
	visual = "#364479", -- Different from primary

	-- Syntax Colors (Semantic Mapping)
	comment = "#c6c5d0",
	keyword = "#b7c4ff",
	string = "#95d5a7",
	func = "#e4bad9",
	variable = "#e3e1e9",
	constant = "#ffb2b9",
	type = "#c2c5dd",
	operator = "#e3e1e9",

	-- Diagnostics (Clear Differentiation)
	error = "#ffb4ab",
	warning = "#ffb2b9",
	info = "#bbc3ff",
	hint = "#424659",

	-- Git Integration (Semantic Colors)
	git_add = "#95d5a7",
	git_change = "#e4bad9",
	git_delete = "#ffb2b9",

	-- UI Elements (Subtle Interactions)
	border = "#90909a",
	selection = "#364479",
	cursor = "#b7c4ff",
}

return palette
