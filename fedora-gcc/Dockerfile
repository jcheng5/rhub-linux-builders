## Emacs, make this -*- mode: sh; -*-

FROM fedora:latest

## Set a default user. Available via runtime flag
RUN useradd docker

RUN dnf install -y \
	gcc \
	gcc-c++ \
	gcc-gfortran \
	less \
	ca-certificates \
	curl \
	java-1.8.0-openjdk \
	bzip2-devel \
	cairo-devel \
	ghostscript \
	libcurl-devel \
	libicu-devel \
	libjpeg-turbo-devel \
	pcre-devel \
	libpng-devel \
	readline-devel \
	libtiff-devel \
	libX11-devel \
	libXt-devel \
	subversion \
	tcl-devel \
	texinfo \
	texlive-latex \
	texlive-collection-fontsextra \
	texlive-scheme-basic \
	tk-devel \
	unzip \
	xorg-x11-proto-devel \
	findutils \
	make \
	texinfo-tex \
	xz-devel \
	zlib-devel \
	libXmu-devel \
	tar \
	texlive-ec \
	texlive-parskip \
	texlive-collection-fontsrecommended \
	which \
	xorg-x11-server-Xvfb

RUN dnf install -y glibc-langpack-en.x86_64

RUN dnf install -y valgrind

RUN dnf install -y qpdf

RUN curl -o /usr/bin/pandoc.gz \
         https://files.r-hub.io/pandoc/linux-64/pandoc.gz && \
    gzip -d /usr/bin/pandoc.gz && \
    curl -o /usr/bin/pandoc-citeproc.gz \
	 https://files.r-hub.io/pandoc/linux-64/pandoc-citeproc.gz && \
    gzip -d /usr/bin/pandoc-citeproc.gz && \
    chmod +x /usr/bin/pandoc /usr/bin/pandoc-citeproc

RUN dnf install -y aspell aspell-en

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
