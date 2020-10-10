# vim-epitech
vim plugin for epitech students

## features
* adds epitech header following the new header style (promotion 2023 and later)
* turns on syntax highlighting
* sets the correct indentation (4 spaces)
* shows a colored bar at 80 columns
* displays extra characters (end of line, tabulations, trailing spaces)

## install
use your favorite plugin manager. if you don't use one, i recommand
[vim-plug](https://github.com/junegunn/vim-plug), it's very simple to use.

## usage
run `:TekAddHeader` in normal mode to run the plugin, and enter a description
for your file (or some text will be put instead).

the epitech header will be then put at the top of your file.

## credits
plugin based off [Le-Bit/vim-epitech](https://github.com/Le-Bit/vim-epitech),
as well off [epitech's emacs config](https://github.com/Epitech/epitech-emacs).

## social
written by [phil](https://philippeloctaux.com), and hopefully made better
by you.

licensed under the **mit license** (see [license.txt](license.txt)).

## changelog
because changelogs are better than git dumps, right?
using [semantic versioning](https://semver.org).

all git tags are signed with my [pgp key](https://x4m3.rocks/pgp-0x69771CD04BA82EC0.txt).

**1.3.0 - 2019-03-28**
- updated c++ header
- added python header
- added "funny" quotes if file description is empty
- year variable is manually set to the current school year
- updated link to epitech's emacs config git repo

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
