FROM alpine

ARG VERSION=2.0

RUN \
  apk add --no-cache -t .apks make g++ && \
  mkdir -p /usr/src /src && cd /usr/src && \
  wget https://github.com/danmar/cppcheck/archive/${VERSION}.tar.gz && \
  tar zxf ${VERSION}.tar.gz && \
  cd cppcheck-${VERSION} && \
  make install FILESDIR=/usr/share CXXFLAGS="-O2 -DNDEBUG --static" && \
  strip /usr/bin/cppcheck && \
  apk del .apks && \
  rm -rf /usr/src
