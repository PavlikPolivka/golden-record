#!/bin/bash
# Install the optional background rotation for Golden Record:
# a user timer that shows the next background every 20 minutes
# while Golden Record is the active theme. Undo with uninstall-rotation.sh.
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install -Dm755 "$here/golden-record-rotate" "$HOME/.local/bin/golden-record-rotate"
install -Dm644 "$here/golden-record-rotate.service" "$HOME/.config/systemd/user/golden-record-rotate.service"
install -Dm644 "$here/golden-record-rotate.timer" "$HOME/.config/systemd/user/golden-record-rotate.timer"

systemctl --user daemon-reload
systemctl --user enable --now golden-record-rotate.timer
echo "Golden Record background rotation enabled (every 20 minutes)."
