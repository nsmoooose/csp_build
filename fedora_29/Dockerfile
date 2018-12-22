FROM fedora:29

RUN dnf install -y git cmake make gcc gcc-c++ gdb OpenSceneGraph-devel OpenSceneGraph \
 libsigc++20-devel commoncpp2-devel swig \
 scons wxPython python-lxml SDL-devel SDL_image-devel \
 freealut freealut-devel libvorbis-devel \
 python-devel libjpeg-turbo-devel python3-ply

RUN mkdir /code
WORKDIR /code
RUN git clone https://github.com/nsmoooose/csp-osgal
WORKDIR /code/csp-osgal
RUN cmake -DLIB_POSTFIX=64 -DCMAKE_INSTALL_PREFIX=/usr .
RUN make
RUN make install
WORKDIR /code/project
ADD shared/* /code/
