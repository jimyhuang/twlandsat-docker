FROM debian:jessie

RUN echo "deb http://mirrors.linode.com/debian/ testing main contrib non-free  " >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y git wget dans-gdal-scripts imagemagick make gcc build-essential libfltk1.1 cmake gdal-bin libgdal-dev geotiff-bin libgeotiff-dev libglu1-mesa
WORKDIR /usr/local
RUN wget --no-verbose http://goo.gl/nM7dxT -O OTB-3.20.0.tgz
RUN tar -zxf OTB-3.20.0.tgz && rm -f OTB-3.20.0.tgz
RUN mkdir /usr/local/otb
WORKDIR /usr/local/otb
RUN cd /usr/local/otb \
  && cmake ../OTB-3.20.0 \
  || sed -i 's/OTB_USE_VISU_GUI:BOOL=ON/OTB_USE_VISU_GUI:BOOL=OFF/g' CMakeCache.txt
RUN cmake ../OTB-3.20.0
RUN make
RUN make install
