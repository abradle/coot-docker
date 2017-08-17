FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y  patch \
 m4 \ 
 g++ \ 
 libxext-dev \ 
 libxt-dev \
 libc6-dev \
 libglu1-mesa-dev \  
 mesa-common-dev \
 swig \
 libgtk2.0-dev \ 
 libgnomecanvas2-dev \
 libncurses5-dev \
 libxmu-dev \
 libjpeg-dev \
 wget \ 
 git
RUN git clone https://github.com/pemsley/coot.git /usr/local/coot
RUN cd /usr/local/coot && git fetch origin refinement
RUN cd /usr/local/coot && git checkout refinement
RUN cd /usr/local/coot && /bin/bash build-it
