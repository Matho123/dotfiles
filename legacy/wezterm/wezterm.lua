local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.font = wezterm.font("Iosevka Term")
config.font_size = 17.0

config.keys = {
  {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
}

config.window_decorations = "NONE"
config.show_tabs_in_tab_bar = false

return config
