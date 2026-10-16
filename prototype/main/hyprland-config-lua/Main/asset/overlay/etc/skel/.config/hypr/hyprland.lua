

--------------------------------------------------------------------------------
--
-- ## Note
--
-- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/configuring/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
-- require("myColors")
--
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Monitors
--------------------------------------------------------------------------------

-- See https://wiki.hypr.land/configuring/core/monitors/
hl.monitor({
	output   = "",
	mode	 = "preferred",
	position = "auto",
	scale	= "auto",
})




--------------------------------------------------------------------------------
-- ## My Programs
--------------------------------------------------------------------------------

-- Set programs that you use
local terminal	= "kitty"
local fileManager = "dolphin"
local menu		= "hyprlauncher"




--------------------------------------------------------------------------------
-- ## Autostart
--------------------------------------------------------------------------------

-- See https://wiki.hypr.land/configuring/core/autostart/

--
-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function () 
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)
--




--------------------------------------------------------------------------------
-- ## Environment Variables
--------------------------------------------------------------------------------

-- See https://wiki.hypr.land/configuring/core/environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")




--------------------------------------------------------------------------------
-- ## Permissions
--------------------------------------------------------------------------------

-- See https://wiki.hypr.land/configuring/core/advanced-configuration/permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--	 enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")




--------------------------------------------------------------------------------
-- ## Look and Feel
--------------------------------------------------------------------------------

-- Refer to https://wiki.hypr.land/configuring/core/config-options/
hl.config({
	general = {
		gaps_in  = 5,
		gaps_out = 20,

		border_size = 2,

		col = {
			active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/configuring/extra/tearing/ before you turn this on
		allow_tearing = false,

		-- layout = "scrolling",
		-- layout = "nonocle",
		-- layout = "dwindle",
		layout = "master",
	},

	decoration = {
		rounding	   = 10,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity   = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled	  = true,
			range		= 4,
			render_power = 3,
			color		= 0xee1a1a1a,
		},

		blur = {
			enabled   = true,
			size	  = 3,
			passes	= 1,
			vibrancy  = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})

-- Default curves and animations, see https://wiki.hypr.land/configuring/core/animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},	{0.32, 1}	} })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}	} })
hl.curve("linear",		 { type = "bezier", points = { {0, 0},	   {1, 1}	   } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}	} })
hl.curve("quick",		  { type = "bezier", points = { {0.15, 0},	{0.1, 1}	 } })

-- Default springs
hl.curve("easy",		   { type = "spring", mass = 1, stiffness = 238.1191, damping = 24.21279333 })

hl.animation({ leaf = "global",		enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",		enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",	   enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",	 enabled = true,  speed = 4.1,  spring = "easy",		 style = "popin 87%" })
hl.animation({ leaf = "windowsOut",	enabled = true,  speed = 1.49, bezier = "linear",	   style = "popin 87%" })
hl.animation({ leaf = "fadeIn",		enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",	   enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",		  enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",		enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",	  enabled = true,  speed = 4,	bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",	 enabled = true,  speed = 1.5,  bezier = "linear",	   style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",	enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",	enabled = true,  speed = 7,	bezier = "quick" })

-- Ref https://wiki.hypr.land/configuring/core/rules/workspace-rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--	 name  = "no-gaps-wtv1",
--	 match = { float = false, workspace = "w[tv1]" },
--	 border_size = 0,
--	 rounding	= 0,
-- })
-- hl.window_rule({
--	 name  = "no-gaps-f1",
--	 match = { float = false, workspace = "f[1]" },
--	 border_size = 0,
--	 rounding	= 0,
-- })

-- See https://wiki.hypr.land/configuring/layouts/dwindle-layout/ for more
hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

-- See https://wiki.hypr.land/configuring/layouts/master-layout/ for more
hl.config({
	master = {
		new_status = "master",
	},
})

-- See https://wiki.hypr.land/configuring/layouts/scrolling-layout/ for more
hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})




--------------------------------------------------------------------------------
-- ## Misc
--------------------------------------------------------------------------------

hl.config({
	misc = {
		force_default_wallpaper = -1,	-- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
	},
})




--------------------------------------------------------------------------------
-- ## Input
--------------------------------------------------------------------------------

