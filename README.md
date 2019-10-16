This repository builds two images in DockerHub.


Image            | Description                               | Perl 6 version | Imagedata 
---------------- | ----------------------------------------- | -------------- | ---------
[raku notebook](https://hub.docker.com/r/sumankhanal/raku-notebook/) | Docker image with Perl 6 notebook with [Jupyter](http://jupyter.org/). | [![Perl 6](https://img.shields.io/badge/raku-2019.07.1-blue.svg)](https://rakudo.perl6.org/downloads/star/) | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Github Stars](https://img.shields.io/github/stars/sumandoc/raku-notebook.svg?style=social&label=Github)](https://github.com/sumanstats/raku-notebook)
[raku](https://hub.docker.com/r/sumankhanal/raku/) | Contains latest [raku from github](https://github.com/rakudo/rakudo). | [![raku](https://img.shields.io/badge/raku->=2019.07.1-blue.svg)](https://github.com/rakudo/rakudo) | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) 


# raku-notebook

[![Build Status](https://travis-ci.org/sumanstats/raku-notebook.svg?branch=master)](https://travis-ci.org/sumanstats/raku-notebook)
[![Build status](https://ci.appveyor.com/api/projects/status/2mcq0uk7c6a1omk9/branch/master?svg=true)](https://ci.appveyor.com/project/sumanstats/raku-notebook/branch/master)

This is dockerfile for running a docker container with **raku** kernel in jupyter notebook. Also contains [asciinema](https://asciinema.org/) to record and share your terminal sessions, the right way. Enjoy a lightweight, purely text-based approach to terminal recording.

Contains [App::Mi6](https://github.com/skaji/mi6) for building skeleton of **raku** packages.

Also contains [PyScaffold](https://github.com/blue-yonder/pyscaffold) for building skeleton of python packages.


## How to run using [Binder](https://mybinder.org/) ?


+ Click here: [![Binder](imgs/binder-logo.svg)](https://mybinder.org/v2/gh/sumanstats/raku-notebook/master)
+ Wait a few seconds.
+ Select `New` -> `raku`

And dive into the raku notebook.


## How to run this image in your local computer ?

Type `docker run -it -p 8888:8888 sumankhanal/raku-notebook` in the docker terminal and access it in your browser with
`docker_ip_address:8888`.

There you are running the notebook.

For detailed instructions, [see here](https://sumandoc.netlify.com/post/raku_notebook/).


Once you follow the above instructions, you will get notebook as shown here:

![](https://github.com/sumandoc/raku-notebook/blob/master/imgs/notebook.PNG)

-----------------------------------

# raku

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
  


