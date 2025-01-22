-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Configuration variable
local config = wezterm.config_builder()

-- Config --

config.color_scheme = "Catppuccin Macchiato"

config.window_decorations = "RESIZE"

-- tab bar
-- config.enable_tab_bar = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.background = {
	{
		source = {
			File = wezterm.config_dir .. "/images/imperial-fists-bw.jpg",
		},
		opacity = 0.2,
	},
}

-- Return config to wezterm
return config
