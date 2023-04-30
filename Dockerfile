# остання версія убунту
FROM ubuntu:23.04
RUN apt-get update && apt-get install -y curl

COPY bash_script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/bash_script.sh

CMD while true; do /usr/local/bin/bash_script.sh; sleep 600; done