#!/bin/bash
echo "provide the number of index"
read n 
for  i in `seq 0 $n`
do
echo $i,$RANDOM
done > inputFile
