FROM centos:7.9.2009

RUN set -eux; yum -y update
RUN set -eux; \
    yum -y install https://repo.percona.com/yum/percona-release-latest.noarch.rpm \
    && percona-release enable-only tools release \
    && yum -y install percona-xtrabackup-80 qpress git python3 python3-devel crontabs; rm -rf /var/cache/yum
RUN set -eux; \
    git clone https://github.com/zt1115798334/xtra_backup_script.git
RUN set -eux; pip3 install configparser
RUN set -eux; \
    echo "start join" >> /var/log/xtra_backup.log
RUN set -eux; \
    echo "0 */1 * * *  python3 /xtra_backup_script/xtra_backup.py >> /var/log/xtra_backup.log" >> /var/spool/cron/root \
    && echo "*/1 * * * * echo -e $(date '+%Y%m%d%H%M%S') >> /var/log/access.log" >> /var/spool/cron/root