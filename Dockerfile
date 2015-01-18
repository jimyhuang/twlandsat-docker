FROM debian:jessie

RUN echo "deb http://mirrors.linode.com/debian/ testing main contrib non-free  " >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install git
RUN git clone https://github.com/jimyhuang/twlandsat.git /home/twlandsat
RUN chmod 755 /home/twlandsat/install.sh
RUN /home/twlandsat/install.sh
