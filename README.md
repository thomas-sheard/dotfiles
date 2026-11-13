This repo tracks my config files across both my laptop (running Arch + Sway) and desktop (also running Arch + Sway).

Each directory in `~/dotfiles/` contains the entire path from `$HOME` to the relevant configuration files.

For example, if my foo terminal (foot) configuration was stored at `/home/thomas/.config/foot/foot.ini`, then this becomes `/home/thomas/dotfiles/foot/`, containing `.config/foot/foot.ini`.
These are then symlinked to their respective locations using [GNU stow](https://github.com/aspiers/stow), and this repo tracks all of `dotfiles/`.

## Usage

The repo tracks everything, so pulling between machines includes redundant config files.
Machine-specific confs and more.


SDDM configuration should not be added to `configure.sh`, as login managers act before user login.
You must manually stow it with root privileges. Run `# stow -d ~/dotfiles -t / sddm` to apply SDDM styling.

## To-do:

- `typst` tabbing and syntax highlighting
    - would be cool to have * and _ autopair but delete the second if a space is pressed instead
    - ie `"\*"` -> `\*|\*`, `"* "` -> `"\* |`
    - such that typing `*word*` works, and so does `"* "`
    - similar for _
    - similar again for lists: automatically place another list element at the same level of indentation, but erase it and return to beginning of line if enter is pressed again
    - \a, \x etc expand to $x$, also \\- expand to `$-|$`
    - ;a, ;b etc expand to alpha, beta, ;A -> Alpha etc

## Installation notes

pkg:
stow
waybar
swaybg
discord
spotify

paru with 
tmp $ git clone https://aur.archlinux.org/paru.git

aur:
tofi
swaycwd

uncomment Color in /etc/pacman.conf for color
set profile and conf (esp font) files in dotfiles/sway
ignored files !! hum

for ssh keys (incomplete):
openssh 
systemctl --user enable --now ssh-agent

nvim error no such file or cmd 'tree-sitter'
install tree-sitter, tree-sitter-cli

# audio
ensure installed pipewire pipewire-pulse wireplumber pavucontrol
systemctl --user enable pipewire.service pipewire-pulse.service wireplumber.service
reboot

# bluetooth

install bluez, bluez-utils
sudo systemctl enable --now blueooth
systemctl enable bluetooth.service 
(no --user)!

