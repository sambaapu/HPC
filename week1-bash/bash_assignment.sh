#!/bin/bash

output=output_bash.txt

mkdir bash_workdir
cp data.txt bash_workdir/data.txt
cd bash_workdir
pwd >> $output
first_var="I love HPC!"
echo $first_var>>$output
grep -i "80" data.txt>>$output

second_var=$(ls)
for eachfile in $second_var
do
   echo $eachfile >> $output
done
cp $output ../$output
cd ..
