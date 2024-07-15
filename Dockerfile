FROM sumankhanal/raku-notebook@sha256:596df3011b970ba23be62e45ce6654dd502c3e556cde63e057bc1d63136a3cf3


LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"
    
#..............................................


ARG NB_USER=suman
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
RUN adduser --disabled-password --gecos "Default user" --uid ${NB_UID} ${NB_USER}
# COPY ./raku-notebooks/ ${HOME}

# USER root
RUN chown -R ${NB_UID} ${HOME}   

ENV PATH=/root/miniconda3/bin:/usr/share/perl6/site/bin:$PATH
USER ${NB_USER}


