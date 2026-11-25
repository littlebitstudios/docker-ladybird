FROM ghcr.io/linuxserver/baseimage-selkies:ubunturesolute

ENV TITLE="Ladybird"
ENV PIXELFLUX_WAYLAND=true

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    wget -qO /etc/apt/keyrings/ladybird.asc 'https://apt.ladybird.org/ladybird.asc' && \
    wget -qO /etc/apt/sources.list.d/ladybird.sources 'https://apt.ladybird.org/ladybird-resolute.sources' && \
    apt-get update && \
    apt-get install -y --no-install-recommends ladybird && \
    (gtk-update-icon-cache -f -t /usr/share/icons/hicolor || true) && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

COPY /root /

EXPOSE 3001
VOLUME /config