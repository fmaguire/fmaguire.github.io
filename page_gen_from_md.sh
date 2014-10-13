#!/bin/zsh
#quick script to paste 

input_md_file=$1
temp_html_file=${input_md_file:0:-3}.tmp

markdown $input_md_file > $temp_html_file

output_file=${input_md_file:0:-3}.html

SED_CMD="/<section>/r $temp_html_file" 

sed -e $SED_CMD template.html > $output_file

rm $temp_html_file
