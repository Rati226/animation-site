FROM public.ecr.aws/docker/library/httpd:2.4

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
# RUN mkdir -p /app/product1 && chown -R www-data:www-data /app
WORKDIR /app/product1 
COPY --chown=www-data:www-data . . 