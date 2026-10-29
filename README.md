# Golden Record

A dark [Omarchy](https://omarchy.org) theme from deep space: blue-black backgrounds, warm starlight text and gold accents, named after the golden records that Voyager 1 and 2 carry out of the solar system.

![Golden Record](card.jpg)

![Golden Record on a desktop: Neovim, btop and fastfetch](preview.jpg)

## Install

```bash
omarchy theme install https://github.com/PavlikPolivka/golden-record
```

or Super + Alt + Space → Install → Style → Theme, and paste the link.

## What's included

- **Colours** (`colors.toml`): Omarchy generates the terminal, editor, bar, btop, browser and other app themes from these.

  | Role | Colour |
  |---|---|
  | Background | `#0b0d14` |
  | Text | `#e8e2d0` |
  | Accent (gold) | `#e3b341` |
  | Selection | `#2b2f42` |
  | Window border | gold gradient `#e3b341` → `#f7d98a` |

- **Icons:** Yaru-yellow.
- **Four 4K backgrounds** from NASA missions, one for each part of the day (Super + Ctrl + Space to switch by hand):

  | Time | Background |
  |---|---|
  | Morning, 06–11 | Earthrise (Apollo 8) |
  | Day, 11–17 | The Sun in extreme ultraviolet (SDO) |
  | Evening, 17–21 | Webb's Cosmic Cliffs in golden light |
  | Night, 21–06 | Webb's First Deep Field |

## Optional: background follows the time of day

To switch backgrounds automatically through the day while Golden Record is the active theme, run once:

```bash
bash ~/.config/omarchy/themes/golden-record/extras/install-timeofday.sh
```

It installs a small user timer (`golden-record-timeofday.timer`, checks every 15 minutes) and a theme-set hook, so switching to Golden Record shows the right image straight away. It does nothing while another theme is active. Change the hours at the top of `~/.local/bin/golden-record-timeofday`. Remove it with `extras/uninstall-timeofday.sh`.

## Credits and licences

The theme files are under the MIT licence (`LICENSE`). The backgrounds are NASA and Webb images, cropped and resized to 3840×2160; see `CREDITS.md` for each image's source and licence.
