FROM	httpd:latest
COPY	./index.html /usr/local/apache2/htdocs/
RUN chown www-data:www-data -R /usr/local/apache2
RUN chmod 664 -R /usr/local/apache2/logs

EXPOSE	80
