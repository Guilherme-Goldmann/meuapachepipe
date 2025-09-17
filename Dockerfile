FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 80
RUN echo 'Teste exposição da porta 80'
