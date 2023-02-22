FROM centos:centos7.9.2009

RUN yum install -y vim-enhanced.x86_64  crontabs  && \
    echo "*/1 * * * * echo -e $(date '+%Y%m%d') >> /var/log/access.log" >> /var/spool/cron/root
