#!/bin/bash
set -x
TOMCAT_AJP=${1:-"localhost:8009"}
KERBEROS_REALM=${2:-"EXAMPLE_REALM"}

#docker run -p $PORT:80 -e SERVER_NAME="${SERVER_NAME}" -e SSL_PROTOCOL="${SSL_PROTOCOL}" -v ${PWD}/${SERVER_NAME}.crt:/usr/local/apache2/conf/server.crt -v ${PWD}/${SERVER_NAME}.key:/usr/local/apache2/conf/server.key topolik/docker-apache-httpd-https

#docker run -it -e SERVER_NAME="${SERVER_NAME}" -e SSL_PROTOCOL="${SSL_PROTOCOL}" -v ${PWD}/${SERVER_NAME}.crt:/usr/local/apache2/conf/server.crt -v ${PWD}/${SERVER_NAME}.key:/usr/local/apache2/conf/server.key topolik/docker-apache-httpd-https /bin/bash


docker run \
    --network="host" \
    -e TOMCAT_AJP="$TOMCAT_AJP" -e KERBEROS_REALM="$KERBEROS_REALM" \
    topolik/docker-apache-httpd-kerberos
#    -v $PWD/kerberos.keytab:/etc/apache2/kerberos.keytab

