nanorc
======

Extra syntax highlighting definitions for the [GNU nano] text editor.

Description
-----------

The syntax highlighting definitions that come bundled with nano are of
pretty poor quality. This is an attempt at providing a good set of accurate
syntax definitions to replace and expand the defaults.

Also included is a simple theming system, where all `color` statements (e.g.
`color brightred`) have been replaced with token identifiers (e.g.
`KEYWORD`, `OPERATOR`). These are replaced with colors according to the
chosen theme at build time. This system helps to keep colors uniform accross
different languages and also to keep the definitions clear and maintainable.

Installation
------------

Use `make install THEME=light`, where `light` is the name of a [theme].
All `.nanorc` files will be concatenated together, themed according to the
`THEME` variable and installed to `~/.nanorc`.

[main.nanorc] contains runtime options and key bindings. It can be safely
deleted or changed according to preference. The default bindings try to stay
close to GUI/[GNOME] conventions where possible
(e.g. `Ctrl+S` for save, `Ctrl+O` for open).

[GNU nano]: http://www.nano-editor.org/
[theme]: https://github.com/craigbarnes/nanorc/tree/master/themes
[main.nanorc]: https://github.com/craigbarnes/nanorc/blob/master/main.nanorc
[GNOME]: http://www.gnome.org/
