
#!bin/bash

cd /var/www/html

rm -rf *

sed -i 's#listen = 127.0.0.1:9000#listen = 0.0.0.0:9000#' /etc/php7/php-fpm.d/www.conf

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download --force --allow-root  --version=5.8.1 --locale=en_US

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i -r "s/database_name_here/$db_name/1" wp-config.php
sed -i -r "s/username_here/$db_user/1"       wp-config.php
sed -i -r "s/password_here/$db_pwd/1"        wp-config.php

sed -i "39 i define( 'WP_REDIS_HOST', 'redis' );\ndefine( 'WP_REDIS_PORT', '6379' );\n" wp-config.php


sed -i -r "s/localhost/mariadb/1"    wp-config.php 

wp core install --url=$wp_url/ --title=$wp_title --admin_user=$wp_admin_user --admin_password=$wp_password --admin_email=$wp_admin_email --skip-email --allow-root

wp user create $wp_user $wp_email --role=author --user_pass=$wp_password --allow-root

#redis pluging

chown -R nobody:nobody *

wp plugin install redis-cache --activate

wp redis enable


exec php-fpm7 -F -R
