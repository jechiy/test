FROM tutum/apache-php:latest
MAINTAINER Jechiy <773372347@qq.com>
WORKDIR /
RUN apt-get update && \
    rm -rf /app && \
    COPY . /app
    rm -rf /var/lib/apt/lists/*
RUN sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf
RUN a2enmod rewrite
EXPOSE 80
CMD [ "php", "./hello.php" ]
