#!/bin/bash

count=0
for file in `ls parsetrees/`
do
	currcount=$(cat parsetrees/$file | grep \(ROOT | wc -l)
	count=$(($count+$currcount))
	echo $file $currcount $count
done
