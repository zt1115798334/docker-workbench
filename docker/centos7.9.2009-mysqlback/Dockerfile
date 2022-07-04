FROM centos:7.9.2009

RUN set -eux; 	yum install -y 		mydumper 		; 	rm -rf /var/cache/yum

RUN set -eux; \
    curl -fl -o mysql-8.0.29-linux-glibc2.12-x86_64.tar.gz wget https://cdn.mysql.com//Downloads/MySQL-8.0/mysql-8.0.29-linux-glibc2.12-x86_64.tar.xz \
    && tar -zxvf mysql-8.0.29-linux-glibc2.12-x86_64.tar.gz; \
    rm -rf mysql-8.0.29-linux-glibc2.12-x86_64.tar.gz; \
