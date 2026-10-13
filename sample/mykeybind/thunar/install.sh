#!/usr/bin/env bash


mkdir -p "${HOME}/.config/hypr/hyprland/keybinds"

install -Dm644 ./mykeybind.lua "${HOME}/.config/hypr/hyprland/keybinds/mykeybind.lua"
