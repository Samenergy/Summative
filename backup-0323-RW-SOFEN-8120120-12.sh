#!/usr/bin/env bash
source_directory="move-to-directory"
destination_directory="/home/sftp-student/03033/summative"
remote_server="a0dfc11ba139@a0dfc11ba139.a982e858.alu-cod.online"
backup_file="backup-0323-RW-SOFEN-8120120-12.sh"
tar -czf "$backup_file" "$source_directory"
sshpass -p "899c79fc532cd0591af1" scp "$backup_file" "$remote_server:$destination_directory"
rm "$backup_file"
echo "backup done""vim -r backup-0323-RW-SOFEN-8120120-12.sh"
