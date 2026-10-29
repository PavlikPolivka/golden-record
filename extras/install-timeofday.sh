#!/bin/bash
# Install the optional time-of-day backgrounds for Golden Record: a user timer
# that checks every 15 minutes, plus a theme-set hook so switching to the theme
# shows the right image straight away. Undo with uninstall-timeofday.sh.
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Replace the old 20-minute rotation, if an earlier version installed it.
if systemctl --user list-unit-files golden-record-rotate.timer &>/dev/null; then
  systemctl --user disable --now golden-record-rotate.timer 2>/dev/null || true
fi
rm -f "$HOME/.local/bin/golden-record-rotate" \
  "$HOME/.config/systemd/user/golden-record-rotate.service" \
  "$HOME/.config/systemd/user/golden-record-rotate.timer"

install -Dm755 "$here/golden-record-timeofday" "$HOME/.local/bin/golden-record-timeofday"
install -Dm644 "$here/golden-record-timeofday.service" "$HOME/.config/systemd/user/golden-record-timeofday.service"
install -Dm644 "$here/golden-record-timeofday.timer" "$HOME/.config/systemd/user/golden-record-timeofday.timer"
install -Dm755 "$here/golden-record-timeofday" "$HOME/.config/omarchy/hooks/theme-set.d/golden-record-timeofday"

systemctl --user daemon-reload
systemctl --user enable --now golden-record-timeofday.timer
"$HOME/.local/bin/golden-record-timeofday"
echo "Golden Record time-of-day backgrounds enabled."
