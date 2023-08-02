local wezterm = require("wezterm")

return {
    color_scheme = "Grey-green",
	enable_tab_bar = false,
	font = wezterm.font_with_fallback {
		{ family = "JetBrainsMono Nerd Font", weight = "Medium" },
		{ family = "Noto Sans Mono CJK JP", weight = "Medium" },
		{ family = "Noto Color Emoji", weight = "Medium" },
	},
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
