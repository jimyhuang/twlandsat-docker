# TO jimyhuang/twlandsat
FROM jimyhuang/twlandsat-util

RUN \
  cd /home && \
  git clone https://github.com/jimyhuang/twlandsat.git twlandsat && \
  chmod 755 /home/twlandsat/*.sh && chmod 755 /home/twlandsat/process/*.sh

# defafult
WORKDIR /home/twlandsat
ENTRYPOINT ["/home/twlandsat/start.sh"]