hl.config({
	input = {
		kb_layout  = "us",
		kb_variant = "",
		kb_model   = "",
		kb_options = "",
		kb_rules   = "",

--		follow_mouse = 1,
		follow_mouse = 0,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/configuring/core/devices/ for more
hl.device({
	name		= "epic-mouse-v1",
	sensitivity = -0.5,
})




--------------------------------------------------------------------------------
-- ## Keybindings
--------------------------------------------------------------------------------

--
-- See:
--
-- * https://wiki.hypr.land/configuring/core/dispatchers/
--




--------------------------------------------------------------------------------
-- ## Keybindings / Mousebind
--------------------------------------------------------------------------------

--
-- See:
--
-- https://wiki.hypr.land/configuring/core/binds/devices/mouse/
--


-- Scroll through existing workspaces with mainMod + scroll
-- hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
-- hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
-- hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
-- hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Move window with `Super + [Left Mouse Button Drag]`
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })

-- Move window with `Super + [Right Mouse Button Drag]`
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Toggle floating of window with `Super + [Middle Mouse Button Click]`
hl.bind("SUPER + mouse:274", hl.dsp.window.float({ action = "toggle" }), { mouse = true })

-- Toggle floating of window with `ALT + [Middle Mouse Button Click]`
hl.bind("ALT + mouse:274", hl.dsp.window.float({ action = "toggle" }), { mouse = true })


-- Switch workspace with `Super + [Middle Mouse Button Scroll]`
hl.bind("SUPER + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Terminal
--------------------------------------------------------------------------------

-- Normal
hl.bind("SUPER + Return", hl.dsp.exec_cmd("xfce4-terminal"))
hl.bind("ALT + Return", hl.dsp.exec_cmd("xfce4-terminal"))

hl.bind("ALT + SHIFT + a", hl.dsp.exec_cmd("xfce4-terminal"))
hl.bind("ALT + CTRL + a", hl.dsp.exec_cmd("lxterminal"))

hl.bind("ALT + SHIFT + t", hl.dsp.exec_cmd("kitty"))
hl.bind("ALT + CTRL + t", hl.dsp.exec_cmd("kitty"))


-- Drop Down
-- hl.bind("ALT + SHIFT + y", hl.dsp.exec_cmd("xfce4-terminal --drop-down"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / File Mainager
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + f", hl.dsp.exec_cmd("thunar"))
hl.bind("ALT + SHIFT + g", hl.dsp.exec_cmd("pcmanfm"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Text Editor
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("mousepad"))
-- hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("featherpad"))
-- hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("geany"))
-- hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("subl"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Web Browser
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + b", hl.dsp.exec_cmd("firefox --new-tab about:blank"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / System Settings
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + s", hl.dsp.exec_cmd("nwg-look"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Volume Control
--------------------------------------------------------------------------------

-- hl.bind("ALT + SHIFT + v", hl.dsp.exec_cmd("mate-volume-control"))
-- hl.bind("ALT + SHIFT + v", hl.dsp.exec_cmd("pavucontrol"))
hl.bind("ALT + SHIFT + v", hl.dsp.exec_cmd("pavucontrol-qt"))



--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Network Settings
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + n", hl.dsp.exec_cmd("kitty --class 'nmtui' --title 'Network Settings' nmtui"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Launcher
--------------------------------------------------------------------------------

hl.bind("ALT + F1", hl.dsp.exec_cmd("nwg-drawer -mb 10 -mr 10 -ml 10 -mt 10"))
-- hl.bind("ALT + F2", hl.dsp.exec_cmd("pkill wofi || wofi --normal-window --show drun --allow-images"))
hl.bind("ALT + F2", hl.dsp.exec_cmd("pkill rofi || rofi -show drun -show-icons"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Launcher / Wofi
--------------------------------------------------------------------------------

--
-- See:
--
-- * https://man.archlinux.org/man/wofi.1.en
-- * https://archlinux.org/packages/community/x86_64/wofi/
--

-- hl.bind("ALT + SHIFT + d", hl.dsp.exec_cmd("pkill wofi || wofi --normal-window --show drun --allow-images"))
-- hl.bind("ALT + SHIFT + r", hl.dsp.exec_cmd("pkill wofi || wofi --show run"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Launcher / Rofi
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + d", hl.dsp.exec_cmd("pkill rofi || rofi -show drun -show-icons"))
hl.bind("ALT + SHIFT + r", hl.dsp.exec_cmd("pkill rofi || rofi -show run"))
hl.bind("ALT + SHIFT + w", hl.dsp.exec_cmd("pkill rofi || rofi -show window -show-icons"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / System
--------------------------------------------------------------------------------


-- Reload
hl.bind("ALT + SHIFT + c", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("ALT + CTRL + c", hl.dsp.exec_cmd("hyprctl reload"))


-- Logout
hl.bind("ALT + SHIFT + x", hl.dsp.exec_cmd("wlogout"))
hl.bind("ALT + CTRL + x", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))


-- Halt
hl.bind("ALT + SHIFT + z", hl.dsp.exec_cmd("wlogout"))
hl.bind("ALT + CTRL + z", hl.dsp.exec_cmd("systemctl -i poweroff"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Control
--------------------------------------------------------------------------------

-- Window Close
local closeWindowBind = hl.bind("SUPER + q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)


-- Window Toggle Fullscreen
hl.bind("SUPER + f", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- Window Toggle Maximize
hl.bind("SUPER + w", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

-- Window Toggle Floating
hl.bind("SUPER + Escape", hl.dsp.window.float({ action = "toggle" }))

-- Window Move Center
hl.bind("SUPER + m", hl.dsp.window.center())




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Focus
--------------------------------------------------------------------------------

-- Focus window with `Super + <Arrow Key>`
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))

-- Focus window with `Super + [k,j,h,l]`
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + h", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + l", hl.dsp.focus({ direction = "right" }))


-- Focus window with `Super + [a,s]`
hl.bind("SUPER + a", function()
	hl.dispatch(hl.dsp.window.cycle_next())
	--hl.dispatch(hl.dsp.window.cycle_next({ next = false }))
	hl.dispatch(hl.dsp.window.bring_to_top())
end)

hl.bind("SUPER + s", function()
	hl.dispatch(hl.dsp.window.cycle_next({ next = true }))
	hl.dispatch(hl.dsp.window.bring_to_top())
end)


-- Focus master window on layout master
hl.bind("SUPER + c", function()
	hl.dispatch(hl.dsp.layout("focusmaster"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end)

-- hl.bind("SUPER + a", function()
-- 	hl.dispatch(hl.dsp.layout("cycleprev"))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)

-- hl.bind("SUPER + s", function()
-- 	hl.dispatch(hl.dsp.layout("cyclenext"))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Swap
--------------------------------------------------------------------------------

-- Swap window with `Super + Shift + [a,s]` on layout master
hl.bind("SUPER + SHIFT + a", function()
	hl.dispatch(hl.dsp.layout("swapprev"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end)

hl.bind("SUPER + SHIFT + s", function()
	hl.dispatch(hl.dsp.layout("swapnext"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end)


-- Swap master window on layout master
hl.bind("SUPER + SHIFT + c", function()
	hl.dispatnch(hl.dsp.layout("swapwithmaster"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end)


-- Swap window on layout master with `Super +[grave,Tab]`
-- hl.bind("SUPER + grave", function()
-- 	hl.dispatch(hl.dsp.window.swap({ prev = true }))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)

-- hl.bind("SUPER + Tab", function()
-- 	hl.dispatch(hl.dsp.window.swap({ next = true }))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Move
--------------------------------------------------------------------------------

hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ x = 0, y = -50, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ x = 0, y = 50, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ x = -50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ x = 50, y = 0, relative = true }), { repeating = true })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Resize
--------------------------------------------------------------------------------

hl.bind("SUPER + CTRL + up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + CTRL + right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Workspace
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Workspace / Control
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Workspace / Focus
--------------------------------------------------------------------------------

-- Switch workspaces with `Alt + [a,s]`
hl.bind("ALT + a",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind("ALT + s", hl.dsp.focus({ workspace = "e+1" }))

-- Switch previous workspaces with `Alt + z`
hl.bind("ALT + z", hl.dsp.focus({ workspace = "previous" }))


-- Switch worksapce with `Alt + CTRL + [0-9]`
-- Move active window to a workspace with `ALT + SHIFT + [0-9]`
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind("ALT + CTRL + " .. key, hl.dsp.focus({ workspace = i}))
	hl.bind("ALT + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end


-- Switch worksapce with `SUPER + [0-9]`
-- Move active window to a workspace with `SUPER + SHIFT + [0-9]`
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i}))
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Layout
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Layout / Master
--------------------------------------------------------------------------------

-- Switch orientation on layout master with `ALT +[grave,Tab]`
hl.bind("ALT + grave", hl.dsp.layout("orientationprev"))
hl.bind("ALT + Tab", hl.dsp.layout("orientationnext"))

-- Master window number
hl.bind("ALT + o", hl.dsp.layout("removemaster"))
hl.bind("ALT + p", hl.dsp.layout("addmaster"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Screenshot
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Wallpaper
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Panel
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Brightness
--------------------------------------------------------------------------------

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Volume
--------------------------------------------------------------------------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Player
--------------------------------------------------------------------------------

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })




--------------------------------------------------------------------------------
-- ## Rule
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Rule / Windows and Workspaces
--------------------------------------------------------------------------------

-- See https://wiki.hypr.land/configuring/core/rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name  = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name  = "fix-xwayland-drags",
	match = {
		class	  = "^$",
		title	  = "^$",
		xwayland   = true,
		float	  = true,
		fullscreen = false,
		pin		= false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--	 name  = "no-anim-overlay",
--	 match = { namespace = "^my-overlay$" },
--	 no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name  = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move  = "20 monitor_h-120",
	float = true,
})
