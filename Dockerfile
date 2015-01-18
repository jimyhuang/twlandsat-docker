FROM debian:jessie

RUN git clone https://github.com/jimyhuang/twlandsat.git
RUN chmod 755 twlandsat/install.sh
