FROM zt1115798334/centos7.9.2009-jdk8u332
RUN set -eux; 	yum -y update
RUN set -eux; \
 	yum  -y install \
 	 	make \
        gcc \
        gcc-c++ \
        bzip2 \
        git ; \
    rm -rf /var/cache/yum
RUN set -eux; \
    curl -fl -o yasm-1.3.0.tar.gz https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz \
    && tar -zxvf yasm-1.3.0.tar.gz; \
    rm -rf yasm-1.3.0.tar.gz; \
    curl -fl -o nasm-2.14.02.tar.gz https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.gz \
    && tar -zxvf nasm-2.14.02.tar.gz; \
    rm -rf nasm-2.14.02.tar.gz; \
    curl -fl -o x264-master.tar.bz2 https://code.videolan.org/videolan/x264/-/archive/master/x264-master.tar.bz2 \
    && tar xvf x264-master.tar.bz2; \
    rm -rf x264-master.tar.bz2; \
    curl -fl -o ffmpeg-4.2.7.tar.bz2 https://ffmpeg.org/releases/ffmpeg-4.2.7.tar.bz2 \
    && tar xvf ffmpeg-4.2.7.tar.bz2; \
    rm -rf ffmpeg-4.2.7.tar.bz2; \
    cd /yasm-1.3.0; \
    ./configure; \
    make; \
    make install; \
    cd /nasm-2.14.02; \
    ./configure; \
    make; \
    make install; \
    cd /x264-master; \
    ./configure; \
    make; \
    make install; \
    make install-lib-static ; \
    cd /ffmpeg-4.2.7; \
    ./configure --disable-debug --enable-static --enable-libx264 --enable-gpl --extra-libs=-ldl; \
    make; \
    make install;

