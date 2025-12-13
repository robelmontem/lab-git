#!/bin/bash

total_lines=$(wc -l < "$1")
half_lines=$(( total_lines / 2 ))
head -n "$half_lines" "$1" > "${1}.cortado"
mv "${1}.cortado" "$1"
