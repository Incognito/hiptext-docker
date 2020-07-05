FROM ubuntu:trusty

RUN \
  apt-get update && apt-get install -y \
    bash \
    coreutils \
    curl \
    make \
    openssh-client \
    build-essential \
    pkg-config \
    libavcodec-dev \
    libavformat-dev \
    libfreetype6-dev \
    libgflags-dev \
    libgoogle-glog-dev \
    libjpeg-dev \
    libpng12-dev \
    libswscale-dev \
    ragel \
    zip \
    autoconf \
    unzip \
    locales; \
  locale-gen en_US.UTF-8; \
  update-locale LANG=en_US.UTF-8

RUN \
  curl --silent --retry 3 -L --output /tmp/zipball.zip --url https://github.com/Incognito/hiptext/archive/0.2.zip; \
  cd /tmp; \
  unzip /tmp/zipball.zip

RUN \
  cd /tmp/hiptext-0.2; \
  ./autogen.sh; \
  ./configure; \
  make -j2; \
  make install;

WORKDIR /tmp/hiptext-0.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
