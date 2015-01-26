FROM ubuntu:trusty

RUN apt-get install -y software-properties-common python-software-properties
RUN apt-get update && apt-get install -y git python-pip build-essential libssl-dev libffi-dev python-dev python-gdal libgdal1-dev gdal-bin imagemagick geotiff-bin 
RUN pip install -U git+git://github.com/developmentseed/landsat-util.git
