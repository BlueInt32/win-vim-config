# Custom Vim configs on Windows
:warning: Important note, in order for gvim to pick the correct _vimrc location (i.e. in `~/vimfiles/_vimrc` instead of the default `~/_vimrc`).
Add a user env variable: `VIMINIT=source C:\Users\simon\vimfiles\_vimrc`.
`VIMINIT` is actually automatically executed by gvim on startup, so it's like we're actually sourcing from our prefered `_vimrc` file instead.
