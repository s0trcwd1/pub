#!/bin/bash

mkdir -p /var/log/rclone/

read -rp "what is dr: " -e dr

echo "the dr is ${dr}"

mkdir -p /data/${dr}

echo "[Unit]
Description=onedrive (rclone)
AssertPathIsDirectory=/data/${dr}/
After=plexdrive.service
[Service]
Type=simple
ExecStart = /usr/bin/rclone mount ${dr}: /data/${dr}/ --copy-links --no-gzip-encoding --no-check-certificate --allow-other --allow-non-empty --umask 000 --log-level INFO --log-file /var/log/rclone/rclone${dr}.log --transfers 1 --buffer-size 32M --low-level-retries 200 --dir-cache-time 10s --poll-interval 5s --vfs-cache-mode off --vfs-read-chunk-size 32M --vfs-read-chunk-size-limit 1G
ExecStop=/bin/fusermount -qzu /data/${dr}/
Restart=always
RestartSec=10
[Install]
WantedBy=default.target" > /lib/systemd/system/rclone${dr}.service


systemctl daemon-reload

systemctl start rclone${dr}.service

systemctl enable rclone${dr}.service

systemctl status rclone${dr}.service


#  /lib/systemd/system/

