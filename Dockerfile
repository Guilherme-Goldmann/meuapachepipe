FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 80
RUN echo 'Obrigado Mari e Pepe Lindos demais <3'
