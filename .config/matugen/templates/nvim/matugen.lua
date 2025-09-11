local palette = {
	-- Base Colors (More Contrast)
	fg = "{{colors.on_surface.default.hex}}",
	bg = "{{colors.surface.default.hex}}",
	cursorln = "{{colors.surface_container_high.default.hex}}",

	-- Primary & Accent (Harmonized)
	primary = "{{colors.primary.default.hex}}",
	accent = "{{colors.primary.default.hex}}",
	visual = "{{colors.primary_container.default.hex}}", -- Different from primary

	-- Syntax Colors (Semantic Mapping)
	comment = "{{colors.on_surface_variant.default.hex}}",
	keyword = "{{colors.primary.default.hex}}",
	string = "{{colors.green.default.hex}}",
	func = "{{colors.tertiary.default.hex}}",
	variable = "{{colors.on_surface.default.hex}}",
	constant = "{{colors.red.default.hex}}",
	type = "{{colors.secondary.default.hex}}",
	operator = "{{colors.on_surface.default.hex}}",

	-- Diagnostics (Clear Differentiation)
	error = "{{colors.error.default.hex}}",
	warning = "{{colors.red.default.hex}}",
	info = "{{colors.blue.default.hex}}",
	hint = "{{colors.secondary_container.default.hex}}",

	-- Git Integration (Semantic Colors)
	git_add = "{{colors.green.default.hex}}",
	git_change = "{{colors.tertiary.default.hex}}",
	git_delete = "{{colors.red.default.hex}}",

	-- UI Elements (Subtle Interactions)
	border = "{{colors.outline.default.hex}}",
	selection = "{{colors.primary_container.default.hex}}",
	cursor = "{{colors.primary.default.hex}}",
}

return palette
