#!/bin/zsh
#./page_gen_from_md.sh file.md [reveal]

input_md_file=$1
input_name=${input_md_file:0:-3}
output_file=${input_name}.html

if [ $# -eq 2 ]
      then
        pandoc -t revealjs -s $input_md_file -o $output_file -V theme=moon -V transition=none --slide-level 2
        return
fi

temp_html_file=${input_name}.tmp

markdown $input_md_file > $temp_html_file


SED_CMD="/<section>/r $temp_html_file" 

sed -e $SED_CMD template.html > ${output_file}

name_with_spaces=${input_name//_/ }
name_with_spaces_and_caps=$(echo $name_with_spaces | sed -e 's/^./\U&/g; s/ ./\U&/g')
name_with_dashes=${input_name//_/-}

title_string="<h2><a name=\"${name_with_dashes}\" class=\"anchor\" href=\"#${name_with_dashes}\"><span class=\"octicon octicon-link\"></span></a>${name_with_spaces_and_caps}</h2>"

sed -i "/<section>/a ${title_string}" ${output_file}

rm $temp_html_file 
