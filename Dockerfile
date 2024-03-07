FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN rm -f /var/www/html/*
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
