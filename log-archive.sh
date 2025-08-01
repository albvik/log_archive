#!/bin/bash

read -p "Enter the full path of the directory to archive: " dir

if [ ! -d "$dir" ]; then
  echo "Error: Directory does not exist."
  exit 1
fi

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
archive_name="log_archive_${timestamp}.tar.gz"

tar -czvf "$archive_name" "$dir"

echo "Archive created: $archive_name"
