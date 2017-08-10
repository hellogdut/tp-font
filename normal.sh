#!/bin/sh

cat lists/ascii.txt lists/wide_symbols.txt lists/list1-3500.txt > tmp.txt

fontName="Microsoft YaHei.ttf"

input=$PWD/fonts/$fontName
output=$fontName

./font-extractor/font-extractor.py tmp.txt "$input" "$fontName"

rm tmp.txt
