#!/bin/sh

yum install  pcre2-devel pcre-devel

rm -rf nginx
mkdir -p nginx
cd nginx

function download()
{
    wget https://nginx.org/download/nginx-1.20.2.tar.gz
    wget https://github.com/openresty/echo-nginx-module/archive/refs/heads/master.zip

    tar -zxvf nginx-1.20.2.tar.gz
    unzip master.zip
}

download

PWD=`pwd`
ECHO_PATH=$PWD/echo-nginx-module-master
NGINX_CONF=$PWD/../nginx.conf
SSL_CONF=$PWD/../ssl.*


cd nginx-1.20.2/
./configure --with-http_ssl_module --add-module=$ECHO_PATH
make -j8
make install
echo cp -f $NGINX_CONF /usr/local/nginx/conf/
cp -f $NGINX_CONF /usr/local/nginx/conf/
cp -f $SSL_CONF /usr/local/nginx/conf/


