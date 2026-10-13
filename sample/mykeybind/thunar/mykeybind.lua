



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
