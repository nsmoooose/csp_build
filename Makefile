all: debian fedora ubuntu

debian:
	docker build -f debian_9.6/Dockerfile . -t csp:debian_9.6
	docker build -f debian_10.0/Dockerfile . -t csp:debian_10.0

fedora:
	docker build -f fedora_41/Dockerfile . -t csp:fedora_41

ubuntu:
	docker build -f ubuntu_18.04/Dockerfile . -t csp:ubuntu_18.04
	docker build -f ubuntu_19.04/Dockerfile . -t csp:ubuntu_19.04
