# raku

[![raku](https://img.shields.io/badge/raku>=2019.01-blue.svg)](https://github.com/rakudo/rakudo)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


Docker image with [Pandoc](https://pandoc.org/index.html) and latest [raku from github](https://github.com/rakudo/rakudo).


Also includes [App::Mi6](https://github.com/skaji/mi6) which is a minimal raku authoring tool
that helps in building skeleton of raku modules.

To build a raku module like  `Sum::Doc ` type the following commands in the terminal of container of this image:

  ```raku
  mi6 new Sum::Doc
  ```
  
It will build the module with following folders and files within it:

  - bin/
  - lib/
  - t/
  - META6.json
  - LICENSE
  - README.md
  - dist.ini

See details on **`raku`** module [here](https://docs.perl6.org/language/module-packages) and [here](https://docs.perl6.org/language/modules).

**Happy** building **raku modules** !!
  


