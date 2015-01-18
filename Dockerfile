FROM debian:jessie

RUN echo "deb http://mirrors.linode.com/debian/ testing main contrib non-free  " >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install git
RUN cd /home
RUN git clone https://github.com/jimyhuang/twlandsat.git twlandsat
RUN chmod 755 ./twlandsat/install.sh
RUN /home/twlandsat/install.sh
