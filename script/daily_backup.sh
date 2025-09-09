#!/bin/sh
rsync -a --delete --progress --checksum . /tmp/backup/ --log-file=/tmp/backup.log

