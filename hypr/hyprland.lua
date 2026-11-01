--xavs hyprland lua config

require('modules.keybinds')
require('modules.autostart')
require('modules.env')
require('modules.windowrules')
require('modules.looks')




------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({ -- laptop screen
  output = "eDP-1",
  mode = "1920x1200@60",
  position = "0x0",
  scale = auto,
})

hl.monitor({ -- monitor
  output = "HDMI-A-1",
  mode = "1920x1080@180",
  position = "auto-right",
  scale = auto,
})


-- Unscale XWayland windows for sharp rendering
hl.config({ xwayland = { force_zero_scaling = true } })




-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")




----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = 1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
            disable_while_typing = false,
            clickfinger_behavior = true,
        },
        touchdevice = {
            enabled = true,
        },
    },
})




