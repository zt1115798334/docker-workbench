#!/bin/bash
apt update -y
apt install -y --no-install-recommends cron wget
wget --no-check-certificate -O /root/percona-xtrabackup-80_8.0.28-21-1.focal_amd64.deb https://downloads.percona.com/downloads/Percona-XtraBackup-LATEST/Percona-XtraBackup-8.0.28-21/binary/debian/focal/x86_64/percona-xtrabackup-80_8.0.28-21-1.focal_amd64.deb
dpkg -i /root/percona-xtrabackup-80_8.0.28-21-1.focal_amd64.deb
apt install -fy
apt clean
rm -rf /var/log/*
rm -rf /var/lib/apt/lists/*
rm -rf /root/percona-xtrabackup-80_8.0.28-21-1.focal_amd64.deb
