#!/bin/bash
set -e

[ -d build_result ] || mkdir build_result
rm build_result/*

platforms=(csp:ubuntu_18.04 csp:debian_9.6 csp:fedora_28 csp:fedora_29)
for platform in ${platforms[@]}; do
	echo "TEST BUILD ON $platform"
	{
		docker run --rm -it -v $(pwd)/../:/code/project $platform /code/configure
		docker run --rm -it -v $(pwd)/../:/code/project $platform /code/clean
		docker run --rm -it -v $(pwd)/../:/code/project $platform /code/build
		docker run --rm -it -v $(pwd)/../:/code/project $platform /code/test_build
	} >> build_result/$platform.txt 2>&1
done
