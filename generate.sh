#!/bin/bash

for file in ./source/*; do
    file_name=$(basename $file)
    awk '{print "0.0.0.0 "$0}' $file > ./output/$file_name
done

cat output/* > all.txt
