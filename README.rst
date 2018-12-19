===================
 CSP Build testing
===================

Introduction
============

This GIT repository contains scripts to test that CSP will build using different
Linux distributions.

The current list of distributions tested are:

* Ubuntu 18.04
* Fedora 28
* Fedora 29
* Debian 9.6

The testing are done utilizing docker. One container exist for every target
distribution.

How to test
===========

Build all the docker containers using::

  make

This will give you a list of docker images that you can use to build the code.
This is the list of images::

  sudo docker images|grep csp
  csp                        ubuntu_18.04        4c487392be2f        12 minutes ago      1.17GB
  csp                        debian_9.6          29ddde5a38ae        19 minutes ago      1.3GB
  csp                        fedora_29           cc0341243a81        About an hour ago   1.05GB
  csp                        fedora_28           4c09f2de3b1a        35 hours ago        1.05GB


Test build for all distributions
--------------------------------

This will build CSP on all the distributions::

  mkdir csp_project
  cd csp_project
  git clone https://github.com/nsmoooose/csp.git
  git clone https://github.com/nsmoooose/csp_build.git
  cd csp_build
  # Build all docker containers:
  sudo make
  sudo ./test_build_all.sh

Build for a specific distribution
---------------------------------

This is done by specifying the image name::

  cd /home/user_x/Project/
  git clone https://github.com/nsmoooose/csp.git

  # Configure to check that all dependencies are there.
  sudo docker run --rm -it -v /home/henrikn/Projekt/csp/:/code/project csp:ubuntu_18.04 /code/configure

  # Build the project.
  sudo docker run --rm -it -v /home/henrikn/Projekt/csp/:/code/project csp:ubuntu_18.04 /code/build

  # Some very simple steps to see that csplib and cspsim is loading from python.
  sudo docker run --rm -it -v /home/henrikn/Projekt/csp/:/code/project csp:ubuntu_18.04 /code/test_build

  # 'Clean' the build.
  sudo docker run --rm -it -v /home/henrikn/Projekt/csp/:/code/project csp:ubuntu_18.04 /code/clean
