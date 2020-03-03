# raku-notebook

[![raku](https://img.shields.io/badge/raku-v6.d-blue.svg)](https://rakudo.org/downloads/star/)
[![rakudo](https://img.shields.io/badge/rakudo-2020.02.1-blue.svg)](https://rakudo.org/downloads/star/)
[![Build Status](https://travis-ci.com/sumanstats/raku-notebook.svg?branch=master)](https://travis-ci.com/sumanstats/raku-notebook)


This is dockerfile for running a docker container with **raku** kernel in jupyter notebook. Also contains [asciinema](https://asciinema.org/) to record and share your terminal sessions, the right way. Enjoy a lightweight, purely text-based approach to terminal recording.

Contains [App::Mi6](https://github.com/skaji/mi6) for building skeleton of **raku** packages.

Also contains [PyScaffold](https://github.com/blue-yonder/pyscaffold) for building skeleton of python packages.


## How to run using [Binder](https://mybinder.org/) ?


+ Click here: [![Binder](imgs/binder-logo.svg)](https://mybinder.org/v2/gh/sumanstats/raku-notebook/master)
+ Wait a few seconds.
+ Select `New` -> `Raku`

And dive into the raku notebook.


## How to run this image in your local computer ?

Type `docker run -it -p 8888:8888 sumankhanal/raku-notebook` in the docker terminal and access it in your browser with
`docker_ip_address:8888`.

There you are running the notebook.

For detailed instructions, [see here](https://sumankhanal.netlify.com/post/raku_notebook/).


Once you follow the above instructions, you will get notebook as shown here:

![](https://github.com/sumanstats/raku-notebook/blob/master/imgs/notebook.PNG)

**Happy coding** !


