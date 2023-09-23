# Raku notebook

[![Raku](https://img.shields.io/badge/Raku-v6.d-blue.svg)](https://rakudo.org/downloads/star/)
[![Rakudo](https://img.shields.io/badge/Rakudo-2022.12-blue.svg)](https://github.com/rakudo/rakudo/releases/tag/2022.12)
[![Build status](https://ci.appveyor.com/api/projects/status/1afb4ovb4481ni0r?svg=true)](https://ci.appveyor.com/project/sumanstats/raku-notebook)


<a href="https://raku.org/"><img src="imgs/raku_jupyter.png" width="300" height="120" align="right"></a>



This is a docker container with **Raku** kernel in jupyter notebook.

Contains [App::Mi6](https://github.com/skaji/mi6) for building skeleton of **Raku** packages.

## How to run using [Binder](https://mybinder.org/) ?


+ Click the Binder icon <a href="https://mybinder.org/v2/gh/sumanstats/raku-notebook/main"><img src="imgs/binder-logo.svg" width="260" height="150" align="right"></a>

+ Wait a few seconds.
+ Select `New` -> `Raku`

And dive into the **Raku notebook**.


## How to run this image in your local computer ?

Type `docker run -it -p 8888:8888 sumankhanal/raku-notebook` in the docker terminal and access it in your browser with
`docker_ip_address:8888`.

There you are running the notebook.

For detailed instructions, [see here](https://sumankhanal.netlify.app/post/raku/raku_notebook/).


Once you follow the above instructions, you will get notebook as shown here:

![](https://github.com/sumanstats/raku-notebook/blob/main/imgs/notebook.PNG)

Feedback welcome !


