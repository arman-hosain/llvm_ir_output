#!/bin/bash

# Source directory to search for subfolders
source_dir="/home/ahossain4@cs.utep.edu/neurips_workspace_2025/cgc-cbs/cqe-challenges/"

# Destination directory where subfolders will be copied
destination_dir="$(dirname "$0")"

# Iterate through all subdirectories
for subfolder in "$source_dir"/*/; do
    # Check if there's any .ll file in the current subfolder
    if ls "$subfolder"/src/*.ll &>/dev/null; then
        # Copy the subfolder to the destination
        cp -r "$subfolder" "$destination_dir"
        echo "Copied $subfolder to $destination_dir"
    fi
done
