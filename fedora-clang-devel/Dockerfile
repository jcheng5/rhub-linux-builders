## Emacs, make this -*- mode: sh; -*-

FROM rhub/fedora-clang

MAINTAINER "r-hub admin" admin@r-hub.io

ENV CRAN http://cran.r-project.org

RUN cd /tmp \
    && svn co https://svn.r-project.org/R/trunk R-devel

ENV RPREFIX /opt/R-devel

ENV ROPTIONS --with-recommended-packages=no --enable-R-shlib --enable-R-static-lib

ENV CC /usr/bin/clang
ENV CXX /usr/bin/clang++
ENV F77 gfortran
ENV CPP cpp

RUN cd /tmp/R-devel \
    && R_PAPERSIZE=letter                                    \
    R_BATCHSAVE="--no-save --no-restore"                     \
    ./configure --prefix=${RPREFIX} ${ROPTIONS}              \
    && make                                                  \
    && make install

ENV RHUB_PLATFORM linux-x86_64-fedora-clang
