FROM debian:stretch-slim
MAINTAINER TQW <jack_coder@outlook.com>

WORKDIR /opt

RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y wget libpcre3-dev build-essential libssl-dev zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && wget http://nginx.org/download/nginx-1.16.0.tar.gz \
    && tar -zxvf nginx-1.*.tar.gz \
    && cd nginx-1.* \
    && ./configure --prefix=/opt/nginx --user=nginx --group=nginx --with-http_stub_status_module --with-http_ssl_module --with-ipv6 --with-stream --with-stream_ssl_module --with-threads --with-stream --with-stream_ssl_module \
    && make && make install \
    && cd .. && rm -rf nginx-1.* \
    && /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezon \
    && adduser --system --no-create-home --disabled-login --disabled-password --group nginx

# config dirs
WORKDIR /opt/nginx/conf
RUN mkdir http.conf.d && mkdir stream.conf.d

WORKDIR /

CMD ["/opt/nginx/sbin/nginx", "-g", "daemon off;"]