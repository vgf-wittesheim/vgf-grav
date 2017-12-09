#FROM nginx
#RUN apt-get update && apt-get install -y php5-common php5-cli
FROM richarvey/nginx-php-fpm

#RUN apt-get update \
#    && apt-get install -y php7.0 php7.0-zip php7.0-mbstring php7.0-curl php7.0-gd
#RUN apt-get install -y git nginx
#RUN apt-get install -y libnss-wrapper
##RUN apt-get update && apt-get install -y  php7.0-gd php7.0-zip
#ENV GDIR /var/www/html
#ADD ./vgf $GDIR
#WORKDIR /$GDIR
#RUN $GDIR/bin/grav install \
#    && find $GDIR -type f -exec chmod 664 {} + \
#    && find $GDIR -type d -exec chmod 775 {} +

## forward request and error logs to docker log collector
#RUN ln -sf /dev/stdout /var/log/nginx/access.log \
#	&& ln -sf /dev/stderr /var/log/nginx/error.log
#
WORKDIR /var/www/html
EXPOSE 8080 443
ENV STARTUPDIR /docker-startup
ADD ./docker $STARTUPDIR
RUN find  $STARTUPDIR -name '*.sh' -exec chmod a+x {} +
USER 1000

CMD /docker-startup/startup.sh
#
##ADD docker/etc/nginx.conf /etc/nginx/
#ADD docker/webserver-configs/nginx.conf /etc/nginx/sites-available/grav-site
#RUN ln -s /etc/nginx/sites-available/grav-site /etc/nginx/sites-enabled/grav-site
#ADD docker/install /install
#RUN chmod +x /install/start.sh
#ENTRYPOINT /install/start.sh

