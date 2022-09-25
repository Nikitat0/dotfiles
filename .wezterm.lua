local wezterm = require("wezterm")

return {
	colors = {
		background = "#3c4542",
		foreground = "#fdd89a",
		cursor_bg = "#fdd89a",
		cursor_fg = "#3c4542",
		ansi = {
			"#7e837c",
			"#fc796b",
			"#a8cb79",
			"#ed9c6a",
			"#bcbfb4",
			"#d8bbbd",
			"#a8cb79",
			"#fdd89a",
		},
		brights = {
			"#7e837c",
			"#fc796b",
			"#a8cb79",
			"#edc074",
			"#bcbfb4",
			"#d8bbbd",
			"#a8cb79",
			"#fdd89a",
		},
	},
	enable_tab_bar = false,
	font = wezterm.font_with_fallback({
		{ family = "JetBrains Mono", weight = "Medium" },
		{ family = "Noto Sans Mono CJK JP", weight = "Medium" },
	}),
	font_size = 10,
	scrollback_lines = 65536,
	window_decorations = "RESIZE",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}
