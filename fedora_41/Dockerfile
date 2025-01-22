FROM fedora:41

RUN dnf install -y git cmake make gcc gcc-c++ gdb OpenSceneGraph-devel OpenSceneGraph \
	libsigc++20-devel commoncpp2-devel swig \
	scons python3-wxpython4 python-lxml SDL-devel SDL_image-devel \
	freealut freealut-devel libvorbis-devel \
	python3-devel libjpeg-turbo-devel python3-ply \
	python3-setuptools

RUN mkdir /code
WORKDIR /code
RUN git clone https://github.com/nsmoooose/csp-osgal
WORKDIR /code/csp-osgal
RUN cmake -DLIB_POSTFIX=64 \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DBUILD_EXAMPLES_OALPP=OFF \
	-DBUILD_EXAMPLES_OSGAL=OFF
RUN make
RUN make install
WORKDIR /code/project
ADD shared/* /code/
