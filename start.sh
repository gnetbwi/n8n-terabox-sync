#!/bin/bash
# Install rclone
apk add --no-cache curl unzip
curl -L https://downloads.rclone.org/rclone-current-linux-amd64.zip -o rclone.zip
unzip rclone.zip
mv rclone-*-linux-amd64/rclone /usr/bin/

# Jalankan rclone WebDAV + n8n
rclone serve webdav terabox:SyncToTG --addr :8080 --user user --pass pass &
n8n start
