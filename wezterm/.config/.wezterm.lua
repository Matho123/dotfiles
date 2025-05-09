local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.font = wezterm.font("JetBrains Mono")
config.font_size = 17.0

config.tab_bar_at_bottom = true

config.keys = {
  {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
}

return config
