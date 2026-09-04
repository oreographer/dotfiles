-- Personal keybinding overrides

-- Disable Default Unbinds
hl.unbind("SUPER + SHIFT + V")
hl.unbind("SUPER + ALT + F")

-- Clipboard Manager
hl.unbind("SUPER + V")
o.bind("SUPER + V", "Clipboard Manager", "omarchy-shell shell toggle omarchy.clipboard")

-- Close current window
hl.unbind("SUPER + W")
hl.unbind("SUPER + Q")
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())

-- Emoji Picker
hl.unbind("SUPER + CTRL + E")
o.bind("SUPER + PERIOD", "Emoji Picker", "omarchy-shell shell toggle omarchy.emojis")

-- File Explorer
hl.unbind("SUPER + E")
o.bind("SUPER + E", "File manager", { omarchy = "nautilus" })

-- System Monitor
hl.unbind("SUPER + D")
o.bind("SUPER + D", "System Monitor", { tui = "btop" })

-- Maximize (keep bar)
hl.unbind("SUPER + F")
o.bind("SUPER + F", "Maximize window", hl.dsp.window.fullscreen({
  mode = "maximized",
  action = "toggle"
}))

-- True fullscreen
hl.unbind("SUPER + SHIFT + F")
o.bind("SUPER + SHIFT + F", "Fullscreen", hl.dsp.window.fullscreen({
  mode = "fullscreen",
  action = "toggle"
}))

-- Lock screen
hl.unbind("SUPER + L")
o.bind("SUPER + SHIFT + L", "Lock screen", "omarchy-system-lock")

-- Omarchy Clock Info
o.bind("SUPER + I", "Omarchy Clock", "omarchy-shell shell toggle omarchy.clock")

-- Scrolling layout
o.bind("SUPER + L", "Scrolling layout", "omarchy-hyprland-workspace-layout-toggle")

-- English OCR + Hindi
hl.unbind("SUPER + CTRL + O")
o.bind(
  "SUPER + CTRL + O",
  "Hindi + English OCR",
  "grim -g \"$(slurp)\" - | tesseract stdin stdout -l eng+hin --psm 6 | wl-copy && notify-send '󰴑  Copied text from selection to clipboard'"
)

-- Google Lens: Image Search
o.bind("SUPER + CTRL + G", "Google Lens", [[bash -c 'f=$(mktemp --suffix=.png); grim -g "$(slurp)" "$f" && u=$(curl -s -F "reqtype=fileupload" -F "fileToUpload=@$f" https://catbox.moe/user/api.php) && xdg-open "https://lens.google.com/uploadbyurl?url=$u"; rm -f "$f"']])
