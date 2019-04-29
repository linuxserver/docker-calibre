FROM lsiobase/guacgui

# set version label
ARG BUILD_DATE
ARG VERSION
ARG CALIBRE_RELEASE
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="aptalca"

ENV APPNAME="calibre"

RUN \
 echo "**** install runtime packages ****" && \
 apt-get update && \
 apt-get install -y \
        dbus \
        jq \
        python \
        wget && \
 echo "**** install calibre ****" && \
 mkdir -p \
        /opt/calibre && \
 if [ -z ${CALIBRE_RELEASE+x} ]; then \
        CALIBRE_RELEASE=$(curl -sX GET "https://api.github.com/repos/kovidgoyal/calibre/releases/latest" \
        | jq -r .tag_name); \
 fi && \
 CALIBRE_URL=$(curl -s https://api.github.com/repos/kovidgoyal/calibre/releases \
        | jq -r 'first(.[] | select(.tag_name == '\"${CALIBRE_RELEASE}\"')) | first(.assets[] | select(.label == "64bit Linux binary")) | .browser_download_url') && \
 curl -o \
        /tmp/calibre-tarball.txz -L \
        "$CALIBRE_URL" && \
 tar xvf /tmp/calibre-tarball.txz -C \
        /opt/calibre && \
 /opt/calibre/calibre_postinstall && \
 dbus-uuidgen > /etc/machine-id && \
 echo "**** cleanup ****" && \
 apt-get clean && \
 rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

# add local files
COPY root/ /
