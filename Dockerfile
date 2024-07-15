FROM sumankhanal/rakudo@sha256:31ff87a987f3766c42d346a42626c38b8cbe38b841ef474608292777a0c3cbb1
LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"
    
#..............................................

ENV PATH=/root/miniconda3/bin:/usr/share/perl6/site/bin:$PATH


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    gcc make cmake ninja-build wget libzmq3-dev \ 
    # gcc make used for raku kernel dependencies with compiled C code 
    && rm -rf /var/lib/apt/lists/* \ 
    && wget https://repo.anaconda.com/miniconda/Miniconda3-py312_24.5.0-0-Linux-x86_64.sh -O miniconda.sh \
    # && mkdir -p $HOME/miniconda3 \
    && bash miniconda.sh -b -p /root/miniconda3 \
    && rm -f miniconda.sh \
    && conda install -y jupyter notebook jupyterhub \
    && zef -v install https://github.com/bduggan/raku-jupyter-kernel.git \ 
    # && zef install Pod::To::HTML \
    && jupyter-kernel.raku --generate-config \
    && jupyter notebook --generate-config 
    # \    && conda clean -a
    


WORKDIR /tmp
# # #..............................................

# # Make port 8888 available to the world outside this container
EXPOSE 8888

CMD ["jupyter", "notebook", "--NotebookApp.default_url=/lab/", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
