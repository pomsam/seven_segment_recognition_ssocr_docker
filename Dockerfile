FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
ENV http_proxy [dummy]
ENV https_proxy [dummy]
RUN apt-get update && apt-get install -y tzdata
ENV TZ Asia/Tokyo
RUN apt-get update -qq &&\
    apt-get install -y make git libx11-dev libimlib2-dev
RUN git clone https://github.com/pomsam/ssocr.git &&\
    cd ssocr &&\
    make &&\
    mv ./ssocr /usr/local/bin/ssocr
RUN mkdir /app
WORKDIR /app
COPY . /app
