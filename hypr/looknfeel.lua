-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general

hl.config({
   general = {
     -- No gaps between windows or borders.
     gaps_in = 2,
     gaps_out = 2,
     border_size = 2,
     -- Change to niri-like side-scrolling layout.
     layout = "scrolling",
    },
    decoration = {
     rounding = 10,
   },
})

hl.config({
  decoration = {
    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      new_optimizations = true,
    },
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
-- hl.config({
--   animations = {
--     -- Disable all animations.
--     enabled = false,
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })
