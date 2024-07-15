FROM sumankhanal/raku-notebook@sha256:e1c43cc5315ef0d3853c1633413dbad3a16c2a59144e256646169e0bdd4d3b45


LABEL maintainer="Dr Suman Khanal <suman81765@gmail.com>"
    
#..............................................


    


USER root
RUN chown -R 1000 /home/suman

WORKDIR /home/suman
USER suman 
# # #..............................................

# # Make port 8888 available to the world outside this container
EXPOSE 8888
# 
CMD ["jupyter", "notebook", "--NotebookApp.default_url=/lab/", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
