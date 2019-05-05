#!/bin/bash

touch $1

echo "value,   keys inserted, insertion time (s), keys lost during retrieval, retrieval time (s)" >> $1

for value in {1..50}
do
  output=`./parallel_hashtable_forcsv $value`
  echo "$value, $output" >> $1
done
