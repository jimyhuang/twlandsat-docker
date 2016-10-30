# TO jimyhuang/twlandsat
FROM jimyhuang/twlandsat-util

RUN \
  cd /home && \
  git clone https://github.com/jimyhuang/twlandsat.git twlandsat && \
  chmod 755 /home/twlandsat/scripts/*

# defafult
WORKDIR /home/twlandsat
ENV MAGICK_MEMORY_LIMIT=256
ENV MAGICK_MAP_LIMIT=256

ENTRYPOINT ["/home/twlandsat/start.sh"]
