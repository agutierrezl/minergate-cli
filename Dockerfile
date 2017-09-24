FROM ubuntu:16.04
LABEL maintainer="aryam.gl2011@gmail.com"

RUN apt-get update \
    && apt-get -qq --no-install-recommends install \
        ca-certificates \
        wget \
    && rm -r /var/lib/apt/lists/*

RUN wget -q --content-disposition https://minergate.com/download/deb-cli \
    && dpkg -i *.deb \
    && rm *.deb

ENTRYPOINT ["minergate-cli"]
CMD ["-user", "aryam.gl2011@gmail.com", "-xmr"]
