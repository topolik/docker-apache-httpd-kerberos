FROM debian:stretch-slim

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt update;\
    apt install -y apache2 libapache2-mod-auth-kerb krb5-user


RUN cd /etc/apache2;\
    printf "\nIncludeOptional my.conf\n" >>/etc/apache2/apache2.conf

COPY my.conf /etc/apache2/

COPY apache2-foreground /usr/local/bin

EXPOSE 10080

CMD ["apache2-foreground"]
