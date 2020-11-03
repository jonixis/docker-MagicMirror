#!/bin/bash

for dir in /opt/magic_mirror/modules/MMM-*/
do
    if [ -d "$dir" ] && ([ ! -d "$dir/node_modules" ] && [ -f "$dir/package.json" ]); then
        echo "###########################"
        echo "Installing: $dir"
        (cd "$dir" &&
             npm install)
        echo "###########################"
    else
        echo "###########################"
        echo "Already installed or no dependencies: $dir"
        echo "###########################"
    fi

done
