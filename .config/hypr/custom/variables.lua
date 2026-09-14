-- Overrides for ~/.config/hypr/hyprland/variables.lua (survives dots updates)

terminal = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'ghostty'  'xterm'"

-- The defaults below fall back to `kitty -1` for their terminal-hosted
-- options; re-pointed at ghostty so they don't break once kitty is gone.
fileManager = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'dolphin' 'nautilus' 'nemo' 'thunar' 'ghostty -e fish -c yazi'"
codeEditor = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'windsurf' 'antigravity' 'code' 'codium' 'cursor' 'zed' 'zedit' 'zeditor' 'kate' 'gnome-text-editor' 'emacs' 'command -v nvim && ghostty -e nvim' 'command -v micro && ghostty -e micro'"
taskManager = "~/.config/hypr/hyprland/scripts/launch_first_available.sh 'gnome-system-monitor' 'plasma-systemmonitor --page-name Processes' 'command -v btop && ghostty -e fish -c btop'"
