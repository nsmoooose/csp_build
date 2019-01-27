FROM fedora:29

RUN dnf install -y git cmake make gcc gcc-c++ gdb OpenSceneGraph-devel OpenSceneGraph \
 libsigc++20-devel commoncpp2-devel swig \
 scons wxPython python-lxml SDL-devel SDL_image-devel \
 freealut freealut-devel libvorbis-devel \
 python-devel libjpeg-turbo-devel python3-ply

mingw64-gcc-c++
mingw64-gcc
mingw64-freetype


RUN mkdir /code
WORKDIR /code
RUN git clone https://github.com/nsmoooose/csp-osgal
WORKDIR /code/csp-osgal
RUN cmake .
RUN make
RUN make install
WORKDIR /code/project
ADD shared/* /code/

