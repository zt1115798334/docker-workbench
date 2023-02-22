FROM ubuntu:20.04

RUN set -eux; apt-get update
RUN set -eux; apt-get -y install vim cron rsyslog wget git python3 python3-pip



RUN set -eux; wget https://downloads.percona.com/downloads/Percona-XtraBackup-8.0/Percona-XtraBackup-8.0.31-24/binary/debian/focal/x86_64/percona-xtrabackup-80_8.0.31-24-1.focal_amd64.deb

RUN set -eux; apt-get -y install libev4 && apt -y --fix-broken install
RUN set -eux; dpkg -i percona-xtrabackup-80_8.0.31-24-1.focal_amd64.deb
RUN set -eux; apt-get update
RUN set -eux; apt-get install -y percona-xtrabackup-80



RUN set -eux; git clone https://github.com/zt1115798334/xtra_backup_script.git
RUN set -eux; pip3 install configparser
RUN set -eux; echo "cron.*  /var/log/cron.log" >> /etc/rsyslog.d/50-default.conf

RUN set -eux; service rsyslog restart
RUN set -eux; service cron restart


大概就是这样 还需要再改改测试

RUN set -eux; wget https://repo.percona.com/apt/percona-release_latest.bionic_all.deb && dpkg -i percona-release_latest.generic_all.deb
RUN set -eux; apt-get update
RUN set -eux; \
    apt-get -y install https://repo.percona.com/apt/percona-release_latest.generic_all.deb \
    && percona-release enable-only tools release \
    && apt-get -y install percona-xtrabackup-80 qpress git python3 python3-devel crontabs; rm -rf /var/cache/yum
RUN set -eux; \
    git clone https://github.com/zt1115798334/xtra_backup_script.git
RUN set -eux; pip3 install configparser
RUN set -eux; echo "start join" >> /var/log/xtra_backup.log

RUN set -eux; \
    echo "0 */1 * * *  python3 /xtra_backup_script/xtra_backup.py >> /var/log/xtra_backup.log" >> /var/spool/cron/root \
    && echo "*/1 * * * * echo run... >> /var/log/access.log" >> /var/spool/cron/crontabs/root
    && crontab -u root /var/spool/cron/crontabs/root

