This repo tracks my config files across both my laptop (running Arch + Sway) and desktop (running CachyOS + Sway).

Each directory in `~/dotfiles/` contains the entire path from `$HOME` to the relevant configuration files.

For example, if my foo terminal (foot) configuration was stored at `/home/thomas/.config/foot/foot.ini`, then this becomes `/home/thomas/dotfiles/foot/`, containing `.config/foot/foot.ini`.
These are then symlinked to their respective locations using [GNU stow](https://github.com/aspiers/stow), and this repo tracks all of `dotfiles/`.

## Usage

The repo tracks everything, so pulling between machines includes redundant config files.
Machine-specific confs 
