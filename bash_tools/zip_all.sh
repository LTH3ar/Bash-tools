#!/bin/bash
#zip all folders in a directory to a zip file with the same name

for i in */; do zip -r "${i%/}.zip" "$i"; done