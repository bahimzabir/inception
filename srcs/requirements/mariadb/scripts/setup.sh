
#!/bin/bash

echo "CREATE DATABASE $db_name ;" > db1.sql
echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%' IDENTIFIED BY '$db_pwd';" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql


mysqld --user=mysql --init-file=/tmp/db1.sql