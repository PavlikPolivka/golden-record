#!/bin/bash
# Remove the Golden Record time-of-day backgrounds.
set -euo pipefail

systemctl --user disable --now golden-record-timeofday.timer 2>/dev/null || true
rm -f "$HOME/.local/bin/golden-record-timeofday" \
  "$HOME/.config/systemd/user/golden-record-timeofday.service" \
  "$HOME/.config/systemd/user/golden-record-timeofday.timer" \
  "$HOME/.config/omarchy/hooks/theme-set.d/golden-record-timeofday"
systemctl --user daemon-reload
echo "Golden Record time-of-day backgrounds removed."
