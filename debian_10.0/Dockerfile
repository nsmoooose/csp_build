FROM debian:10.0
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install \
 cmake \
 git \
 libalut-dev \
 libcommoncpp2-dev \
 libjpeg62-turbo-dev \
 libopenthreads-dev \
 libsdl1.2-dev \
 libsigc++-2.0-dev \
 libvorbis-dev \
 openscenegraph-3.4-dev \
 python-dev \
 python-lxml \
 python-wxgtk3.0 \
 python3-ply \
 scons \
 swig

RUN apt-get -y install \
 g++

RUN mkdir /code
WORKDIR /code
RUN git clone https://github.com/nsmoooose/csp-osgal
WORKDIR /code/csp-osgal
RUN cmake -DLIB_POSTFIX= -DCMAKE_INSTALL_PREFIX=/usr .
RUN make
RUN make install
WORKDIR /code/project
ADD shared/* /code/
