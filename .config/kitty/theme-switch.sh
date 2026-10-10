#!/bin/zsh
# Applies the kitty + tmux theme matching the current macOS appearance and
# reloads all running kitty/tmux instances live.
#
# Usage: theme-switch.sh light|dark

set -euo pipefail
# zsh aborts on globs that match nothing; the loops below handle "no matches"
# themselves, so make unmatched globs expand to nothing instead.
setopt null_glob

# launchd runs this with a minimal PATH (no /opt/homebrew/bin), so make
# sure kitty and tmux (Homebrew-installed) can actually be found.
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:$PATH"

KITTY_DIR="$HOME/.config/kitty"
TMUX_DIR="$HOME/.tmux"
NVIM_DIR="$HOME/.config/nvim"
ZATHURA_DIR="$HOME/.config/zathura"
NVIM_SOCK_DIR="/tmp/nvim-theme-sockets"
MODE="${1:-}"

case "$MODE" in
  dark|light)
    ;;
  *)
    echo "Usage: $0 light|dark" >&2
    exit 1
    ;;
esac

KITTY_SRC="$KITTY_DIR/theme-$MODE.conf"
TMUX_SRC="$TMUX_DIR/theme-$MODE.conf"

# --- kitty ---
cp "$KITTY_SRC" "$KITTY_DIR/current-theme.conf"

# kitty appends "-<pid>" to the configured listen_on socket path to avoid
# collisions between multiple instances, so discover the actual socket(s).
for sock in /tmp/kitty-*; do
  [ -S "$sock" ] || continue
  kitty @ --to "unix:$sock" set-colors -a --configured "$KITTY_SRC" >/dev/null 2>&1 || true
done

# --- tmux ---
cp "$TMUX_SRC" "$TMUX_DIR/theme-current.conf"

if command -v tmux >/dev/null 2>&1 && tmux list-sessions >/dev/null 2>&1; then
  # tmux-dotbar bakes hex colors into static format strings at load time
  # (re-)triggered via the `run tpm` line, so a plain source-file of the
  # theme fragment isn't enough — we need to re-source the whole config
  # to make tpm re-run the plugin with the new @tmux-dotbar-* values.
  tmux source-file "$HOME/.tmux.conf" >/dev/null 2>&1 || true
fi

# --- nvim ---
echo "$MODE" > "$NVIM_DIR/theme-current.txt"

if command -v nvim >/dev/null 2>&1 && [ -d "$NVIM_SOCK_DIR" ]; then
  for sock in "$NVIM_SOCK_DIR"/*.sock; do
    [ -S "$sock" ] || continue
    nvim --server "$sock" --remote-expr "v:lua.ApplyOsTheme('$MODE')" >/dev/null 2>&1 || true
  done
fi

# --- zathura ---
# zathura reads zathurarc only at startup and exposes no IPC to reload it,
# so this only affects instances opened after the switch.
ZATHURA_SRC="$ZATHURA_DIR/theme-$MODE.conf"
if [ -f "$ZATHURA_SRC" ]; then
  cp "$ZATHURA_SRC" "$ZATHURA_DIR/current-theme.conf"
fi
