[200~#!/bin/bash

# Get the path to the directory that you want to backup
directory="negpod_id-q1"

# Get the IP address of the remote server
remote_server_ip="192.168.1.10"

# Get the username of the user on the remote server
remote_server_username="username"

# Get the path to the directory on the remote server where you want to backup the files
remote_server_dir="/home/username/backups"

# Use the scp command to copy the files to the remote server
scp -r $directory $remote_server_username@$remote_
