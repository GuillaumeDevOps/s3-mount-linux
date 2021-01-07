FROM jgwill/ubuntu

USER root

RUN apt update

ENV DEBIAN_FRONTEND noninteractive

RUN apt install s3fs -y

COPY .passwd-s3fs /home/ubuntu
COPY .passwd-s3fs /root
RUN chmod 600 /home/ubuntu/.passwd-s3fs
RUN chown ubuntu /home/ubuntu/.passwd-s3fs
RUN chmod 600 /root/.passwd-s3fs


WORKDIR /setup
#@STCIssue Atempt to debug that failed
#RUN  apt-get install build-essential -y \
#&& apt install -y openssl-devel  \
#&& git clone https://github.com/s3fs-fuse/s3fs-fuse \
#&& cd s3fs-fuse/ \
#&& ./autogen.sh \
#&& export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig \
#&& ./configure --prefix=/usr --with-openssl \
#&& make \
#&& sudo make install


WORKDIR /work



USER ubuntu



