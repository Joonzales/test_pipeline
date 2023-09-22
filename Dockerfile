FROM	httpd:latest
COPY	./index.html /usr/local/apache2/htdocs/
RUN 	umask 011
RUN 	httpd restart
RUN	chown www-data:www-data -R /usr/local/apache2
RUN	chmod 666 -R /usr/local/apache2/logs


EXPOSE	80
