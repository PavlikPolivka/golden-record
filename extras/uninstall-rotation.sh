#!/bin/bash
# Remove the Golden Record background rotation.
set -euo pipefail

systemctl --user disable --now golden-record-rotate.timer 2>/dev/null || true
rm -f "$HOME/.local/bin/golden-record-rotate" \
  "$HOME/.config/systemd/user/golden-record-rotate.service" \
  "$HOME/.config/systemd/user/golden-record-rotate.timer"
systemctl --user daemon-reload
echo "Golden Record background rotation removed."
