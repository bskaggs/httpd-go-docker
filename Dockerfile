FROM scratch
COPY httpd /usr/sbin/httpd
VOLUME /srv/httpd
EXPOSE 80
CMD ["/usr/sbin/httpd"]
