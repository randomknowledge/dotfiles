-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Fonts and colors
-- config.color_scheme = "Darcula (base16)"
-- config.color_scheme = "Tokyo Night"
config.color_scheme = "One Half Black (Gogh)"
-- config.color_scheme = "Builtin Solarized Dark"
config.colors = {
	background = "#232326",
}
config.font = wezterm.font("JetBrains Mono")
config.font_size = 16.0
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- window settings
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = "0cell",
	right = "0cell",
	top = "0cell",
	bottom = "0cell",
}
config.window_background_opacity = 0.98
config.macos_window_background_blur = 20

-- and finally, return the configuration to wezterm
return config
