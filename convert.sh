#!/bin/bash
read -p 'masukkan direktori path: ' direktori
for file in "$direktori"/*; do
	#echo $file
	dcmp2pgm $file ${file%.dcm}.pgm -v
done
cd "$direktori"
mogrify -format jpg *.pgm
rm *.pgm
