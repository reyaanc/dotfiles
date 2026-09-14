# Commands to run in interactive sessions can go here
if status is-interactive
    # No greeting
    set fish_greeting

    # ── nvim-style line editing ──────────────────────────────────
    # Must be the *variable*: starship's fish init does
    # `switch "$fish_key_bindings"` to drive the prompt mode indicator.
    set -g fish_key_bindings fish_vi_key_bindings

    # Cursor shape per mode, so the mode is visible in the cursor too
    set -g fish_cursor_default     block
    set -g fish_cursor_insert      line
    set -g fish_cursor_visual      block
    set -g fish_cursor_replace     underscore
    set -g fish_cursor_replace_one underscore

    # Motions worth keeping while in insert mode
    bind -M insert ctrl-a beginning-of-line
    bind -M insert ctrl-e end-of-line
    bind -M insert ctrl-w backward-kill-word
    bind -M insert ctrl-r history-pager

    # Use starship
    function starship_transient_prompt_func
        starship module character
    end
    if test "$TERM" != "linux"
        starship init fish | source
        enable_transience
    end
    
    # Colors
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    # some terminals don't clear scrollback properly
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias pamcan pacman
    alias q 'qs -c ii'
    if test "$TERM" != "linux"
        alias ls 'eza --icons=auto'
    end
end
