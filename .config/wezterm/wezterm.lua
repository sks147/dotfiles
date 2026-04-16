local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Shell (matching iTerm2: /opt/homebrew/bin/bash)
config.default_prog = { "/opt/homebrew/bin/bash" }

-- Font (matching iTerm2: MesloLGS Nerd Font Regular 20pt, ligatures enabled)
config.font = wezterm.font("MesloLGS NF")
config.font_size = 20.0
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }

-- Window size (matching iTerm2: 80x25)
config.initial_cols = 80
config.initial_rows = 25

-- Terminal type
config.term = "xterm-256color"

-- Scrollback (matching iTerm2: unlimited)
config.scrollback_lines = 100000

-- Cursor (matching iTerm2: non-blinking block, foreground-colored)
config.default_cursor_style = "SteadyBlock"

-- Visual bell (matching iTerm2: visual bell enabled, audio bell disabled)
config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_function = "EaseIn",
	fade_in_duration_ms = 75,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 150,
}

-- Window appearance (no transparency, no blur — matching iTerm2)
config.window_background_opacity = 1.0
config.macos_window_background_blur = 0

-- Disable window resizing from terminal escape sequences (matching iTerm2)
config.adjust_window_size_when_changing_font_size = false

-- Option key sends ESC (matching iTerm2 option key behavior)
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

-- Tab bar styling
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- Color scheme (exact match of iTerm2 colors)
config.colors = {
	foreground = "#d5ced9",
	background = "#2f2833",

	cursor_fg = "#2f2833",
	cursor_bg = "#d5ced9",
	cursor_border = "#d5ced9",

	selection_fg = "#d5ced9",
	selection_bg = "#7e6c88",

	ansi = {
		"#2f2833", -- black   (Ansi 0)
		"#fc644d", -- red     (Ansi 1)
		"#a5f69c", -- green   (Ansi 2)
		"#e9d7a5", -- yellow  (Ansi 3)
		"#3b79c7", -- blue    (Ansi 4)
		"#f92672", -- magenta (Ansi 5)
		"#74d3de", -- cyan    (Ansi 6)
		"#d5ced9", -- white   (Ansi 7)
	},

	brights = {
		"#7e6c88", -- bright black   (Ansi 8)
		"#fc644d", -- bright red     (Ansi 9)
		"#a5f69c", -- bright green   (Ansi 10)
		"#e9d7a5", -- bright yellow  (Ansi 11)
		"#3b79c7", -- bright blue    (Ansi 12)
		"#f92672", -- bright magenta (Ansi 13)
		"#74d3de", -- bright cyan    (Ansi 14)
		"#ffffff", -- bright white   (Ansi 15)
	},
}

-- Window padding
config.window_padding = {
	left = 4,
	right = 4,
	top = 4,
	bottom = 4,
}

-- Key bindings (matching iTerm2 shortcuts)
local act = wezterm.action
config.keys = {
	-- Cmd+D: Split vertical (new pane to the right)
	{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	-- Cmd+Shift+D: Split horizontal (new pane below)
	{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	-- Cmd+T: New tab (already default, explicitly set for clarity)
	{ key = "t", mods = "CMD", action = act.SpawnTab("CurrentPaneDomain") },
	-- Cmd+N: New window (already default, explicitly set for clarity)
	{ key = "n", mods = "CMD", action = act.SpawnWindow },
	-- Cmd+W: Close current pane/tab
	{ key = "w", mods = "CMD", action = act.CloseCurrentPane({ confirm = true }) },
	-- Cmd+K: Clear scrollback and viewport
	{ key = "k", mods = "CMD", action = act.ClearScrollback("ScrollbackAndViewport") },
}

-- macOS-specific
config.native_macos_fullscreen_mode = true

return config
