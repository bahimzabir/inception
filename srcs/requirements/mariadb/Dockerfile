FROM alpine:3.15

RUN apk update && apk add mariadb mariadb-client  && \
	mkdir -p /run/mysqld && \
	chown -R mysql:mysql /run/mysqld && \
	mysql_install_db --user=mysql --datadir=/var/lib/mysql && \
	chmod 777 /var/lib/mysql && \
	chown -R mysql:mysql /var/lib/mysql

RUN sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
RUN sed -i 's/#bind-address=0.0.0.0/bind-address=0.0.0.0/g' /etc/my.cnf.d/mariadb-server.cnf

EXPOSE 3306

COPY ./scripts/setup.sh /tmp/setup.sh

WORKDIR /tmp

RUN chmod +x ./setup.sh

CMD ./setup.sh

