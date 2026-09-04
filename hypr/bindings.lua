-- Keep only your personal keybinding overrides here.
-- Add new bindings or unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print


-- Super + D = Clipboard Manager
o.bind("SUPER + D", "Clipboard manager", "omarchy-launch-walker -m clipboard")


-- Super + Period = Emoji picker
o.bind("SUPER + PERIOD", "Emoji picker", "omarchy-shell shell toggle omarchy.emojis")

-- Disable the default Super + V binding (Universal paste)
hl.unbind("SUPER + V")

o.bind("SUPER + D", "System Monitor", { tui = "btop" })

-- Examples:
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")
-- hl.unbind("SUPER + SHIFT + B")
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
