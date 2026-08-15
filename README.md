This repo tracks my config files across both my laptop (running Arch + Sway) and desktop (running CachyOS + Sway).

Each directory in `~/dotfiles/` contains the entire path from `$HOME` to the relevant configuration files.

For example, if my foo terminal (foot) configuration was stored at `/home/thomas/.config/foot/foot.ini`, then this becomes `/home/thomas/dotfiles/foot/`, containing `.config/foot/foot.ini`.
These are then symlinked to their respective locations using [GNU stow](https://github.com/aspiers/stow), and this repo tracks all of `dotfiles/`.

## Usage

The repo tracks everything, so pulling between machines includes redundant config files.
Machine-specific confs 


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
