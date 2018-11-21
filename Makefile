all: debian fedora ubuntu

debian:
	docker build -f debian_9.6/Dockerfile . -t csp:debian_9.6

fedora:
	docker build -f fedora_28/Dockerfile . -t csp:fedora_28
	docker build -f fedora_29/Dockerfile . -t csp:fedora_29

ubuntu:
	docker build -f ubuntu_18.04/Dockerfile . -t csp:ubuntu_18.04
