# mengambil base image dari alpine
FROM alpine
# instalasi web server lighttpd
RUN apk add --update lighttpd
# melakukan copy file2 didalam direktori etc/lighttpd/
COPY etc/lighttpd/* /etc/lighttpd/
# melakukan copy file2 didalam direktori var/www/html/*
COPY var/www/html/* /var/www/html/ 

EXPOSE 80
# container akan menjalankan lighttpd dengan perintah 
# lighttpd -D -f /etc/lighttpd/lighttpd.conf
CMD ["lighttpd","-D","-f", "/etc/lighttpd/lighttpd.conf"]

