FROM php:8.1-apache

# 安装项目必需的 PHP 扩展
RUN docker-php-ext-install pdo_mysql mbstring curl

# 开启 Apache rewrite 模块
RUN a2enmod rewrite

# 将项目代码复制到 Apache 默认网站根目录
COPY . /var/www/html/

# 设置工作目录
WORKDIR /var/www/html
