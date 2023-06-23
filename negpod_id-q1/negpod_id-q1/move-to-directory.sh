#!/bin/bash

# Get the path to the directory where the files are located
files_dir="./"

# Get the path to the new directory
new_dir="negpod_id-q1"

# Create the new directory
mkdir -p $new_dir

# Move the files to the new directory
for file in $files_dir/*; do
  mv $file $new_dir
done

