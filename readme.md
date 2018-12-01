# vim-epitech
vim plugin for epitech students

## features
* adds epitech header following the new header style (promotion 2023 and later)
* turns on syntax highlighting
* sets the correct indentation (4 spaces)
* shows a colored bar at 80 columns
* displays extra characters (end of line, tabulations, trailing spaces)

## install
use your favorite vim plugin manager,
with the url `https://git.x4m3.rocks/x4m3/vim-epitech`.

## usage
run `:TekAddHeader` in normal mode to run the plugin, and enter a description
for your file (or some text will be put instead 😜).

the epitech header will be then put at the top of your file.

## credits
plugin based off [Le-Bit/vim-epitech](https://github.com/Le-Bit/vim-epitech),
as well off [epitech's emacs config](https://gitlab.com/EpitechContent/dump).

## social
written by [x4m3](https://philippeloctaux.com), and hopefully made better
by you.

licensed under the **mit license** (see [license.txt](license.txt)).

development is done on [x4m3.rocks!](https://git.x4m3.rocks/x4m3/vim-epitech),
but feel free to send an email to **p [at] philippeloctaux [dot] com** to
report a bug or an issue or an idea to improve the plugin.

## changelog
because changelogs are better than git dumps, right?
using [semantic versioning](https://semver.org).

all git tags are signed with my [pgp key](https://x4m3.rocks/pgp-0x69771CD04BA82EC0.txt).

**1.2.0 - 2018-12-01**
- Showing trailing spaces
- Using file name for "project name" in header
- If file description is empty, a nice message is put instead

**1.1.0 - 2018-10-12**
- Respecting the new Epitech norm (4 spaces instead of 8 col tabs)
- Showed EOL characters
- Added support for Makefile

**1.0.1 - 2018-09-06**
- Fixed a bug where the plugin wouldn't run on linux.

**1.0.0 - 2018-09-05**
- Initial release.
