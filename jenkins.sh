#! /bin/sh

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS

# We don't build the relase versions periodically, these are
# done manually, as needed.

./build-image.sh debian-gcc         || true
./build-image.sh debian-gcc-devel   || true
# ./build-image.sh debian-gcc-release || true
./build-image.sh debian-gcc-patched || true

./build-image.sh fedora-clang       || true
./build-image.sh fedora-clang-devel || true
./build-image.sh fedora-gcc         || true
./build-image.sh fedora-gcc-devel   || true

./build-image.sh centos6-epel       || true
./build-image.sh centos6-epel-rdt   || true

./build-image.sh ubuntu             || true
./build-image.sh ubuntu-gcc         || true
./build-image.sh ubuntu-gcc-devel   || true
# ./build-image.sh ubuntu-gcc-release || true

/build-image.sh rocker-gcc-san      || true
