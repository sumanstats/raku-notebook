FROM sumankhanal/rakudo@sha256:aee332b61c422d31d24f1f1362a27b3a4ce064848491f741936402034bb0240c
LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"
    
#..............................................


ENV PATH=$PATH:/usr/share/perl6/site/bin


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential cmake ninja-build \
    wget libzmq3-dev ca-certificates jupyter \
    jupyter-notebook jupyterhub \
    && rm -rf /var/lib/apt/lists/* \ 
    && zef -v install https://github.com/bduggan/raku-jupyter-kernel.git \ 
    && zef -v install https://github.com/sumanstats/Statistics.git \
    && zef install Pod::To::HTML \
    && jupyter-kernel.raku --generate-config \
    && jupyter notebook --generate-config \
    && ln -s /usr/share/perl6/site/bin/* /usr/local/bin
    

#Enabling Binder..................................


ENV NB_USER=suman
ENV NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
    

#For enabling binder..........................
COPY ./raku-notebooks/ ${HOME}

USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
WORKDIR ${HOME}
#..............................................


EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
