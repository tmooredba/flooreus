FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt update -y && \
    apt install -y apache2 && \
    apt install -y  apache2-utils && \
    apt clean
ADD web /var/www/html
WORKDIR /root
ENV HOME /root
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
