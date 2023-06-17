#!/usr/bin/env bash
source_move-to-directory"/path/to/source/move-to-directory"
destination_move-to-directory="/path/to/remote/server/move-to-directory"
remote_server="user@remote-server"
backup_file="backup-0323-RW-SOFEN-8120120-12.sh.tar.gz"
tar -czf "$backup_file" "$source_move-to-directory"
scp "$backup_file" "$remote_server:$destination_move-to-directory"
rm "$backup_file"
echo "Backup completed successfully!"
