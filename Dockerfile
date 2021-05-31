FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y apache2
RUN apt install -y  apache2-utils
RUN apt clean
ADD web /var/www/html
EXPOSE 8010
CMD ["apache2ctl", "-D", "FOREGROUND"]
